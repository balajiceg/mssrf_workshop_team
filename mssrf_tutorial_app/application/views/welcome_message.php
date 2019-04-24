<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<link rel="icon" href="<?=base_url()?>/favicon.png" type="image/png">

	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/default.min.css">


	<title>Workshop MSSRF</title>

	<style type="text/css">
	.non_copy {
		    -moz-user-select: none;  
		-webkit-user-select: none;  
		-ms-user-select: none;  
		-o-user-select: none;  
		user-select: none;
		}

	input[type='number'] {
    -moz-appearance:textfield;
	}	

		input::-webkit-outer-spin-button,
		input::-webkit-inner-spin-button {
		    -webkit-appearance: none;
		}
	
	</style>
</head>
	<?php 
		$class='JavaScript';
		switch ($code->type) {
			case 1:
				$class='HTML';
				break;
			case 2:
				$clss='JavaScript';
				break;
		}
	 ?>
<body>
<div class="container">
	<div class="row">
		<h3 class="col-12 text-center"><u>Javascript Workshop</u></h3>
	</div>
	<hr>
	<div class="row">
		<div class="col-5">
			<button type="button" class="btn btn-default float-right" id="prev">Previous</button>
		</div>
		<div class="col-2">
			<input type="number" name="id" id="id" autocomplete="false" class="form-control" value="1" min="1" max="99">
		</div>
		<div class="col-3">
			<button type="button" class="btn float-left" id="next">Next</button>
			<!-- <button type="button" class="btn btn-default">Go</button> -->
		</div>
		<div class="col-2">
			<button type="button" class="btn btn-success float-right" id="latest">Latest</button>
		</div>
		
	</div>

	<hr>
	
	<div class="row">
		
		<div class="col-8">
			<h4 id="title"><?php echo $code->title; ?></h4>
		</div>
		<div class="col-4">
			<button type="button" class="btn btn-info float-right" id="copy">Copy</button>
		</div>
	</div>
	<div class="row mt-2">
		<div class="col-12">
			<pre class="border border-primary" id="pre">
				<code id="code_div" class="<?php echo $class ?>" >
				<?php echo $code->code; ?>
				</code>
			</pre>
		</div>
	</div>
	
</div>

</body>

<script src="<?php echo base_url(); ?>assets/js/jquery-3.3.1.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/highlight.min.js"></script>

<script>
	var code_type=2;
	function update_code(id,code,type,title,copy_disable){

		if (id!=0) $('#id').val(id);
		$('#title').html(title);
		

		(parseInt(copy_disable)==1)? $("#pre").addClass("non_copy"): $("#pre").removeClass("non_copy");
		(parseInt(copy_disable)==1)? $("#copy").prop('disabled', true): $("#copy").prop('disabled', false);

		
		code_type=parseInt(type);
		switch (parseInt(type)){
			case 1:
				$("#code_div").attr("class", "HTML"); 
				code=code.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;").replace(/'/g, "&#039;");

				break;
			case 2: 
				$("#code_div").attr("class", "JavaScript hljs"); 
				break;
		}
		$('#code_div').html(code);
		document.querySelectorAll('pre code').forEach((block) => {
		    hljs.highlightBlock(block);
		  });
	}
	function get_update_code(id){
		$(document.body).css({ 'cursor': 'wait' })
		$.ajax({
			  type: "POST",
			  url: "<?php echo base_url(); ?>Welcome/get_code",
			  data: {'id':id},
			   dataType: 'json',
			  success: function(data){
			  	//console.log(data);
			  	$(document.body).css({ 'cursor': 'default' })
			  	update_code(id,data.code,data.type,data.title,data.copy_disable);
			  },
			  error:function(){
			  	$(document.body).css({ 'cursor': 'default' })
			  	alert("out of range");
			  }
			 
			});
	}
	$( document ).ready(function(){
		<?php if($code->type==1){ ?>

			document.querySelectorAll("code").forEach(function(element) {
		    element.innerHTML = element.innerHTML.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;").replace(/'/g, "&#039;");
			});
		
	
		<?php } ?>


		document.querySelectorAll('pre code').forEach((block) => {
		    hljs.highlightBlock(block);
		  });

		$("#next").click(function(){
			var id=parseInt($('#id').val())

			get_update_code(id+1);
		});

		$("#prev").click(function(){
			var id=parseInt($('#id').val())
			if (id!=1)
			get_update_code(id-1);
		});

		$("#latest").click(function(){
			get_update_code(0);
		});

		$("#id").change(function () {
		    var id=parseInt($(this).val()); 
		    get_update_code(id);
		});


		$("#copy").click(function(){
			CopyToClipboard("code_div");
		});

		function CopyToClipboard(containerid) {
		  if (document.selection) {
		    var range = document.body.createTextRange();
		    range.moveToElementText(document.getElementById(containerid));
		    range.select().createTextRange();
		    // document.getSelection().removeAllRanges();

		  } else if (window.getSelection) {
		    var range = document.createRange();
		    range.selectNode(document.getElementById(containerid));
		    window.getSelection().addRange(range);
		    document.execCommand("copy");
		    // window.getSelection().removeAllRanges();
		  }
		}


	});
	
</script>

</html>