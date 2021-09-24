<?php

namespace App\Http\Controllers\Resource;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\User;
use App\ProviderCard;
use App\Provider;
use Exception;
use Auth;
use Illuminate\Support\Facades\Validator;
use Setting;
use Session;
use Stripe\HttpClient\CurlClient;
use Stripe\Stripe;

class ProviderCardResource extends Controller
{
  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index()
  {
    try{

      $cards = ProviderCard::where('user_id',Auth::user()->id)->orderBy('created_at','desc')->get();
      return $cards;

    } catch(Exception $e){
      return response()->json(['error' => $e->getMessage()], 500);
    }
  }

  /**
   * Show the form for creating a new resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function create()
  {
    //
  }

  /**
   * Store a newly created resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @return \Illuminate\Http\Response
   */
  public function store(Request $request)
  {

    /*$validate = Validator::make($request->all(), [
        'card_number' => 'required',
        'exp_month' => 'required',
        'exp_year' => 'required',
        'cvc' => 'required',
    ]);*/

    $validate = Validator::make($request->all(), [
        'stripe_token' => 'required'
    ]);

    if ($validate->fails())
    {
      return response()->json(['error' => true, 'message' => $validate->messages()->first(),'data' => array()]);
    }

    try{

      /*$stripe_token = $this->set_stripe_client($request);
      $stripe_token = $stripe_token['id'];*/
      $accountId = $this->stripe_account_id();

      $this->set_stripe();

      $account = \Stripe\Account::retrieve($accountId);



      $card = $account->external_accounts->create([ "external_account" => $request->stripe_token ]);
      //$card = $customer->external_accounts->create([ "external_account" => $stripe_token, ]);

        $account = \Stripe\Account::retrieve(Auth::user()->stripe_acc_id);


      $exist = ProviderCard::where('user_id',Auth::user()->id)
          ->where('last_four',$card['last4'])
          ->where('brand',$card['brand'])
          ->count();

      if($exist == 0){

        //delete previous card
        $Providercard=ProviderCard::where('user_id',Auth::user()->id)->first();

        if(!empty($Providercard)){
          $card_detail = $account->external_accounts->retrieve($Providercard->card_id);

          if(count($card_detail) > 1)
          {
            $card_detail->delete();
          }

          ProviderCard::where('card_id',$Providercard->card_id)->delete();
        }

        //add new card
        $create_card = new ProviderCard;
        $create_card->user_id = Auth::user()->id;
        $create_card->card_id = $card['id'];
        $create_card->last_four = $card['last4'];
        $create_card->brand = $card['brand'];
        $create_card->is_default = '1';
        $create_card->save();

        if(Setting::get('demo_mode', 0) == 1) {
          Provider::where('id',Auth::user()->id)->where('status','card')->update(['status'=>'approved']);
        }
        else{
            if($create_card){
                Provider::where('id',Auth::user()->id)->where('status','card')->update(['status'=>'onboarding']);
            }
        }

      }else{
        if($request->is('api/*') || $request->ajax()) {
          return response()->json(['message' => trans('api.card_already')]);
        }else{
          return back()->with('flash_success',trans('api.card_already'));
        }
      }

      if($request->is('api/*') || $request->ajax()) {
        return response()->json(['message' => trans('api.card_added')]);
      }else{
        return back()->with('flash_success',trans('api.card_added'));
      }

    } catch(Exception $e){
      if($request->is('api/*') || $request->ajax()) {
        return response()->json(['error' => $e->getMessage()], 520);
      }else{
        return back()->with('flash_error',$e->getMessage());
      }
    }
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function show($id)
  {
    //
  }

  /**
   * Show the form for editing the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function edit($id)
  {
    //
  }

  /**
   * Update the specified resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function update(Request $request, $id)
  {
    $this->validate($request,[
        'card_id' => 'required|exists:provider_cards,card_id,user_id,'.Auth::user()->id,
    ]);
    try{
      ProviderCard::where('user_id',Auth::user()->id)->update(['is_default' => '0']);
      ProviderCard::where('card_id',$request->card_id)->update(['is_default' => '1']);
      return 'success';
    }
    catch(Exception $e){
      return 'failure';
    }
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function destroy(Request $request)
  {

      $validate = Validator::make($request->all(), [
          'card_id' => 'required|exists:provider_cards,card_id,user_id,'.Auth::user()->id,
      ]);

      if ($validate->fails())
      {
          return response()->json(['error' => true, 'message' => $validate->messages()->first(),'data' => array()]);
      }
   /* $this->validate($request,[
        'card_id' => 'required|exists:provider_cards,card_id,user_id,'.Auth::user()->id,
    ]);*/

    try{

      $this->set_stripe();



      $account = \Stripe\Account::retrieve(Auth::user()->stripe_acc_id);


      $card_detail = $account->external_accounts->retrieve($request->card_id);
      if(count($card_detail) > 0)

      {
        $card_detail->delete();
      }


      ProviderCard::where('card_id',$request->card_id)->delete();

      if($request->is('api/*') || $request->ajax()) {
        return response()->json(['message' => trans('api.card_deleted')]);
      }else{
        return back()->with('flash_success',trans('api.card_deleted'));
      }

    } catch(Stripe_CardError $e){
      if($request->is('api/*') || $request->ajax()) {
        return response()->json(['error' => $e->getMessage()], 500);
      }else{
        return back()->with('flash_error',$e->getMessage());
      }
    }
  }

