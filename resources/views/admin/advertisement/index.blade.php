@extends('admin.layout.base')

@section('title', 'Fleets ')

@section('content')
<div class="content-area py-1">
    <div class="container-fluid">
        <div class="box box-block bg-white">
            @if(Setting::get('demo_mode', 0) == 1)
        <div class="col-md-12" style="hSetting::get('demo_mode', 0) == height:50px;color:red;">
                    ** Demo Mode : @lang('admin.demomode')
                </div>
                @endif
            <h5 class="mb-1">
                @lang('admin.advertisement.advertisement')
                @if(config('constants.demo_mode', 1) == 1)
                <span class="pull-right">(*personal information hidden in demo)</span>
                @endif
            </h5>
            @can('advertisement-create')
            <a href="{{ route('admin.advertisement.create') }}" style="margin-left: 1em;" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> @lang('admin.advertisement.add_new_advertisement')</a>
            @endcan
            <table class="table table-striped table-bordered dataTable" id="table-2">
                <thead>
                    <tr>
                        <th>@lang('admin.id')</th>
                        <th>@lang('admin.advertisement.title')</th>
                        <th>@lang('admin.advertisement.description')</th>
                        <th>@lang('admin.advertisement.status')</th>
                        <th>@lang('admin.advertisement.link')</th>
                        <th>@lang('admin.picture')</th>
                        <th>@lang('admin.advertisement.from_date')</th>
                        <th>@lang('admin.advertisement.to_date')</th>
                        <th>@lang('admin.action')</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($advertisements as $index => $advertisement)
                    <tr>
                        <td>{{ $index + 1 }}</td>
                        <td>{{ $advertisement->title }}</td>
                        <td>{{ $advertisement->description }}</td>
                        <td>{{ $advertisement->status }}</td>

                        <td>{{ $advertisement->link }}</td>
                        <td><img src="{{ asset('storage/'.$advertisement->image) }}" style="height: 100px;"></td>
                        <td>{{ $advertisement->from_date }}</td>
                        <td>{{ $advertisement->to_date }}</td>
                        <td>
                            <form action="{{ route('admin.advertisement.destroy', $advertisement->id) }}" method="POST">
                                {{ csrf_field() }}
                                <input type="hidden" name="_method" value="DELETE">
                                @if( Setting::get('demo_mode', 0) == 0)
                                @can('advertisement-edit')
                                 <a href="{{ route('admin.advertisement.edit', $advertisement->id) }}" class="btn btn-info"><i class="fa fa-pencil"></i> @lang('admin.edit')</a>
                                 @endcan
                                 @can('advertisement-delete')
                                <button class="btn btn-danger" onclick="return confirm('Are you sure?')"><i class="fa fa-trash"></i> @lang('admin.delete')</button>
                                @endcan
                                @endif

                            </form>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
                <tfoot>
                    <tr>
                        <th>@lang('admin.id')</th>
                        <th>@lang('admin.advertisement.title')</th>
                        <th>@lang('admin.advertisement.description')</th>
                        <th>@lang('admin.advertisement.status')</th>
                        <th>@lang('admin.advertisement.link')</th>
                        <th>@lang('admin.picture')</th>
                        <th>@lang('admin.advertisement.from_date')</th>
                        <th>@lang('admin.advertisement.to_date')</th>
                        <th>@lang('admin.action')</th>
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>
</div>
@endsection