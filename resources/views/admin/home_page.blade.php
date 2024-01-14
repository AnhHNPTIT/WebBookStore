@extends('layouts.master_admin')

@section('content')
<!-- Info boxes -->
<div class="row">
	<div class="col-md-3 col-sm-6 col-xs-12">
		<!-- small box -->
		<div class="small-box" style="background: #2A8E0F; color: #fff;">
			<div class="inner">
				@if(isset($count_customer))
				<h3>{{$count_customer}}</h3>
				@endif

				<p>Khách hàng</p>
			</div>
			<div class="icon">
				<i class="fa fa-users" style="color: #fff;"></i>
			</div>
		</div>
	</div>
	<!-- ./col -->
	<div class="col-md-3 col-sm-6 col-xs-12">
		<!-- small box -->
		<div class="small-box" style="background: blue; color: #fff;">
			<div class="inner">
				@if(isset($count_collaborator))
				<h3>{{$count_collaborator}}</h3>
				@endif

				<p>Nhân viên</p>
			</div>
			<div class="icon">
				<i class="fa fa-user-plus" style="color: #fff;"></i>
			</div>
		</div>
	</div>
	<!-- ./col -->
	<div class="col-md-3 col-sm-6 col-xs-12">
		<!-- small box -->
		<div class="small-box" style="background: orange; color: #fff;">
			<div class="inner">
				@if(isset($count_admin))
				<h3>{{$count_admin}}</h3>
				@endif

				<p>Quản trị viên</p>
			</div>
			<div class="icon">
				<i class="fa fa-user" style="color: #fff;"></i>
			</div>
		</div>
	</div>
	<!-- ./col -->

	<div class="col-md-3 col-sm-6 col-xs-12">
		<!-- small box -->
		<div class="small-box" style="background: #009688; color: #fff;">
			<div class="inner">
				@if(isset($count_user_total))
				<h3>{{$count_user_total}}</h3>
				@endif

				<p>Tổng số người dùng</p>
			</div>
			<div class="icon">
				<i class="fa fa-user-circle-o" style="color: #fff;"></i>
			</div>
		</div>
	</div>
	<!-- ./col -->
</div>

<div class="row">
	<div class="col-md-3 col-sm-6 col-xs-12">
		<!-- small box -->
		<div class="small-box" style="background: yellow; color: #131312;">
			<div class="inner">
				@if(isset($total_1st_product))
				<h3>{{$total_1st_product}}</h3>
				@endif

				<p>Sách thiếu nhi</p>
			</div>
			<div class="icon">
				<i class="fa fa-star-o" style="color: #fff;width: 70px;"></i>
			</div>
		</div>
	</div>
	<!-- ./col -->

	<div class="col-md-3 col-sm-6 col-xs-12">
		<!-- small box -->
		<div class="small-box" style="background: #C6009A; color: #fff;">
			<div class="inner">
				@if(isset($total_2nd_product))
				<h3>{{$total_2nd_product}}</h3>
				@endif

				<p>Sách chữ ký</p>
			</div>
			<div class="icon">
				<i class="fa fa-star" style="color: #fff;width: 76px;"></i>
			</div>
		</div>
	</div>
	<!-- ./col -->

	<div class="col-md-3 col-sm-6 col-xs-12">
		<!-- small box -->
		<div class="small-box" style="background: #01FAE6; color: #011110;">
			<div class="inner">
				@if(isset($total_3rd_product))
				<h3>{{$total_3rd_product}}</h3>
				@endif

				<p>Sách giới hạn</p>
			</div>
			<div class="icon">
				<i class="fa fa-truck" style="color: #fff;width: 85px;"></i>
			</div>
		</div>
	</div>

	<div class="col-md-3 col-sm-6 col-xs-12">
		<!-- small box -->
		<div class="small-box" style="background: #1b00ff85; color: #fff;">
			<div class="inner">
				@if(isset($total_4th_product))
				<h3>{{$total_4th_product}}</h3>
				@endif

				<p>Sách khác</p>
			</div>
			<div class="icon">
				<i class="fa fa-medkit" style="color: #fff;"></i>
			</div>
		</div>
	</div>
	<!-- ./col -->
