@extends('layout.super')  
<head>
	<title>{{$product->name}}</title>
	<meta NAME="KEYWORDS" CONTENT="Бриз ХХК, Барилгын материал, ">
    <meta name="description" content="{{$product->name}}">

</head>
<style> 
    .image { 
     position: relative;  
  }
  
  h2 { 
     position: absolute; 
     top: 100px; 
     left: 0; 
     width: 100%; 
  }
  h2 span { 
     color: white; 
     font: bold 24px/45px Helvetica, Sans-Serif; 
     letter-spacing: -1px;  
     background: rgb(0, 0, 0); /* fallback color */
     background: rgba(0, 0, 0, 0.7);
     padding: 10px; 
  }
  h2 span.spacer {
     padding:0 0px;
  }
  
</style>
<link href={{asset("css/bootstrap.min.css")}} rel="stylesheet">
 @section('content')  
	<!-- The four columns -->
	<div class="row">
		<div class="column" style="margin-left:5px !important;">
			 @if(count($product->image1)>0)
				 <img class = "rounded border border-secondary" src="/storage/{{$product->image1}}" alt="Nature" style="width:50px;height:50px" onclick="myFunction(this);">
				 @endif
			 @if(count($product->image2)>0)
				 <img class = "rounded border border-secondary" src="/storage/{{$product->image2}}" alt="Nature" style="width:50px;height:50px" onclick="myFunction(this);">
				 @endif
			 @if(count($product->image3)>0)
				 <img class = "rounded border border-secondary" src="/storage/{{$product->image3}}" alt="Nature" style="width:50px;height:50px" onclick="myFunction(this);">
				 @endif
		</div> 
	</div> 
	
	<script>
	function myFunction(imgs) {
			var expandImg = document.getElementById("expandedImg");
			var imgText = document.getElementById("imgtext");
			expandImg.src = imgs.src;
			imgText.innerHTML = imgs.alt;
			expandImg.parentElement.style.display = "block";
	}
	</script> 
	<link rel="stylesheet" href={{asset("css/productDetail.css")}}>
	<div class="row ">
		<div class="col-lg-8">
		<img id="expandedImg" src="/storage/{{$product->image1}}" style="width:600px;height:400px; " class = "img-fluid" > 
	</div>
	<div class="col-lg-4" >
			<h3>{{$product->name}}</h3> 
			<h4>Үнэ: {{$product->price}}₮</h4>
			<p>{!!$product->shortdesc!!}</p>
			<p>Холбогдох утас: 88002142</p>
	</div>
	<!-- /.card -->  
</div> 
<div class="row" style="margin-left:0px !important;">
	<div class="card card-outline-secondary my-4 ">
		<div class="card-header">
			Дэлгэрэнгүй мэдээлэл
		</div>
		<div class="card-body">
			<p style="width:840px;"> {!!$product->body!!}</p>
 
			<hr> 
	</div>
</div>
	<!-- /.card -->
	{{-- featured --}}
	
	<div class="row" style="width:840px;margin-left:3px;">
    <h3><img style="width:35px" src="/storage/icons/poke.png" alt="">Танд санал болгох</h3>
	@if(count($products)>0)
            <div class="row">
                @foreach($products as $producty)
              <div class="col-lg-4 col-md-6 mb-4">
                <div class="card">
                  <div class="image">
				  <a href="/барилгын-материал/{{$producty->id}}"><img class="card-img-top" style='height:200px;' src={{asset('storage/'.$producty->image1)}} alt=""></a> 
                   <a href="/барилгын-материал/{{$producty->id}}"><h2><span>{{$producty->price}}₮<span class='spacer'> </h2></a>
                  </div>
                  <div class="card-body">
                    <h4 class="card-title">
                    <a style = " text-decoration: none;"href="/барилгын-материал/{{$producty->id}}">{{$producty->name}}</a> 
                    </h4> 
                    <p class="card-text">{!!$producty->shortdesc!!}</p>
                  </div> 
                </div>
			  </div>  
            @endforeach 
			</div>   
		 @endif
	</div>
@endsection  