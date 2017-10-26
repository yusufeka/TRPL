@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/status_pengirims') }}">Status Pengirim</a> :
@endsection
@section("contentheader_description", $status_pengirim->$view_col)
@section("section", "Status Pengirims")
@section("section_url", url(config('laraadmin.adminRoute') . '/status_pengirims'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Status Pengirims Edit : ".$status_pengirim->$view_col)

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
				{!! Form::model($status_pengirim, ['route' => [config('laraadmin.adminRoute') . '.status_pengirims.update', $status_pengirim->id ], 'method'=>'PUT', 'id' => 'status_pengirim-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'status_pengirim')
					@la_input($module, 'tgl_pengiriman')
					@la_input($module, 'tgl_diterima')
					@la_input($module, 'id_barang')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/status_pengirims') }}">Cancel</a></button>
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
	$("#status_pengirim-edit-form").validate({
		
	});
});
</script>
@endpush