</div>

<div class="row">
	<div class="col-md-4 col-sm-6 col-xs-12">
		<div class="info-box">
			<span class="info-box-icon" style="background: #15FC01; color: #fff;">
				<i class="glyphicon glyphicon-ok-circle"></i>
			</span>

			<div class="info-box-content">
				<span class="info-box-text">Đơn hàng hoàn thành</span>
				<span class="info-box-number">
					@if(isset($count_transaction_delivered))
					{{$count_transaction_delivered}}
					@endif
				</span>
			</div>
			<!-- /.info-box-content -->
		</div>
		<!-- /.info-box -->
	</div>
	<!-- /.col -->
	<div class="col-md-4 col-sm-6 col-xs-12">
		<div class="info-box">
			<span class="info-box-icon" style="background: #019FFA; color: #fff;">
				<i class="fa fa-cloud-upload"></i>
			</span>

			<div class="info-box-content">
				<span class="info-box-text">Nhà sản xuất</span>
				<span class="info-box-number">
					@if(isset($count_manufacture))
					{{$count_manufacture}}
					@endif
				</span>
			</div>
			<!-- /.info-bo	x-content -->
		</div>
		<!-- /.info-box -->
	</div>
	<!-- /.col -->

	<!-- fix for small devices only -->
	<div class="clearfix visible-sm-block"></div>

	<div class="col-md-4 col-sm-6 col-xs-12">
		<div class="info-box">
			<span class="info-box-icon" style="background: #953BE1; color: #fff;">
				<i class="fa fa-user-md"></i>
			</span>

			<div class="info-box-content">
				<span class="info-box-text">Đơn vị tính</span>
				<span class="info-box-number">
					@if(isset($count_unit))
					{{$count_unit}}
					@endif
				</span>
			</div>
			<!-- /.info-box-content -->
		</div>
		<!-- /.info-box -->
	</div>
	<!-- /.col -->
</div>

<div class="row">
	<div class="col-md-4 col-sm-6 col-xs-12">
		<div class="info-box">
			<span class="info-box-icon bg-aqua"><i class="fa fa-list-alt"></i></span>

			<div class="info-box-content">
				<span class="info-box-text">Chủ đề bài viết</span>
				<span class="info-box-number">
					@if(isset($count_post_category))
					{{$count_post_category}}
					@endif
				</span>
			</div>
			<!-- /.info-box-content -->
		</div>
		<!-- /.info-box -->
	</div>
	<!-- /.col -->
	<div class="col-md-4 col-sm-6 col-xs-12">
		<div class="info-box">
			<span class="info-box-icon" style="background: orange; color: #fff;"><i class="fa fa-tags"></i></span>

			<div class="info-box-content">
				<span class="info-box-text">Thẻ bài viết</span>
				<span class="info-box-number">
					@if(isset($count_tag))
					{{$count_tag}}
					@endif
				</span>
			</div>
			<!-- /.info-box-content -->
		</div>
		<!-- /.info-box -->
	</div>
	<!-- /.col -->

	<!-- fix for small devices only -->
	<div class="clearfix visible-sm-block"></div>

	<div class="col-md-4 col-sm-6 col-xs-12">
		<div class="info-box">
			<span class="info-box-icon" style="background: #DE531F; color: #fff;"><i class="fa fa-file-text"></i></span>

			<div class="info-box-content">
				<span class="info-box-text">Số lượng bài viết</span>
				<span class="info-box-number">
					@if(isset($count_post))
					{{$count_post}}
					@endif
				</span>
			</div>
			<!-- /.info-box-content -->
		</div>
		<!-- /.info-box -->
	</div>
	<!-- /.col -->
</div>
@endsection