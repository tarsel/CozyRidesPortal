<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        /**
         * storage link to public on localhost
         */
        /*$this->app->bind('path.public', function() {
            return realpath(base_path().'/../');
        });*/


        /**
         * storage link to public on server
         */
        $this->app->bind('path.public', function() {
            return realpath(base_path().'/../taxi.fandapakistan.online');
        });
    }
}
