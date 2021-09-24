@extends('admin.layout.base')

@section('title', @trans('admin.advertisement.add_new_advertisement'))

@section('content')

<div class="content-area py-1">
    <div class="container-fluid">
    	<div class="box box-block bg-white">
            <a href="{{ route('admin.advertisement.index') }}" class="btn btn-default pull-right"><i class="fa fa-angle-left"></i> @lang('admin.back')</a>

			<h5 style="margin-bottom: 2em;">@lang('admin.advertisement.add_new_advertisement')</h5>

            <form class="form-horizontal" action="{{route('admin.advertisement.store')}}" method="POST" enctype="multipart/form-data" role="form">
            	{{csrf_field()}}
				<div class="form-group row">
					<label for="name" class="col-xs-12 col-form-label">@lang('admin.advertisement.title')</label>
					<div class="col-xs-10">
						<input class="form-control" type="text" value="{{ old('title') }}" name="title" required id="title" placeholder="Title">
					</div>
				</div>

				<div class="form-group row">
					<label for="company" class="col-xs-12 col-form-label">@lang('admin.advertisement.description')</label>
					<div class="col-xs-10">
						<input class="form-control" type="text" value="{{ old('description') }}" name="description" required id="description" placeholder="Description">
					</div>
				</div>

				<div class="form-group row">
					<label for="password" class="col-xs-12 col-form-label">@lang('admin.advertisement.link')</label>
					<div class="col-xs-10">
						<input class="form-control" type="url" name="link" value="{{ old('url') }}" id="link" placeholder="link">
					</div>
				</div>
				<div class="form-group row">
					<label for="logo" class="col-xs-12 col-form-label">@lang('admin.advertisement.image')</label>
					<div class="col-xs-10">
						<input type="file" accept="image/*" name="image" class="dropify form-control-file" id="image" aria-describedby="fileHelp">
					</div>
				</div>

				<div class="form-group row">
					<label for="email" class="col-xs-12 col-form-label">@lang('admin.advertisement.status')</label>
					<div class="col-xs-10">
						<select class="form-control" name="status" id="status">
							<option value="">Select</option>
							<option value="active">Active</option>
							<option value="block">Blocked</option>
						</select>
					</div>
				</div>

				<div class="form-group row">
					<label for="from_date" class="col-xs-12 col-form-label">@lang('admin.advertisement.from_date')</label>
					<div class="col-xs-10">
						<input class="form-control" type="date" name="from_date" id="from_date" placeholder="From Date">
					</div>
				</div>

				<div class="form-group row">
					<label for="to_date" class="col-xs-12 col-form-label">@lang('admin.advertisement.to_date')</label>
					<div class="col-xs-10">
						<input class="form-control" type="date" name="to_date" id="to_date" placeholder="To Date">
					</div>
				</div>

				<div class="form-group row">
					<label for="zipcode" class="col-xs-12 col-form-label"></label>
					<div class="col-xs-10">
						<button type="submit" class="btn btn-primary">@lang('admin.advertisement.add')</button>
						<a href="{{route('admin.advertisement.index')}}" class="btn btn-default">@lang('admin.cancel')</a>
					</div>
				</div>
			</form>
		</div>
    </div>
</div>

@endsection
