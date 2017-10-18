@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/product_types') }}">Product Type</a> :
@endsection
@section("contentheader_description", $product_type->$view_col)
@section("section", "Product Types")
@section("section_url", url(config('laraadmin.adminRoute') . '/product_types'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Product Types Edit : ".$product_type->$view_col)

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
				{!! Form::model($product_type, ['route' => [config('laraadmin.adminRoute') . '.product_types.update', $product_type->id ], 'method'=>'PUT', 'id' => 'product_type-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'productType')
					@la_input($module, 'idCat')
					@la_input($module, 'idKayu')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/product_types') }}">Cancel</a></button>
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
	$("#product_type-edit-form").validate({
		
	});
});
</script>
@endpush
