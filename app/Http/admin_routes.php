<?php

/* ================== Homepage ================== */
Route::get('/', 'HomeController@index');
Route::get('/home', 'HomeController@index');
Route::auth();

/* ================== Access Uploaded Files ================== */
Route::get('files/{hash}/{name}', 'LA\UploadsController@get_file');

/*
|--------------------------------------------------------------------------
| Admin Application Routes
|--------------------------------------------------------------------------
*/

$as = "";
if(\Dwij\Laraadmin\Helpers\LAHelper::laravel_ver() == 5.3) {
	$as = config('laraadmin.adminRoute').'.';
	
	// Routes for Laravel 5.3
	Route::get('/logout', 'Auth\LoginController@logout');
}

Route::group(['as' => $as, 'middleware' => ['auth', 'permission:ADMIN_PANEL']], function () {
	
	/* ================== Dashboard ================== */
	
	Route::get(config('laraadmin.adminRoute'), 'LA\DashboardController@index');
	Route::get(config('laraadmin.adminRoute'). '/dashboard', 'LA\DashboardController@index');
	
	/* ================== Users ================== */
	Route::resource(config('laraadmin.adminRoute') . '/users', 'LA\UsersController');
	Route::get(config('laraadmin.adminRoute') . '/user_dt_ajax', 'LA\UsersController@dtajax');
	
	/* ================== Uploads ================== */
	Route::resource(config('laraadmin.adminRoute') . '/uploads', 'LA\UploadsController');
	Route::post(config('laraadmin.adminRoute') . '/upload_files', 'LA\UploadsController@upload_files');
	Route::get(config('laraadmin.adminRoute') . '/uploaded_files', 'LA\UploadsController@uploaded_files');
	Route::post(config('laraadmin.adminRoute') . '/uploads_update_caption', 'LA\UploadsController@update_caption');
	Route::post(config('laraadmin.adminRoute') . '/uploads_update_filename', 'LA\UploadsController@update_filename');
	Route::post(config('laraadmin.adminRoute') . '/uploads_update_public', 'LA\UploadsController@update_public');
	Route::post(config('laraadmin.adminRoute') . '/uploads_delete_file', 'LA\UploadsController@delete_file');
	
	/* ================== Roles ================== */
	Route::resource(config('laraadmin.adminRoute') . '/roles', 'LA\RolesController');
	Route::get(config('laraadmin.adminRoute') . '/role_dt_ajax', 'LA\RolesController@dtajax');
	Route::post(config('laraadmin.adminRoute') . '/save_module_role_permissions/{id}', 'LA\RolesController@save_module_role_permissions');
	
	/* ================== Permissions ================== */
	Route::resource(config('laraadmin.adminRoute') . '/permissions', 'LA\PermissionsController');
	Route::get(config('laraadmin.adminRoute') . '/permission_dt_ajax', 'LA\PermissionsController@dtajax');
	Route::post(config('laraadmin.adminRoute') . '/save_permissions/{id}', 'LA\PermissionsController@save_permissions');
	
	/* ================== Departments ================== */
	Route::resource(config('laraadmin.adminRoute') . '/departments', 'LA\DepartmentsController');
	Route::get(config('laraadmin.adminRoute') . '/department_dt_ajax', 'LA\DepartmentsController@dtajax');
	
	/* ================== Employees ================== */
	Route::resource(config('laraadmin.adminRoute') . '/employees', 'LA\EmployeesController');
	Route::get(config('laraadmin.adminRoute') . '/employee_dt_ajax', 'LA\EmployeesController@dtajax');
	Route::post(config('laraadmin.adminRoute') . '/change_password/{id}', 'LA\EmployeesController@change_password');
	
	/* ================== Organizations ================== */
	Route::resource(config('laraadmin.adminRoute') . '/organizations', 'LA\OrganizationsController');
	Route::get(config('laraadmin.adminRoute') . '/organization_dt_ajax', 'LA\OrganizationsController@dtajax');

	/* ================== Backups ================== */
	Route::resource(config('laraadmin.adminRoute') . '/backups', 'LA\BackupsController');
	Route::get(config('laraadmin.adminRoute') . '/backup_dt_ajax', 'LA\BackupsController@dtajax');
	Route::post(config('laraadmin.adminRoute') . '/create_backup_ajax', 'LA\BackupsController@create_backup_ajax');
	Route::get(config('laraadmin.adminRoute') . '/downloadBackup/{id}', 'LA\BackupsController@downloadBackup');




	/* ================== Products ================== */
	Route::resource(config('laraadmin.adminRoute') . '/products', 'LA\ProductsController');
	Route::get(config('laraadmin.adminRoute') . '/product_dt_ajax', 'LA\ProductsController@dtajax');

	/* ================== Branches ================== */
	Route::resource(config('laraadmin.adminRoute') . '/branches', 'LA\BranchesController');
	Route::get(config('laraadmin.adminRoute') . '/branch_dt_ajax', 'LA\BranchesController@dtajax');


	/* ================== Product_Types ================== */
	Route::resource(config('laraadmin.adminRoute') . '/product_types', 'LA\Product_TypesController');
	Route::get(config('laraadmin.adminRoute') . '/product_type_dt_ajax', 'LA\Product_TypesController@dtajax');

	/* ================== Orders ================== */
	Route::resource(config('laraadmin.adminRoute') . '/orders', 'LA\OrdersController');
	Route::get(config('laraadmin.adminRoute') . '/order_dt_ajax', 'LA\OrdersController@dtajax');


	/* ================== Kategoris ================== */
	Route::resource(config('laraadmin.adminRoute') . '/kategoris', 'LA\KategorisController');
	Route::get(config('laraadmin.adminRoute') . '/kategori_dt_ajax', 'LA\KategorisController@dtajax');

	/* ================== Cats ================== */
	Route::resource(config('laraadmin.adminRoute') . '/cats', 'LA\CatsController');
	Route::get(config('laraadmin.adminRoute') . '/cat_dt_ajax', 'LA\CatsController@dtajax');


	/* ================== Barangs ================== */
	Route::resource(config('laraadmin.adminRoute') . '/barangs', 'LA\BarangsController');
	Route::get(config('laraadmin.adminRoute') . '/barang_dt_ajax', 'LA\BarangsController@dtajax');


	/* ================== Wooods ================== */
	Route::resource(config('laraadmin.adminRoute') . '/wooods', 'LA\WooodsController');
	Route::get(config('laraadmin.adminRoute') . '/woood_dt_ajax', 'LA\WooodsController@dtajax');

	/* ================== Status_Pengirims ================== */
	Route::resource(config('laraadmin.adminRoute') . '/status_pengirims', 'LA\Status_PengirimsController');
	Route::get(config('laraadmin.adminRoute') . '/status_pengirim_dt_ajax', 'LA\Status_PengirimsController@dtajax');

	/* ================== Tokos ================== */
	Route::resource(config('laraadmin.adminRoute') . '/tokos', 'LA\TokosController');
	Route::get(config('laraadmin.adminRoute') . '/toko_dt_ajax', 'LA\TokosController@dtajax');

	/* ================== Jabatans ================== */
	Route::resource(config('laraadmin.adminRoute') . '/jabatans', 'LA\JabatansController');
	Route::get(config('laraadmin.adminRoute') . '/jabatan_dt_ajax', 'LA\JabatansController@dtajax');

	/* ================== Promos ================== */
	Route::resource(config('laraadmin.adminRoute') . '/promos', 'LA\PromosController');
	Route::get(config('laraadmin.adminRoute') . '/promo_dt_ajax', 'LA\PromosController@dtajax');

	/* ================== Barang_Promos ================== */
	Route::resource(config('laraadmin.adminRoute') . '/barang_promos', 'LA\Barang_PromosController');
	Route::get(config('laraadmin.adminRoute') . '/barang_promo_dt_ajax', 'LA\Barang_PromosController@dtajax');

	/* ================== Laporans ================== */
	Route::resource(config('laraadmin.adminRoute') . '/laporans', 'LA\LaporansController');
	Route::get(config('laraadmin.adminRoute') . '/laporan_dt_ajax', 'LA\LaporansController@dtajax');

	/* ================== Detail_Orders ================== */
	Route::resource(config('laraadmin.adminRoute') . '/detail_orders', 'LA\Detail_OrdersController');
	Route::get(config('laraadmin.adminRoute') . '/detail_order_dt_ajax', 'LA\Detail_OrdersController@dtajax');
});
