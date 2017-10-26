@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/jabatans') }}">Jabatan</a> :
@endsection
@section("contentheader_description", $jabatan->$view_col)
@section("section", "Jabatans")
@section("section_url", url(config('laraadmin.adminRoute') . '/jabatans'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Jabatans Edit : ".$jabatan->$view_col)

@section("main-content")

@if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<div class="box">
	<div class="box-header">
		
	</div>
	<div class="box-body">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				{!! Form::model($jabatan, ['route' => [config('laraadmin.adminRoute') . '.jabatans.update', $jabatan->id ], 'method'=>'PUT', 'id' => 'jabatan-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'jabatan')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/jabatans') }}">Cancel</a></button>
					</div>
				{!! Form::close() !!}
			</div>
		</div>
	</div>
</div>

@endsection

@push('scripts')
<script>
$(function () {
	$("#jabatan-edit-form").validate({
		
	});
});
</script>
@endpush
