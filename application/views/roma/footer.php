<div class="container-fluid bg-info py-5">
        <div class="container">
			<div class="row">
				<div class="col-md-4">
				<div class="row">
                <div class="col-md-12">
                    <h5 class="text-white"><img src="<?php echo base_url();?>asset/images/logoputih.png" class="img-fluid" style="width:200px;" alt=""></h5>
                    <p class="text-white text-justify">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi, doloremque harum aperiam expedita excepturi placeat, iure laudantium sequi praesentium, veniam minima quae error assumenda quibusdam distinctio repellendus quas quis eligendi.</p>
                </div>
            </div>
           
            
				</div>
				<div class="col-md-4">
				<div class="row">
					<div class="col-md-12 pt-3">
					<h3 class="text-white mb-3">
						Rekening Gubug Casual
					</h3>
					 <h5 class="text-white">BNI : 829382989</h5>
					 <h5 class="text-white">BRI : 9389348938</h5>
					 <h5 class="text-white">Mandiri : 98989899</h5>
					 <h5 class="text-white">BCA : 9878787999</h5>
					</div>
				</div>
				</div>
				<div class="col-md-4">
				<div class="row">
					<div class="col-md-12 pt-3">
						<h3 class="text-white">Informasi </h3>
						<p class="text-white">Alamat : Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus tenetur cupiditate,</p>
						<p class="text-white">Telp : 021 9919 992</p>
						<p class="text-white">Email : admin@gubugcasual.com</p>
					</div>
				</div>
				<div class="row d-flex flex-row mt-3">
                <div class="col-md-12 col-12">
                        <i class="fa fa-instagram fa-2x text-white mr-2 mb-2"></i>
                        <i class="fa fa-facebook fa-2x text-white mr-2 mb-2""></i>
                        <i class="fa fa-twitter fa-2x text-white mb-2""></i>
                </div>
                
            </div>
				</div>
			</div>
            
        </div>
    </div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
        <script>
	$(document).ready(function () {
	$('#horizontalTab').easyResponsiveTabs({
	type: 'default', //Types: default, vertical, accordion           
	width: 'auto', //auto or any width like 600px
	fit: true,   // 100% fit in a container
	closed: 'accordion', // Start closed if in accordion view
	activate: function(event) { // Callback function if tab is switched
	var $tab = $(this);
	var $info = $('#tabInfo');
	var $name = $('span', $info);
	$name.text($tab.text());
	$info.show();
	}
	});
	$('#verticalTab').easyResponsiveTabs({
	type: 'vertical',
	width: 'auto',
	fit: true
	});
	});
</script>
<!-- //script for responsive tabs -->		
<!-- stats -->
<script src="<?php echo base_url(); ?>asset/js/jquery.waypoints.min.js"></script>
<script src="<?php echo base_url(); ?>asset/js/jquery.countup.js"></script>
<script>
	$('.counter').countUp();
</script>
<!-- //stats -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="<?php echo base_url(); ?>asset/js/move-top.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>asset/js/jquery.easing.min.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<script>
	// You can also use "$(window).load(function() {"
	$(function () {
	// Slideshow 4
	$("#slider3").responsiveSlides({
		auto: true,
		pager: true,
		nav: false,
		speed: 500,
		namespace: "callbacks",
							before: function () {
	$('.events').append("<li>before event fired.</li>");
	},
	after: function () {
		$('.events').append("<li>after event fired.</li>");
		}
		});
</script>
<!-- here stars scrolling icon -->
<script type="text/javascript">
	$(document).ready(function() {
								
		$().UItoTop({ easingType: 'easeOutQuart' });
								
		});
</script>
 
<!-- //here ends scrolling icon -->


<!-- for bootstrap working -->
<script type="text/javascript" src="<?php echo base_url(); ?>asset/js/bootstrap.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$.get("<?= site_url('Chekout/get_provinsi') ?>",{},(response)=>{
			let output = '';
			let provinsi = response.rajaongkir.results[2];
			console.log(provinsi)
			$('.provinsi').val(provinsi.province)
		})
	});
	  $(window).on('load', function(){
		$.get("<?= site_url('Chekout/get_kota/') ?>"+3,{},(response)=>{
		let output = '';
		let kota = response.rajaongkir.results[3]
		$('#kota_asal').val(kota.city_id);
		})
	})

	$(window).on('load',function(){
		$.get("<?= site_url('Chekout/get_provinsi') ?>",{},(response)=>{
			let output  = '<option value="" selected>--PILIH--</option>';
			let provinsi= response.rajaongkir.results
			console.log(provinsi)
			provinsi.map((val,i)=>{
				output+=`<option value="${val.province_id}" >${val.province}
						</option>`
			})
			$('#provinsi_tujuan').html(output)
		})
	})

	function get_kota_tujuan(){
		let id_provinsi = $('#provinsi_tujuan').val();
		$.get("<?= site_url('Chekout/get_kota/') ?>"+id_provinsi,{},(response)=>{
			let output = '<option value="" selected>--PILIH--</option>';
			let kota   = response.rajaongkir.results
			console.log(kota)

			kota.map((val,i)=>{
				output+=`<option value="${val.city_id}" >${val.city_name}
						</option>`
			})
			$('#kota_tujuan').html(output)
		})
	}
	function get_ongkir(){
		let berat	= $('#berat').val();
		let asal 	= $('#kota_asal').val();
		let tujuan  = $('#kota_tujuan').val();
		let kurir   = $('#kurir').val();
		let output	= '';

		$.get("<?= site_url('Chekout/get_ongkir/') ?>"+`${asal}/${tujuan}/${berat}/${kurir}`,{},(response)=>{
			console.log(response);
			let biaya = response.rajaongkir.results

			biaya.map((val,i)=>{
				output += '<option>--PILIH--</option>'
				for(var i =0; i< val.costs.length; i++){
					let jenis_layanan= val.costs[i].service
					val.costs[i].cost.map((val,i)=>{
						output+=`<option data-ongkir="${val.value}"
						value="${val.value}" >${jenis_layanan}--Rp. ${val.value} ${val.etd} Hari </option>`;
						price = val.value;
					})
				}

			})

			$(`#service`).html(output)


		})
	}
	function get_harga(event){
		$("#harga").html(event.value)

		var tot_order = Number($("#tot_order").text())
		var harga     = Number($("#harga").text())

		$("[name='total']").val(+tot_order + +harga)
		$("[name='total']").html(+tot_order + +harga)
	}
</script>

</body>

</html>