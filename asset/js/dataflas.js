
const flashData = $('.flash-data').data('flashdata');

if (flashData) {
	Swal({
		title: 'ok terimakasih',
		text: 'data Berhasil ' + flashData,
		type: 'success'
	})
}

$('.hapus-databelanja').on('click', function(e){
	e.preventDefault();

	const href = $(this).attr('href');

	Swal({
	  title: 'Apakah anda yakin ?',
	  text: "data mahasiswa akan dihapus",
	  type: 'warning',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: 'Yes, delete it!'
	}).then((result) => {
	  if (result.value) {
	   ddocument.location.href = href;
	  }
	})
});

