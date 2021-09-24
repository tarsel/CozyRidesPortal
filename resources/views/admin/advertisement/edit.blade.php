@extends('admin.layout.base')

@section('title', @trans('admin.advertisement.update_advertisement'))

@section('content')

<div class="content-area py-1">
    <div class="container-fluid">
    	<div class="box box-block bg-white">
    	    <a href="{{ route('admin.advertisement.index') }}" class="btn btn-default pull-right"><i class="fa fa-angle-left"></i> @lang('admin.back')</a>
			<h5 style="margin-bottom: 2em;">@lang('admin.advertisement.update_advertisement')</h5>

            <form class="form-horizontal" action="{{route('admin.advertisement.update', $advertisement->id )}}" method="POST" enctype="multipart/form-data" role="form">
            	{{csrf_field()}}
            	<input type="hidden" name="_method" value="PATCH">
				<div class="form-group row">
					<label for="from_date" class="col-xs-12 col-form-label">@lang('admin.advertisement.from_date')</label>
					<div class="col-xs-10">
						<input class="form-control" type="text" value="{{ $advertisement->title }}" name="title" required id="title" placeholder="Title">
					</div>
				</div>
				<div class="form-group row">
					<label for="company" class="col-xs-12 col-form-label">@lang('admin.advertisement.description')</label>
					<div class="col-xs-10">
						<input class="form-control" type="text" value="{{ $advertisement->description }}" name="description" required id="description" placeholder="Description">
					</div>
				</div>
				<div class="form-group row">

					<label for="password" class="col-xs-12 col-form-label">@lang('admin.advertisement.link')</label>
					<div class="col-xs-10">
						<input class="form-control" type="url" name="link" value="{{ $advertisement->link }}" id="link" placeholder="link">
					</div>
				</div>
				<div class="form-group row">

					<label for="logo" class="col-xs-2 col-form-label">@lang('admin.advertisement.image')</label>
					<div class="col-xs-10">
						<input type="file" accept="image/*" name="image" class="dropify form-control-file" id="image" aria-describedby="fileHelp">
					</div>
					<div class="col-xs-10" >
						@if(isset($advertisement->image))
							<img style="height: 90px; margin-bottom: 15px; border-radius:2em;" src="{{ asset('storage/'.$advertisement->image) }}">
						@endif
					</div>
				</div>


				<div class="form-group row">
					<label for="email" class="col-xs-12 col-form-label">@lang('admin.advertisement.status')</label>
					<div class="col-xs-10">
						<select class="form-control" name="status" id="status">
							<option value="">Select</option>
							<option  {{  $advertisement->status == "active" ? "selected" : ""  }} value="active">Active</option>
							<option  {{  $advertisement->status == "block" ? "selected" : ""  }} value="block">Blocked</option>
						</select>
					</div>
				</div>

				<div class="form-group row">
					<label for="from_date" class="col-xs-12 col-form-label">@lang('admin.advertisement.from_date')</label>
					<div class="col-xs-10">
						<input class="form-control" type="date" value="{{ $advertisement->from_date  }}"  name="from_date" id="from_date" placeholder="From Date">
					</div>
				</div>

				<div class="form-group row">
					<label for="to_date" class="col-xs-12 col-form-label">@lang('admin.advertisement.to_date')</label>
					<div class="col-xs-10">
						<input class="form-control" type="date" value="{{ $advertisement->to_date }}" name="to_date" id="to_date" placeholder="To Date">
					</div>
				</div>


				<div class="form-group row">
					<label for="zipcode" class="col-xs-2 col-form-label"></label>
					<div class="col-xs-10">
						<button type="submit" class="btn btn-primary">@lang('admin.advertisement.update')</button>
						<a href="{{route('admin.advertisement.index')}}" class="btn btn-default">@lang('admin.cancel')</a>
					</div>
				</div>
			</form>
		</div>
    </div>
</div>

@endsection