  /**
   * setting stripe.
   *
   * @return \Illuminate\Http\Response
   */
  public function set_stripe(){
    try{
      \Stripe\Stripe::setApiKey(config('constants.stripe_secret_key', ''));
      \Stripe\Stripe::setApiVersion('2018-02-06');
      //return \Stripe\Stripe::setApiKey(config('constants.stripe_secret_key', ''));
      return true;
    }catch(Exception $e){
      return response()->json(['error'=>true, 'message'=>'API-Version '.$e->getMessage()]);
    }
  }


  public function set_stripe_client(Request $request){

    try{

      \Stripe\Stripe::setApiKey(config('constants.stripe_secret_key', ''));
      \Stripe\Stripe::setApiVersion('2018-02-06');

      $token = \Stripe\Token::create([
          'card' => [
              'number' => $request->card_number,
              'exp_month' => $request->exp_month,
              'exp_year' => $request->exp_year,
              'cvc' => $request->cvc,
              'currency' =>'USD',
          ],
      ]);

      return $token;

    }catch(Exception $e){
      return response()->json(['error'=>true, 'message'=>'API-Version '.$e->getMessage()]);
    }


  }

  /**
   * Get a stripe customer id.
   *
   * @return \Illuminate\Http\Response
   */
  public function stripe_account_id()
  {



    if(Auth::user()->stripe_acc_id != null){

      return Auth::user()->stripe_acc_id;

    }else{

      try{

       $token   =    $this->set_stripe();

        // $customer = \Stripe\Customer::create([
        //     'email' => Auth::guard('provider')->user()->email,
        // ]);

        $account = \Stripe\Account::create(array(
            'type' => 'custom',
            'country' => 'US',
            'default_currency' => "usd",
            "email" => Auth::user()->email,
            'capabilities' => [
                'card_payments' => ['requested' => true],
                'transfers' => ['requested' => true],
            ],
            'business_profile' => [
                'mcc'   => 4121 // for taxi cab
            ],
            "legal_entity" => [
                'type' => 'individual',
                'personal_id_number' => '000000000',
            ],
           /*'external_account' => [
               'external_account' => $token,
               "object"     => "card",
               "number"     => "4000056655665556",
               "exp_month"  => "12",
               "exp_year"   =>  "2022",
               "currency" => "usd",
               //"default_for_currency" => true,

          ]*/
        /*    'external_account' => [
                "object" => "bank_account",
                "country" => "US",
                "currency" => "usd",
                "account_holder_name" => 'Jane Austen',
                "account_holder_type" => 'individual',
                "routing_number" => "110000000",
                "account_number" => "000123456789"
      ],*/
    ));


        $account_update = \Stripe\Account::retrieve($account['id']);
          $account_update->business_url  =   "https://itqplus.com";
          $account_update->tos_acceptance->date = time();
          $account_update->tos_acceptance->ip = $_SERVER['REMOTE_ADDR'];
          $account_update->legal_entity->business_name =  Auth::user()->first_name.' '.Auth::user()->last_name;
          $account_update->legal_entity->dob->day = '27';
          $account_update->legal_entity->dob->month = '05';
          $account_update->legal_entity->dob->year= '1990';
          $account_update->legal_entity->first_name = Auth::user()->first_name;
          $account_update->legal_entity->last_name =Auth::user()->last_name;
          $account_update->legal_entity->personal_address->city = 'JACKSONVILLE';
          $account_update->legal_entity->personal_address->line1 = '9191 HAWKEYE DRIVE';
          $account_update->legal_entity->personal_address->postal_code = '32221';
          $account_update->legal_entity->personal_address->state = 'FL';
          $account_update->legal_entity->personal_email = Auth::user()->email;
          $account_update->legal_entity->personal_phone_number =  Auth::user()->mobile;
          $account_update->save();
        Provider::where('id',Auth::user()->id)->update(['stripe_acc_id' => $account_update->id]);
        Provider::where('id',Auth::user()->id)->where('status','card')->update(['status'=>'onboarding']);

        /*if(Setting::get('demo_mode', 0) == 1) {
            Provider::where('id',Auth::user()->id)->where('status','card')->update(['status'=>'approved']);
        }
        else{
            Provider::where('id',Auth::user()->id)->where('status','card')->update(['status'=>'onboarding']);
        }*/

        return $account_update->id;
        //return $customer;

      } catch(Exception $e){

          return response()->json(['error'=>true, 'message'=>'stripe account '.$e->getMessage(), "line" => $e->getLine(), "code" => $e->getLine() ]);
      }
    }
  }

  public function set_default(Request $request)
  {
    try{
      ProviderCard::where('user_id',Auth::user()->id)->update(['is_default' => '0']);
      ProviderCard::where('id',$request->id)->update(['is_default' => '1']);
      return 'success';
    }
    catch(Exception $e){
      return 'failure';
    }

  }

}
