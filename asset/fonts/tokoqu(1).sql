-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2019 at 04:15 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoqu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `user_level` varchar(20) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`username`, `password`, `nama`, `alamat`, `user_level`, `datetime`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Aries Dimas Yudhistira', 'jl. warakas 4 GG q7 no. 32', 'Super Admin', '2014-03-30 15:27:07'),
('rudi', '1755e8df56655122206c7c1d16b1c7e3', 'rudi', 'ddd', 'admin', '2018-04-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id_berita` int(11) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `Judul_berita` varchar(140) NOT NULL,
  `deskripsi` text NOT NULL,
  `slug` varchar(150) NOT NULL,
  `tanggal_upload` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id_berita`, `gambar`, `Judul_berita`, `deskripsi`, `slug`, `tanggal_upload`) VALUES
(1, 'nevada-product-9.jpg', 'Biar Tak Tertipu, Ini Kiat Aman Belanja Online', 'Liputan6.com, Jakarta - Perkembangan teknologi internet di Indonesia saat ini memunculkan banyak sekali situs belanja online atau e-Commerce. Mereka semua membangun toko online yang menjual aneka macam barang dan jasa layaknya sebuah mal, dengan kelebihan dan kekurangan masing-masing.\r\n\r\nKonsumen semakin terdorong untuk berbelanja karena situs belanja online tersebut gencar menawarkan promosi. Dengan harga miring, cashback, hingga promo gratis ongkos kirim, belanja di situs belanja online menjadi gaya hidup baru, mengubah kebiasaan sebelumnya. Tren seperti ini diperkirakan akan terus berlangsung hingga beberapa tahun ke depan.\r\n\r\n\r\n\r\n    HomeBisnisEkonomi\r\n\r\nBiar Tak Tertipu, Ini Kiat Aman Belanja Online\r\nNurseffi Dwi WahyuniNurseffi Dwi Wahyuni\r\n\r\n07 Jan 2018, 18:40 WIB\r\n\r\n    1\r\n\r\n189\r\nBelanja online\r\nShopee Indonesia merayakan Harbolnas dan ulang tahunnya yang kedua . Intip beragam kejutan bagi Anda penggemar belanja online. (Foto: Istockphoto)\r\n\r\nLiputan6.com, Jakarta - Perkembangan teknologi internet di Indonesia saat ini memunculkan banyak sekali situs belanja online atau e-Commerce. Mereka semua membangun toko online yang menjual aneka macam barang dan jasa layaknya sebuah mal, dengan kelebihan dan kekurangan masing-masing.\r\n\r\nKonsumen semakin terdorong untuk berbelanja karena situs belanja online tersebut gencar menawarkan promosi. Dengan harga miring, cashback, hingga promo gratis ongkos kirim, belanja di situs belanja online menjadi gaya hidup baru, mengubah kebiasaan sebelumnya. Tren seperti ini diperkirakan akan terus berlangsung hingga beberapa tahun ke depan.\r\n\r\nBaca Juga\r\n\r\n    Mau Belanja Gadget secara Online? Baca Dulu Tips Ini\r\n    Jangan Lakukan Ini di Rumah Kalau Mau Cepat Punya Rumah\r\n\r\nNah, agar Anda semakin nyaman berbelanja di situs belanja online, sebaiknya Anda memastikan telah mengetahui cara berbelanja dan bertransaksi dengan aman dan nyaman di situs belanja online Indonesia, seperti disarankan oleh situs perbandingan dan pengajuan kartu kredit dan pinjaman HaloMoney.co.id:\r\n\r\n1. Lakukan riset terhadap situs belanja online\r\n\r\nTips ini harus Anda lakukan jika Anda berbelanja seperti pakaian online di situs web yang jarang Anda gunakan. Periksa nomor telepon si penjual dan hubungi. Jika tidak meyakinkan, kunjungi mesin pencari Google kemudian masukkan nama situs website tersebut. Carilah ulasan dari konsumen yang pernah berbelanja.\r\n\r\nJika banyak konsumen mengeluh dengan layanan situs tersebut, sebaiknya tinggalkan saja situs web itu. Pilihlah situs belanja yang mendapat apresiasi positif, dan hindari situs belanja yang mendapat bintang satu atau mendapat komplain dan kekecewaan dari konsumen di akun media sosialnya maupun di situsnya.\r\n\r\n\r\n    HomeBisnisEkonomi\r\n\r\nBiar Tak Tertipu, Ini Kiat Aman Belanja Online\r\nNurseffi Dwi WahyuniNurseffi Dwi Wahyuni\r\n\r\n07 Jan 2018, 18:40 WIB\r\n\r\n    1\r\n\r\n189\r\nBelanja online\r\nShopee Indonesia merayakan Harbolnas dan ulang tahunnya yang kedua . Intip beragam kejutan bagi Anda penggemar belanja online. (Foto: Istockphoto)\r\n\r\nLiputan6.com, Jakarta - Perkembangan teknologi internet di Indonesia saat ini memunculkan banyak sekali situs belanja online atau e-Commerce. Mereka semua membangun toko online yang menjual aneka macam barang dan jasa layaknya sebuah mal, dengan kelebihan dan kekurangan masing-masing.\r\n\r\nKonsumen semakin terdorong untuk berbelanja karena situs belanja online tersebut gencar menawarkan promosi. Dengan harga miring, cashback, hingga promo gratis ongkos kirim, belanja di situs belanja online menjadi gaya hidup baru, mengubah kebiasaan sebelumnya. Tren seperti ini diperkirakan akan terus berlangsung hingga beberapa tahun ke depan.\r\n\r\nBaca Juga\r\n\r\n    Mau Belanja Gadget secara Online? Baca Dulu Tips Ini\r\n    Jangan Lakukan Ini di Rumah Kalau Mau Cepat Punya Rumah\r\n\r\nNah, agar Anda semakin nyaman berbelanja di situs belanja online, sebaiknya Anda memastikan telah mengetahui cara berbelanja dan bertransaksi dengan aman dan nyaman di situs belanja online Indonesia, seperti disarankan oleh situs perbandingan dan pengajuan kartu kredit dan pinjaman HaloMoney.co.id:\r\n\r\n1. Lakukan riset terhadap situs belanja online\r\n\r\nTips ini harus Anda lakukan jika Anda berbelanja seperti pakaian online di situs web yang jarang Anda gunakan. Periksa nomor telepon si penjual dan hubungi. Jika tidak meyakinkan, kunjungi mesin pencari Google kemudian masukkan nama situs website tersebut. Carilah ulasan dari konsumen yang pernah berbelanja.\r\n\r\nJika banyak konsumen mengeluh dengan layanan situs tersebut, sebaiknya tinggalkan saja situs web itu. Pilihlah situs belanja yang mendapat apresiasi positif, dan hindari situs belanja yang mendapat bintang satu atau mendapat komplain dan kekecewaan dari konsumen di akun media sosialnya maupun di situsnya.\r\n\r\n \r\n2 dari 5 halaman\r\n2. Lihat kebijakan situs belanja online terhadap data pribadimu\r\nBelanja online\r\nBelanja online\r\n\r\nJangan sampai ada poin yang menyebutkan bahwa pengelola situs web tersebut boleh memberikan data pribadi konsumen ke pihak lain. Baca juga kebijakan pengembalian barang. Karena barang yang dibeli tidak bisa dilihat secara fisik, harus ada garansi jika barang yang Anda terima ternyata cacat.\r\n\r\nPastikan Anda boleh mengembalikan barang cacat itu dan tentu saja diganti dengan barang baru atau uangmu akan dikembalikan. Periksa juga siapa yang membayar pengembalian barang itu. Baca Juga : Kredit Cepat ala Kredivo Untuk Belanja Online dan Usaha\r\n\r\n3. Periksa paket barang dengan membaca deskripsi produk baik-baik\r\n\r\nTips aman ketiga adalah periksa paket barang dan bacalah deskripsi produk dengan cermat. Waspadalah pada barang bermerek yang dijual dengan potongan harga yang sangat besar. Bisa jadi barang tersebut palsu, atau penjualnya sekadar ingin mendapatkan uangmu.\r\n\r\n\r\n    HomeBisnisEkonomi\r\n\r\nBiar Tak Tertipu, Ini Kiat Aman Belanja Online\r\nNurseffi Dwi WahyuniNurseffi Dwi Wahyuni\r\n\r\n07 Jan 2018, 18:40 WIB\r\n\r\n    1\r\n\r\n189\r\nBelanja online\r\nShopee Indonesia merayakan Harbolnas dan ulang tahunnya yang kedua . Intip beragam kejutan bagi Anda penggemar belanja online. (Foto: Istockphoto)\r\n\r\nLiputan6.com, Jakarta - Perkembangan teknologi internet di Indonesia saat ini memunculkan banyak sekali situs belanja online atau e-Commerce. Mereka semua membangun toko online yang menjual aneka macam barang dan jasa layaknya sebuah mal, dengan kelebihan dan kekurangan masing-masing.\r\n\r\nKonsumen semakin terdorong untuk berbelanja karena situs belanja online tersebut gencar menawarkan promosi. Dengan harga miring, cashback, hingga promo gratis ongkos kirim, belanja di situs belanja online menjadi gaya hidup baru, mengubah kebiasaan sebelumnya. Tren seperti ini diperkirakan akan terus berlangsung hingga beberapa tahun ke depan.\r\n\r\nBaca Juga\r\n\r\n    Mau Belanja Gadget secara Online? Baca Dulu Tips Ini\r\n    Jangan Lakukan Ini di Rumah Kalau Mau Cepat Punya Rumah\r\n\r\nNah, agar Anda semakin nyaman berbelanja di situs belanja online, sebaiknya Anda memastikan telah mengetahui cara berbelanja dan bertransaksi dengan aman dan nyaman di situs belanja online Indonesia, seperti disarankan oleh situs perbandingan dan pengajuan kartu kredit dan pinjaman HaloMoney.co.id:\r\n\r\n1. Lakukan riset terhadap situs belanja online\r\n\r\nTips ini harus Anda lakukan jika Anda berbelanja seperti pakaian online di situs web yang jarang Anda gunakan. Periksa nomor telepon si penjual dan hubungi. Jika tidak meyakinkan, kunjungi mesin pencari Google kemudian masukkan nama situs website tersebut. Carilah ulasan dari konsumen yang pernah berbelanja.\r\n\r\nJika banyak konsumen mengeluh dengan layanan situs tersebut, sebaiknya tinggalkan saja situs web itu. Pilihlah situs belanja yang mendapat apresiasi positif, dan hindari situs belanja yang mendapat bintang satu atau mendapat komplain dan kekecewaan dari konsumen di akun media sosialnya maupun di situsnya.\r\n\r\n \r\n2 dari 5 halaman\r\n2. Lihat kebijakan situs belanja online terhadap data pribadimu\r\nBelanja online\r\nBelanja online\r\n\r\nJangan sampai ada poin yang menyebutkan bahwa pengelola situs web tersebut boleh memberikan data pribadi konsumen ke pihak lain. Baca juga kebijakan pengembalian barang. Karena barang yang dibeli tidak bisa dilihat secara fisik, harus ada garansi jika barang yang Anda terima ternyata cacat.\r\n\r\nPastikan Anda boleh mengembalikan barang cacat itu dan tentu saja diganti dengan barang baru atau uangmu akan dikembalikan. Periksa juga siapa yang membayar pengembalian barang itu. Baca Juga : Kredit Cepat ala Kredivo Untuk Belanja Online dan Usaha\r\n\r\n3. Periksa paket barang dengan membaca deskripsi produk baik-baik\r\n\r\nTips aman ketiga adalah periksa paket barang dan bacalah deskripsi produk dengan cermat. Waspadalah pada barang bermerek yang dijual dengan potongan harga yang sangat besar. Bisa jadi barang tersebut palsu, atau penjualnya sekadar ingin mendapatkan uangmu.\r\n3 dari 5 halaman\r\n4. Jangan mudah tergoda barang murah\r\nIlustrasi belanja online\r\nIlustrasi belanja online\r\n\r\nJangan buru-buru jatuh cinta pada tawaran barang dengan harga murah yang datang dari e-mail, apalagi meminta ID dan password tanpa izin dari pemilik e-mail. Itu biasanya kerjaan spammer. Tapi hati-hati, spammer bisa juga merayu.\r\n\r\nIa mengirim e-mail yang seolah-olah datang dari perusahaan baik-baik. Sebaiknya, kunjungi situs belanja online resmi dari perusahaan tersebut dan langsung belanja dari situs tersebut. Jangan masuk ke situs tersebut via e-mail atau jendela pop-up.\r\n. Cari tanda kalau situs web itu aman\r\n\r\nTanda itu biasanya berupa gambar gembok di baris status (status bar) browser. Sebelum memasukkan informasi pribadi, periksa tanda keamanan itu ada di situs terebut.\r\n\r\nKetika Anda diminta untuk memasukkan informasi pendaftaran nomor kartu kredit, lihat alamat situs web. Harusnya alamat situs web berubah dari http ke ‘https’. Artinya informasi pembayaran itu telah dilindungi, lebih amanlah pokoknya.Minimal PC Anda harus punya perangkat anti virus. Lebih baik lagi kalau kau memasang anti spyware dan firewall di PC Anda. Ingat, peranti lunak keamanan itu harus di-update secara teratur agar PC terlindung dari ancaman terbaru. Baiknya, atur saja proses update secara otomatis.Pertimbangkanlah cara pembayaran\r\n\r\nPembayaran biasanya dilakukan dengan kartu kredit, melalui ATM, atau melalui gerai retail modern. Dengan kartu kredit, Anda punya bukti kuat kalau Anda sudah melakukan transaksi kalau barang tidak diantar atau tidak sesuai pesanan.\r\n\r\nTapi, karena banyaknya pencurian nomor kartu kredit, pembayaran dengan menggunakan sistem seperti PayPal, Transfer Kirim, atau Cash On Delivery (COD) boleh dipertimbangkan.', 'biar-tak-tertipu-ini-kiat-aman-belanja-online', '2018-10-03 00:00:00'),
(2, 'belanja aman.jpg', 'Tips belanja online agar aman', 'Di pertengahan tahun 2014 saja, lebih dari 75 persen orang dengan usia lebih dari 15 tahun membeli barang secara online. Meski toko online tumbuh lebih cepat dibanding sektor retail lain, bukan berarti toko yang berdiri secara fisik telah punah. Membeli secara online membuat konsumen memilik kontrol terhadap apa yang dibayar dan dari siapa barang diperoleh.\r\n\r\nKonsumen biasanya akan membeli barang yang familiar dan bermerek dengan kualitas yang bisa diprediksi saat online. Sebaliknya, bila konsumen tidak familiar dengan barang yang dicari, mereka lebih memilih untuk membeli di toko offline. Kenapa demikian? Karena ada kemungkinan barang yang dibeli perlu dikembalikan dan kebutuhan untuk secara langsung melihat barang melebihi kebutuhan untuk membelinya secara online.\r\n\r\nBerikut ini beberapa resiko yang Anda hadapi saat berbelanja online:\r\n\r\n    Penipuan akibat melakukan pembayaran pada halaman web yang tidak aman.\r\n    Penipuan akibat melakukan pembayaran menggunakan koneksi WiFi yang tidak aman.\r\n    Toko online palsu, website palsu, dan tawaran email untuk produk atau layanan yang tidak ada.\r\n    Membeli barang palsu secara sengaja atau tidak sengaja, menerima barang dengan kualitas buruk, atau kejahatan lain yang lebih serius.\r\n    Kehilangan uang ketika melakukan pembayaran bank langsung untuk barang yang tidak pernah dikirim.\r\n    Menerima barang atau layanan yang tidak sesuai dengan deskripsi pada iklan.\r\n    Mendapat penawaran produk dengan harga tertentu berdasarkan informasi yang dikumpulkan penjual tentang kebiasaan belanja online Anda dan website yang Anda kunjungi.\r\n\r\nKeamanan Saat Berbelanja Online\r\n\r\nMenggunakan internet untuk membeli barang atau layanan bisa menghemat waktu dan tenaga. Anda juga memiliki banyak pilihan. Meski begitu, berbelanja online tetap memiliki resiko dan Anda perlu mewaspadai apa yang Anda beli, dari siapa, dan bagaimana Anda membayar pembelian.\r\n\r\nSemua yang terhubung dengan internet, termasuk alat mobile seperti telepon pintar dan tablet, perlu diamankan, terutama selama penggunaannya memuncak, misalnya saat liburan. Orang yang berbelanja bisa jadi target penipu dan penjahat online.\r\n\r\nSiapa saja perlu waspada terhadap email yang meminta penerimanya melakukan tindakan cepat, mengklik tautan, dan membuka lampiran. Hati-hati dengan email tentang status pemesanan online.  Penjahat tahu kalau harga jadi hal yang paling dipertimbangkan dalam berbelanja online. Jadi Anda harus waspada ketika melihat penawaran barang dengan diskon di bawah normal.\r\nTips Berbelanja Online\r\n\r\nAman berbelanja online berarti mengambil langkah pencegahan dari penipuan. Berikut ini beberapa tips selama berbelanja online yang bisa Anda ikuti:\r\n\r\n    Lakukan riset. Ketika menggunakan website baru untuk melakukan pembelian, baca ulasannya dan lihat apakah konsumen lain memiliki pengalaman positif atau negatif terhadap situs tersebut. Pastikan toko online yang Anda pilih memiliki reputasi yang baik. Cari alamat fisik toko dan kontak telepon yang bisa dihubungi. Cara terbaik menemukan penjual terpercaya adalah melalui rekomendasi dari sumber terpercaya.\r\n    Ketika ragu, tinggalkan. Tautan pada email atau postingan sering menjadi cara penipu mencuri informasi Anda atau menginfeksi perangkat Anda.\r\n    Informasi personal sama seperti uang, berharga dan harus dilindungi. Ketika melakukan pembelian online, waspadai jenis informasi yang perlu Anda berikan untuk melengkapi transaksi. Pastikan Anda merasa penjual memang perlu meminta data tersebut. Ingat, Anda hanya perlu mengisi beberapa bagian yang diminta saat checkout.\r\n', 'cara-aman-berbelanja-online', '2018-10-18 00:00:00'),
(3, 'nevada-product-9.jpg', 'Trik Belanja Online yang Aman: Jangan Beli Terlalu Banyak dan Lihat Respon Pembeli Lain\r\n', 'TRIBUNTRAVEL.COM - Bagi kaum hawa, berbelanja memang menjadi aktivitas yang menyenangkan.\r\n\r\nTerlebih dengan online shop yang kian menjamur, berbelanja menjadi lebih mudah dan praktis untuk dilakukan.\r\n\r\nKaum milenial pun diketahui rata-rata menghabiskan waktu 17,4 jam perminggu untuk berinteraksi di media sosial, termasuk berbelanja didalamnya.\r\nSadar akan pekerjaan rumah tangga yang seolah tak ada habisnya, belanja online menjadi cara cepat agar tetap bisa tampil modis dan menawan.\r\n\r\nNamun, ada kalanya sebagian orang masih ragu jika akan belanja di media sosial.\r\n\r\nDemi alasan keamanan dan bisa melihat barang yang diinginkan, orang lebih memilih langsung pergi ke toko karena lebih terpercaya.\r\n\r\nLalu, apa hal yang harus diperhatikan ya agar tetap bisa belanja di ranah online dengan aman dan nyaman? \r\n\r\n"Era milenial sekarang memang belanja online itu seperti sebuah keharusan, supaya merasa aman hal utama yang penting untuk dilakukan lihat dulu siapa provider online tempat kita akan berbelanja," ungkap Marcella Mo selaku COO/CFO Berrybenka.com saat ditemui dalam Press Conference Jakarta Great Online Sale 2018 di Jakarta, Kamis (23/8/2018).\r\n\r\nReputasi toko bisa dilihat dari berapa lama toko online tersebut dikenal pasar, sehingga lebih meyakinkan untuk membelanjakan uang.\r\n\r\n"Sebagai pembeli, lihat juga seberapa cepat proses transaksi setelah barang dibeli.\r\n\r\n', 'tips_belanja_aman', '2018-10-18 00:00:00'),
(4, 'belanja aman.jpg', 'Cara Aman Berbelanja Online', 'Konsumen biasanya akan membeli barang yang familiar dan bermerek dengan kualitas yang bisa diprediksi saat online. Sebaliknya, bila konsumen tidak familiar dengan barang yang dicari, mereka lebih memilih untuk membeli di toko offline. Kenapa demikian? Karena ada kemungkinan barang yang dibeli perlu dikembalikan dan kebutuhan untuk secara langsung melihat barang melebihi kebutuhan untuk membelinya secara online.\r\n\r\nBerikut ini beberapa resiko yang Anda hadapi saat berbelanja online:\r\n\r\n    Penipuan akibat melakukan pembayaran pada halaman web yang tidak aman.\r\n    Penipuan akibat melakukan pembayaran menggunakan koneksi WiFi yang tidak aman.\r\n    Toko online palsu, website palsu, dan tawaran email untuk produk atau layanan yang tidak ada.\r\n    Membeli barang palsu secara sengaja atau tidak sengaja, menerima barang dengan kualitas buruk, atau kejahatan lain yang lebih serius.\r\n    Kehilangan uang ketika melakukan pembayaran bank langsung untuk barang yang tidak pernah dikirim.\r\n    Menerima barang atau layanan yang tidak sesuai dengan deskripsi pada iklan.\r\n    Mendapat penawaran produk dengan harga tertentu berdasarkan informasi yang dikumpulkan penjual tentang kebiasaan belanja online Anda dan website yang Anda kunjungi.\r\n\r\nKeamanan Saat Berbelanja Online\r\n\r\nMenggunakan internet untuk membeli barang atau layanan bisa menghemat waktu dan tenaga. Anda juga memiliki banyak pilihan. Meski begitu, berbelanja online tetap memiliki resiko dan Anda perlu mewaspadai apa yang Anda beli, dari siapa, dan bagaimana Anda membayar pembelian.\r\n\r\nSemua yang terhubung dengan internet, termasuk alat mobile seperti telepon pintar dan tablet, perlu diamankan, terutama selama penggunaannya memuncak, misalnya saat liburan. Orang yang berbelanja bisa jadi target penipu dan penjahat online.\r\n\r\nSiapa saja perlu waspada terhadap email yang meminta penerimanya melakukan tindakan cepat, mengklik tautan, dan membuka lampiran. Hati-hati dengan email tentang status pemesanan online.  Penjahat tahu kalau harga jadi hal yang paling dipertimbangkan dalam berbelanja online. Jadi Anda harus waspada ketika melihat penawaran barang dengan diskon di bawah normal.\r\nTips Berbelanja Online\r\n\r\nAman berbelanja online berarti mengambil langkah pencegahan dari penipuan. Berikut ini beberapa tips selama berbelanja online yang bisa Anda ikuti:\r\n\r\n    Lakukan riset. Ketika menggunakan website baru untuk melakukan pembelian, baca ulasannya dan lihat apakah konsumen lain memiliki pengalaman positif atau negatif terhadap situs tersebut. Pastikan toko online yang Anda pilih memiliki reputasi yang baik. Cari alamat fisik toko dan kontak telepon yang bisa dihubungi. Cara terbaik menemukan penjual terpercaya adalah melalui rekomendasi dari sumber terpercaya.\r\n    Ketika ragu, tinggalkan. Tautan pada email atau postingan sering menjadi cara penipu mencuri informasi Anda atau menginfeksi perangkat Anda.\r\n    Informasi personal sama seperti uang, berharga dan harus dilindungi. Ketika melakukan pembelian online, waspadai jenis informasi yang perlu Anda berikan untuk melengkapi transaksi. Pastikan Anda merasa penjual memang perlu meminta data tersebut. Ingat, Anda hanya perlu mengisi beberapa bagian yang diminta saat checkout.\r\n\r\nDownload Gratis eBook Sukses Online Dewaweb\r\n\r\n    Gunakan pilihan pembayaran yang aman. Kartu kredit umumnya jadi pilihan paling aman karena pembeli perlu mencari kredit dari penerbit kartu (bank) bila produk tidak terkirim atau bukan barang yang dipesan.\r\n    Baca kebijakan pengembalian dan lainnya agar Anda tahu pasti apa yang akan terjadi bila pembelian tidak sebagaimana yang direncanakan.\r\n    Batasi jenis bisnis yang Anda lakukan dalam koneksi WiFi publik, termasuk login ke akun penting, seperti email. Sesuaikan pengaturan keamanan pada perangkat Anda untuk membatasi siapa yang bisa mengakses telepon Anda.\r\n    Periksa kembali semua rincian pembelian sebelum mengkonfirmasi pembayaran.\r\n    Jangan menjawab email dari perusahaan yang tidak Anda kenal.\r\n    Beberapa website akan mengarahkan Anda ke layanan pembayaran dari pihak ketiga. Pastikan situs ini aman sebelum Anda melakukan pembayaran.\r\n    Ketika melakukan pebayaran ke individu, jangan transfer uang langsung ke rekening bank mereka, tapi lakukan pembayaran misalnya melalui PayPal.\r\n    Selalu logout dari situs yang Anda kunjungi atau setelah memberian detail untuk registrasi. Hanya menutup browser tidak cukup untuk memastikan privasi.\r\n    Periksa kartu kredit dan rekening koran dengan seksama setelah berbelanja untuk memastikan jumlah yang tepat telah terdebit, dan tidak ada penipuan yang terjadi akibat transaksi.\r\n    Bila memungkinkan, pastikan harga yang terdaftar di toko tidak jauh beda pada toko lain, untuk memastikan Anda tidak membayar lebih mahal.\r\n\r\nTips Keamanan Paling Mendasar Saat Berbelanja Online\r\n\r\n    Pastikan semua perangkat yang terhubung dengan web, termasuk PC, telepon pintar, dan tablet, bebas dari malware dan infeksi dengan hanya menggunakan software dan aplikasi versi terbaru.\r\n    Kunci login Anda. Lindungi akun online Anda dengan mengaktifkan tool autentikasi paling kuat. Username dan kata sandi Anda tidak cukup untuk melindungi akun penting seperti email atau media sosial.\r\n    Buat kata sandi berupa kalimat. Kata sandi yang kuat adalah kalimat yang setidaknya terdiri dari 12 karakter. Fokus pada kalimat atau frase positif yang Anda sukai dan mudah diingat. Pada beberapa situs, Anda bahkan bisa menggunakan tanda baca spasi.\r\n    Akun unik, kata sandi unik. Memiliki kata sandi berbeda untuk tiap akun membantu mencegah kejahatan cyber. Setidaknya, pisahkan akun pekerjaan dan akun personal, dan pastikan akun penting Anda memiliki kata sandi yang kuat.\r\n\r\nKeamanan Perangkat Mobile Agar Aman Berbelanja Online\r\n\r\nBerikut ini beberapa tips keamanan perangkat mobile untuk belanja aman dari handphone atau tablet Anda:\r\n\r\nJangan gunakan kartu debit, selalu gunakan kartu kredit atau layanan pembayaran online\r\n\r\nMembeli barang dengan kartu debit mungkin lebih dipilih daripada kartu kredit karena Anda tidak perlu cemas tentang biaya tambahan. Tapi kartu kredit memiliki perlindungan lebih baik. Pilihan lainnya bisa berupa layanan pembayaran online seperti PayPal, yang menggunakan teknologi maju untuk menyimpan dan mengirim informasi bank Anda.\r\n\r\nSimpan jendela konfirmasi pembayaran Anda\r\n\r\nJangan semata mengandalkan penjual mengirimkan email resi, atau website menyimpan transaksi Anda di riwayat pembelian. Kekeliruan bisa terjadi, terutama pada saat banyak terjadi transaksi di website tersebut.\r\n\r\nBila tidak ada pilihan untuk menyimpan informasi pembayaran, gunakan screenshot dan kirim ke email Anda sendiri.\r\n\r\nJangan buka email retail dari perangkat mobile\r\n\r\nInbox Anda bisa penuh dengan email promosi. Tapi jangan membuka pesan-pesan ini, karena bisa saja penipuan phishing. Penipu hanya ingin mencuri data pribadi Anda melalui email yang didesain dengan sangat baik.\r\n\r\nTunggu hingga Anda tiba di rumah atau berada di depan laptop atau PC untuk membuka email tersebut. Cari keanehan seperti kesalahan ejaan atau tata bahasa dan desain kerja yang janggal.\r\n\r\nIngat, ketika Anda membuka email ini, jangan pernah mengklik apapun. Tapi salin dan tempel tiap tautan email pada jendela browser baru. Ini jadi cara aman untuk menguji keabsahan URL.\r\n\r\nAtau Anda bisa coba trik lain. Diamkan cursor Anda di atas tiap tautan pada email tersebut. URL akan muncul, bila tidak sesuai dengan tautan yang terketik, maka kemungkinan email itu adalah bentuk phishing dan hindari mengkliknya.\r\n\r\nGunakan proteksi antivirus mobile\r\n\r\nDengan meningkatnya malware pada perangkat mobile, penggunaan proteksi antivirus jadi sebuah keharusan. Sebelum mulai berbelanja, lengkapi telepon pintar dan tablet Anda dengan software keamanan mobile. Cari aplikasi yang bisa scan virus, memblokir website, memberi proteksi, dan menawarkan update otomatis. Baca info kami tentang cara mengamankan website dari malware.\r\n\r\nJangan lupa update aplikasi browser Anda\r\n\r\nSelalu gunakan versi terbaru dari browser mobile utama seperti Chrome, Firefox, atau Opera.\r\n\r\nDengan menggunakan update browser terbaru, Anda mendapat fitur keamanan yang melindungi Anda dari malware.\r\n\r\nUnduh aplikasi belanja dari pengembang terpercaya\r\n\r\nTentu berbelanja online aman yang jadi tujuannya, tapi prosesnya harus nyaman dan juga hemat waktu. Untungnya, banyak merchant ternama telah menciptakan aplikasi yang memungkinkan konsumen membandingkan harga, membaca ulasan, dan memilih penawaran terbaik dengan hanya beberapa kali slide.\r\n\r\n    Unduh aplikasi dari marketplace besar seperti Tokopedia, Blibli, Bukalapak, Lazada, dan sebagainya.\r\n    Baca ulasan, rating, dan informasi dari pengembang untuk mengkonfirmasi autentikasi aplikasi.\r\n    Scan aplikasi yang baru diunduh dan diinstal untuk melindungi dari virus.\r\n\r\nHindari Wi-Fi publik\r\n\r\nCari indikator keamanan, seperti ketika menggunakan laptop atau PC, temukan tanda secure sockets layer (SSL) atau transport layer security (TLS) pada situs mobile yang Anda kunjungi.\r\n\r\nIndikator SSL dan TSL bisa terlihat seperti gembok kecil atau “http” pada jendela URL. Ini memberitahu Anda kalau situs akan melindungi transmisi data pribadi Anda.\r\n\r\nKarena layar handset berukuran kecil, penanda ini tidak selalu ditemukan. Jadi sebaiknya hanya kunjungi toko online yang sudah Anda percaya, dengan mengetik URL-nya pada address bar. Baca juga artikel kami lainnya tentang menghindari penipuan online.\r\n\r\nMetode Pembayaran Yang Aman Saat Berbelanja Online\r\n\r\nAnda selalu mengambil resiko ketika berbelanja online. Ada kemungkinan penipu mengambil informasi pembayaran dan melakukan pembelian atas nama Anda. Resiko ini tidak hanya ada pada saat berbelanja online, bisa juga terjadi pada toko fisik.\r\n\r\nAnda bisa mengantisipasi ancaman kejahatan ini dengan mengandalkan teknologi. Informasi Anda biasanya diubah ke format yang sulit dibaca. Tapi bahkan ketika Anda sudah melakukan semuanya dengan benar, website yang besar sekalipun memiliki resiko kebocoran data.\r\n\r\nPerangkat Anda harus aman dan update, tapi bagaimana dengan metode pembayaran yang Anda gunakan ketika berbelanja online?\r\n\r\nAnda biasanya memiliki beberapa pilihan untuk membayar: menggunakan kartu kredit, kartu debit, layanan pembayaran seperti PayPal, atau pilihan lain. Bergantung kepentingan Anda, pilihan yang satu mungkin lebih baik dari yang lain. Mari kita lihat satu per satu metode pembayaran saat berbelanja online.\r\n\r\nKartu kredit\r\n\r\nKartu kredit sering jadi pilihan pembayaran saat berbelanja online. Perlindungan dari penipuan dengan kertu kredit cukup tinggi, dan mendapatkan uang Anda kembali caranya cukup sederhana. Cukup laporkan aktivitas mencurigakan ke pihak yang mengeluarkan kartu atau beritahu mereka kalau Anda tidak pernah menerima apa yang Anda bayar.\r\n\r\nTak ada uang yang keluar dari rekening bank Anda, uang dari pihak bank yang digunakan. Tapi kartu kredit juga punya sisi negatif. Orang mengira kartu kredit sebagai alat untuk memenuhi kebutuhan keseharian. Mungkin Anda menggunakannya secara teratur untuk membayar pengeluaran pribadi dan bisnis. Atau Anda membayar biaya tertentu secara otomatis dan berulang kali dengan kartu kredit.\r\n\r\nBila nomor kartu dicuri, Anda akan mendapat kartu dan nomor kartu baru. Anda perlu mengupdate informasi tagihan di banyak tempat, dan sementara waktu Anda tidak bisa menggunakan kartu kredit ketika menunggu penggantian.\r\n\r\nTips untuk Anda, gunakan kartu kredit hanya ketika Anda yakin dengan keamanannya dan ketika ada perlindungan pelanggan yang kuat. Anda bisa gunakan kartu kredit yang hanya Anda pakai untuk berbelanja online atau pada situs yang Anda tidak familiar.\r\n\r\nAnda bisa lakukan pembayaran di Dewaweb via kartu kredit.\r\n\r\nLayanan pembayaran\r\n\r\nLayanan pembayaran dari pihak ketiga juga jadi pilihan bagus untuk berbelanja online. PayPal jadi metode pembayaran paling populer. Layanan ini memberikan lapisan keamanan tambahan, selain memberikan nomor kartu kredit atau informasi rekening bank ke tiap website tempat Anda berbelanja.\r\n\r\nBila Anda berbelanja pada banyak situs atau situs yang Anda tidak familiar, Anda bisa mengurangi resiko hacker menemukan informasi tentang Anda. Layanan ini juga memberi perlindungan untuk pembeli ketika barang yang dipesan tidak sampai ke tujuan atau terjadi penipuan.\r\n\r\nKekurangan dari metode pembayaran ini, ketika terjadi hal yang tidak dinginkan, misalnya Anda bermasalah dengan pembeli, akun ini bisa dibekukan sementara waktu untuk investigasi perusahaan. Bila Anda mangkir dari pembayaran, akun bisa ditutup dan Anda didenda. Meski begitu, Anda tidak banyak bergantung pada akun PayPal, ada banyak tempat belanja online dengan metode pembayaran lain. Tapi kadang PayPal memang jadi cara paling mudah.\r\n\r\nKartu debit\r\n\r\nKartu debit jadi kartu pembayaran yang menarik dana langsung dari rekening bank Anda. Anda tidak perlu mengajukan aplikasi, persetujuan, membayar biaya tahunan, atau menerima resiko hutang seperti pada kartu kredit.\r\n\r\nKerugiannya, kartu debit langsung terhubung dengan rekening bank Anda. Bila nomor kartu digunakan tanpa izin Anda atau terjadi kesalahan, uang akan keluar dari rekening Anda, dan Anda tidak bisa membayar tagihan atau pengeluaran dengan kartu yang kosong. Memang ada perlindungan dari penipuan, tapi butuh sekitar 10 hari agar bank bisa mengembalikan uang ke rekening Anda.\r\n\r\nSebisa mungkin hindari penggunaan kartu debit saat berbelanja online. Bila Anda tidak bisa menggunakan kartu kredit atau layanan pembayaran, kartu prabayar bisa membantu mengisolasi rekening Anda dari masalah.\r\n\r\nAnda sah-sah saja membeli barang secara online bila mencari tawaran paling baik. Meski biaya pengiriman sudah disertakan, kebanyakan harga di toko online lebih rendah. Meski toko online tidak semuanya berkompetisi dalam harga, ada yang lebih mengutamakan layanan pelanggan.\r\n\r\nTapi, bila Anda merasa lebih aman berbelanja ke toko offline ketimbang online, kenapa tidak langsung mendatangi toko pilihan Anda? Sebelum membeli, pastikan Anda membaca banyak informasi serta melakukan riset kecil tentang perusahaan tempat Anda akan membeli produk dan transaksi Anda akan berjalan lancar.', 'Cara_Aman_Berbelanja_Online', '2018-10-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id_contact`, `nama`, `email`, `subject`, `pesan`) VALUES
(1, 'rudianto', 'rudiyanto6065@gmail.com', 'sayalupa', 'sayaakan datang'),
(2, 'jaka', 'rudiyanto6065@gmail.com', 'sssssss', 'sssssssssssssssss'),
(3, 'jaka', 'rudiyanto6065@gmail.com', 'ssssssssss', 'ssssssssssss'),
(4, 'rudianto', 'de@gmail.com', 'ssssssssss', 'ddssssssssss');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `id_propinsi` int(11) NOT NULL,
  `nama_kabupaten` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `id_propinsi`, `nama_kabupaten`) VALUES
(80, 11, 'KOTA LANGSA'),
(81, 11, 'SIMEULUE'),
(82, 11, 'ACEH UTARA'),
(83, 11, 'ACEH SELATAN'),
(84, 11, 'ACEH TENGGARA'),
(85, 11, 'ACEH TIMUR'),
(86, 11, 'ACEH TENGAH'),
(87, 11, 'ACEH BARAT'),
(88, 11, 'PIDIE'),
(89, 11, 'ACEH SINGKIL'),
(90, 11, 'BIREUEN'),
(91, 11, 'ACEH BARAT DAYA'),
(92, 11, 'KOTA LHOKSEUMAWE'),
(93, 11, 'KOTA SABANG'),
(94, 11, 'KOTA BANDA ACEH'),
(95, 11, 'BENER MERIAH'),
(96, 11, 'ACEH TAMIANG'),
(97, 11, 'NAGAN RAYA'),
(98, 11, 'ACEH BESAR'),
(99, 11, 'ACEH JAYA'),
(100, 11, 'GAYO LUES'),
(101, 12, 'MANDAILING NATAL'),
(102, 12, 'NIAS SELATAN'),
(103, 12, 'PAKPAK BHARAT'),
(104, 12, 'HUMBANG HASUNDUTAN'),
(105, 12, 'SAMOSIR'),
(106, 12, 'TOBA SAMOSIR'),
(107, 12, 'DAIRI'),
(108, 12, 'TAPANULI TENGAH'),
(109, 12, 'TAPANULI UTARA'),
(110, 12, 'TAPANULI  SELATAN'),
(111, 12, 'NIAS'),
(112, 12, 'LANGKAT'),
(113, 12, 'KARO'),
(114, 12, 'DELI SERDANG'),
(115, 12, 'SIMALUNGUN.'),
(116, 12, 'ASAHAN'),
(117, 12, 'LABUHAN BATU'),
(118, 12, 'SERDANG BEDAGAI'),
(119, 12, 'KOTA MEDAN'),
(120, 12, 'KOTA PADANG SIDIMPUAN'),
(121, 12, 'KOTA TEBING TINGGI'),
(122, 12, 'KOTA BINJAI'),
(123, 12, 'KOTA TANJUNG BALAI'),
(124, 12, 'KOTA SIBOLGA'),
(125, 12, 'KOTA PEMATANG SIANTAR'),
(126, 13, 'KOTA PADANG PANJANG'),
(127, 13, 'KOTA  BUKIT TINGGI '),
(128, 13, 'KOTA PAYAKUMBUH'),
(129, 13, 'KOTA PARIAMAN'),
(130, 13, 'TANAH DATAR'),
(131, 13, 'DHARMASRAYA'),
(132, 13, 'KOTA SAWAHLUNTO'),
(133, 13, 'PADANG PARIAMAN'),
(134, 13, 'KOTA PADANG'),
(135, 13, 'PASAMAN BARAT'),
(136, 13, 'SOLOK SELATAN'),
(137, 13, 'KEPULAUAN MENTAWAI.'),
(138, 13, 'PASAMAN'),
(139, 13, 'LIMA PULUH KOTA'),
(140, 13, 'AGAM'),
(141, 13, 'SAWAHLUNTO/SIJUNJUNG'),
(142, 13, 'SOLOK'),
(143, 13, 'PESISIR SELATAN'),
(144, 13, 'KOTA SOLOK'),
(145, 14, 'KOTA DUMAI'),
(146, 14, 'PELALAWAN'),
(147, 14, 'ROKAN HULU'),
(148, 14, 'KAMPAR'),
(149, 14, 'ROKAN HILIR'),
(150, 14, 'SIAK'),
(151, 14, 'KUANTAN SINGINGI'),
(152, 14, 'KOTA PEKANBARU'),
(153, 14, 'INDRAGIRI HILIR'),
(154, 14, ' BENGKALIS'),
(155, 14, ' INDRAGIRI HULU'),
(156, 15, '   MUARO JAMBI'),
(157, 15, ' TANJUNG JABUNG BARAT'),
(158, 15, ' BUNGO '),
(159, 15, 'KOTA JAMBI'),
(160, 15, '  SAROLANGUN '),
(161, 15, '  MERANGIN'),
(162, 15, ' KERINCI'),
(163, 15, '  TEBO'),
(164, 15, '  BATANG HARI'),
(165, 15, ' TANJUNG JABUNG TIMUR'),
(166, 16, ' OGAN KOMERING ULU SELATAN'),
(167, 16, 'KOTA  LUBUK LINGGAU'),
(168, 16, 'KOTA PAGAR ALAM '),
(169, 16, 'KOTA PALEMBANG'),
(170, 16, ' OGAN KOMERING ULU TIMUR'),
(171, 16, ' OGAN  ILIR'),
(172, 16, '  BANYUASIN'),
(173, 16, ' OGAN KOMERING ILIR'),
(174, 16, '  MUSI RAWAS'),
(175, 16, '  MUSI BANYUASIN'),
(176, 16, '  LAHAT'),
(177, 16, '  MUARA ENIM'),
(178, 16, ' OGAN KOMERING ULU'),
(179, 16, 'KOTA  PRABUMULIH'),
(180, 17, ' BENGKULU SELATAN'),
(181, 17, ' BENGKULU UTARA'),
(182, 17, '  MUKOMUKO'),
(183, 17, '   SELUMA'),
(184, 17, ' LEBONG'),
(185, 17, ' KEPAHIANG'),
(186, 17, 'KOTA BENGKULU'),
(187, 17, ' REJANG LEBONG'),
(188, 17, '   KAUR'),
(189, 18, ' LAMPUNG SELATAN'),
(190, 18, ' LAMPUNG UTARA'),
(191, 18, ' LAMPUNG TENGAH'),
(192, 18, ' LAMPUNG BARAT'),
(193, 18, 'KOTA BANDAR LAMPUNG'),
(194, 18, 'KOTA METRO'),
(195, 18, ' WAY KANAN'),
(196, 18, ' TULANG BAWANG'),
(197, 18, ' LAMPUNG TIMUR'),
(198, 18, ' TANGGAMUS'),
(199, 19, '  BANGKA TENGAH'),
(200, 19, ' BANGKA BARAT'),
(201, 19, ' BELITUNG TIMUR'),
(202, 19, 'KOTA PANGKALPINANG'),
(203, 19, '  BANGKA SELATAN'),
(204, 19, '  BELITUNG'),
(205, 19, '  BANGKA'),
(206, 21, ' KEPULAUAN RIAU'),
(207, 21, ' NATUNA'),
(208, 21, ' KARIMUN'),
(209, 21, ' LINGGA'),
(210, 21, 'KOTA BATAM'),
(211, 21, 'KOTA TANJUNG PINANG'),
(212, 31, 'KOTA JAKARTA PUSAT'),
(213, 31, 'KOTA JAKARTA TIMUR'),
(214, 31, ' KEPULAUAN SERIBU'),
(215, 31, 'KOTA JAKARTA SELATAN'),
(216, 31, 'KOTA JAKARTA BARAT'),
(217, 31, 'KOTA JAKARTA UTARA'),
(218, 32, ' PURWAKARTA'),
(219, 32, 'KOTA BANJAR'),
(220, 32, 'KOTA TASIKMALAYA'),
(221, 32, 'KOTA CIMAHI'),
(222, 32, 'KOTA DEPOK'),
(223, 32, 'KOTA BEKASI'),
(224, 32, ' CIAMIS'),
(225, 32, ' TASIKMALAYA'),
(226, 32, ' GARUT'),
(227, 32, ' CIANJUR'),
(228, 32, ' SUKABUMI'),
(229, 32, ' BOGOR'),
(230, 32, ' BANDUNG'),
(231, 32, ' SUMEDANG'),
(232, 32, ' KUNINGAN'),
(233, 32, ' CIREBON'),
(234, 32, ' INDRAMAYU'),
(235, 32, 'KOTA BOGOR'),
(236, 32, 'KOTA CIREBON'),
(237, 32, 'KOTA BANDUNG'),
(238, 32, ' BEKASI'),
(239, 32, ' KARAWANG'),
(240, 32, ' MAJALENGKA'),
(241, 32, ' SUBANG'),
(242, 32, 'KOTA SUKABUMI'),
(243, 33, ' BREBES'),
(244, 33, 'KOTA MAGELANG'),
(245, 33, 'KOTA SURAKARTA'),
(246, 33, 'KOTA SALATIGA'),
(247, 33, ' PEMALANG'),
(248, 33, ' BATANG'),
(249, 33, ' KENDAL'),
(250, 33, ' BANJARNEGARA'),
(251, 33, ' TEGAL'),
(252, 33, ' BOYOLALI'),
(253, 33, ' TEMANGGUNG'),
(254, 33, 'KOTA SEMARANG'),
(255, 33, 'KOTA PEKALONGAN'),
(256, 33, 'KOTA TEGAL'),
(257, 33, ' GROBOGAN'),
(258, 33, ' JEPARA'),
(259, 33, ' BLORA'),
(260, 33, ' REMBANG'),
(261, 33, ' PATI'),
(262, 33, ' KUDUS'),
(263, 33, ' DEMAK'),
(264, 33, ' SEMARANG'),
(265, 33, ' PEKALONGAN'),
(266, 33, ' SRAGEN'),
(267, 33, ' KARANGANYAR'),
(268, 33, ' WONOGIRI'),
(269, 33, ' CILACAP'),
(270, 33, ' BANYUMAS'),
(271, 33, ' PURBALINGGA'),
(272, 33, ' KEBUMEN'),
(273, 33, ' PURWOREJO'),
(274, 33, ' WONOSOBO'),
(275, 33, ' MAGELANG'),
(276, 33, ' KLATEN'),
(277, 33, ' SUKOHARJO'),
(278, 34, ' BANTUL'),
(279, 34, ' GUNUNG KIDUL'),
(280, 34, 'KOTA YOGYAKARTA'),
(281, 34, ' KULONPROGO'),
(282, 34, ' SLEMAN'),
(283, 35, ' MADIUN'),
(284, 35, 'KOTA KEDIRI'),
(285, 35, ' SUMENEP'),
(286, 35, ' PAMEKASAN'),
(287, 35, ' SAMPANG'),
(288, 35, ' BANGKALAN'),
(289, 35, ' GRESIK'),
(290, 35, ' BLITAR'),
(291, 35, 'KOTA MALANG'),
(292, 35, 'KOTA PROBOLINGGO'),
(293, 35, 'KOTA MOJOKERTO'),
(294, 35, 'KOTA MADIUN'),
(295, 35, 'KOTA SURABAYA'),
(296, 35, 'KOTA BATU'),
(297, 35, 'KOTA PASURUAN'),
(298, 35, ' MALANG'),
(299, 35, ' LAMONGAN'),
(300, 35, ' PACITAN'),
(301, 35, ' PONOROGO'),
(302, 35, ' SIDOARJO'),
(303, 35, ' PASURUAN'),
(304, 35, ' PROBOLINGGO'),
(305, 35, 'KOTA BLITAR'),
(306, 35, ' LUMAJANG'),
(307, 35, ' JEMBER'),
(308, 35, ' BANYUWANGI'),
(309, 35, ' BONDOWOSO'),
(310, 35, ' MOJOKERTO'),
(311, 35, ' JOMBANG'),
(312, 35, ' TRENGGALEK'),
(313, 35, ' TULUNGAGUNG'),
(314, 35, ' TUBAN'),
(315, 35, ' KEDIRI'),
(316, 35, ' BOJONEGORO'),
(317, 35, ' NGAWI'),
(318, 35, ' MAGETAN'),
(319, 35, ' NGANJUK'),
(320, 35, ' SITUBONDO'),
(321, 36, 'KOTA  CILEGON'),
(322, 36, ' LEBAK'),
(323, 36, ' TANGGERANG'),
(324, 36, ' SERANG'),
(325, 36, 'KOTA TANGGERANG'),
(326, 36, ' PANDEGLANG'),
(327, 36, 'KOTA TANGGERANG'),
(328, 36, 'KOTA  CILEGON'),
(329, 51, ' KARANG ASEM'),
(330, 51, ' BANGLI'),
(331, 51, ' BULELENG'),
(332, 51, ' KLUNGKUNG'),
(333, 51, 'KOTA DENPASAR'),
(334, 51, ' GIANYAR'),
(335, 51, ' BADUNG'),
(336, 51, ' JEMBRANA'),
(337, 51, ' TABANAN'),
(338, 52, ' SUMBAWA'),
(339, 52, 'KOTA  BIMA'),
(340, 52, 'KOTA MATARAM'),
(341, 52, ' SUMBAWA BARAT'),
(342, 52, '  BIMA'),
(343, 52, ' DOMPU'),
(344, 52, ' LOMBOK TIMUR'),
(345, 52, ' LOMBOK BARAT'),
(346, 52, ' LOMBOK TENGAH'),
(347, 53, '  B E L U'),
(348, 53, ' TIMOR TENGAH  UTARA'),
(349, 53, ' TIMOR TENGAH SELATAN'),
(350, 53, ' KUPANG'),
(351, 53, '  FLORES TIMUR'),
(352, 53, '  ALOR'),
(353, 53, 'KOTA KUPANG'),
(354, 53, '  SUMBA BARAT'),
(355, 53, '  LEMBATA.'),
(356, 53, '  SIKKA'),
(357, 53, '  ROTE NDAO'),
(358, 53, '  SUMBA TIMUR'),
(359, 53, '  MANGGARAI'),
(360, 53, '  MANGGARAI BARAT'),
(361, 53, '  NGADA'),
(362, 53, '  ENDE'),
(363, 61, ' KAPUAS HULU'),
(364, 61, ' SEKADAU'),
(365, 61, ' PONTIANAK'),
(366, 61, ' SANGGAU'),
(367, 61, ' KETAPANG'),
(368, 61, ' SINTANG'),
(369, 61, ' BENGKAYANG'),
(370, 61, ' LANDAK'),
(371, 61, 'KOTA PONTIANAK'),
(372, 61, ' MELAWI'),
(373, 61, 'KOTA SINGKAWANG'),
(374, 62, ' PULANG PISAU'),
(375, 62, '  MURUNG RAYA'),
(376, 62, '  BARITO TIMUR'),
(377, 62, 'KOTA PALANGKARAYA'),
(378, 62, ' LAMANDAU'),
(379, 62, ' GUNUNG MAS'),
(380, 62, ' KOTA WARINGIN BARAT'),
(381, 62, ' KOTA WARINGIN TIMUR'),
(382, 62, ' SUKAMARA'),
(383, 62, ' SERUYAN'),
(384, 62, ' KATINGAN'),
(385, 62, ' BARITO UTARA'),
(386, 62, ' BARITO SELATAN'),
(387, 62, ' KAPUAS'),
(388, 63, 'KOTA BANJARMASIN'),
(389, 63, 'KOTA BANJAR BARU'),
(390, 63, ' TANAH LAUT'),
(391, 63, ' KOTA BARU'),
(392, 63, ' BANJAR'),
(393, 63, ' BALANGAN'),
(394, 63, ' TANAH BUMBU'),
(395, 63, ' TABALONG'),
(396, 63, ' HULU SUNGAI UTARA'),
(397, 63, ' HULU SUNGAI TENGAH'),
(398, 63, ' HULU SUNGAI SELATAN'),
(399, 63, ' BARITO KUALA'),
(400, 63, ' TAPIN'),
(401, 64, ' MALINAU'),
(402, 64, ' KUTAI BARAT'),
(403, 64, ' KUTAI TIMUR'),
(404, 64, ' PENAJAM PASER UTARA'),
(405, 64, ' BULUNGAN'),
(406, 64, 'KOTA BALIKPAPAN'),
(407, 64, 'KOTA SAMARINDA'),
(408, 64, 'KOTA  TARAKAN'),
(409, 64, 'KOTA  BONTANG'),
(410, 64, ' BERAU'),
(411, 64, ' KUTAI KARTANEGARA'),
(412, 64, ' NUNUKAN'),
(413, 64, ' PASIR'),
(414, 71, 'KOTA TOMOHON'),
(415, 71, 'KAB. BOLOANG MONGONDOW'),
(416, 71, 'KAB. MINAHASA'),
(417, 71, 'KAB. KEPULAUAN SANGIHE'),
(418, 71, 'KAB. MINAHASA SELATAN'),
(419, 71, 'KOTA MANADO'),
(420, 71, 'KAB. KEPULAUAN TALAUD'),
(421, 71, 'KOTA BITUNG'),
(422, 72, 'PARIGI MOUTONG'),
(423, 72, 'BUOL'),
(424, 72, 'MOROWALI'),
(425, 72, 'TOJO UNA UNA'),
(426, 72, 'KOTA PALU'),
(427, 72, 'TOLI TOLI'),
(428, 72, 'DONGGALA'),
(429, 72, 'POSO'),
(430, 72, 'BANGGAI KEPULAUAN'),
(431, 72, 'BANGGAI'),
(432, 73, 'TAKALAR'),
(433, 73, 'GOWA'),
(434, 73, 'SINJAI'),
(435, 73, 'JENEPONTO'),
(436, 73, 'BANTAENG'),
(437, 73, 'BULUKUMBA'),
(438, 73, 'SELAYAR'),
(439, 74, 'KOLAKA'),
(440, 74, 'KENDARI'),
(441, 74, 'MUNA'),
(442, 74, 'BUTON'),
(443, 74, 'WAKATOBI'),
(444, 74, 'BOMBANA'),
(445, 74, 'KOTA BAU BAU'),
(446, 74, 'KOTA KENDARI'),
(447, 74, 'KONAWE SELATAN'),
(448, 74, 'KOLAKA TIMUR'),
(449, 75, 'POHUWATO'),
(450, 75, 'BONE BOLANGO'),
(451, 75, 'BOALEMO'),
(452, 75, 'GORONTALO'),
(453, 75, 'KOTA GORONTALO'),
(454, 81, 'MALUKU TENGAH'),
(455, 81, 'SERAM BAGIAN TIMUR'),
(456, 81, 'SERAM BAGIAN BARAT'),
(457, 81, 'KEPULAUAN ARU'),
(458, 81, 'KOTA AMBON'),
(459, 81, 'BURU'),
(460, 81, 'MALUKU TENGGARA  BARAT'),
(461, 81, 'MALUKU TENGGARA'),
(462, 82, 'HALMAHERA TIMUR'),
(463, 82, 'KEPULAUAN SULA'),
(464, 82, 'HALMAHERA SELATAN'),
(465, 82, 'HALMAHERA UTARA'),
(466, 82, 'HALMAHERA TENGAH'),
(467, 82, 'KOTA TERNATE'),
(468, 82, ' MALUKU UTARA'),
(469, 82, 'KOTA TIDORE KEPULAUAN'),
(470, 91, 'PUNCAK JAYA'),
(471, 91, 'WAROPEN'),
(472, 91, 'SARMI'),
(473, 91, 'PANIAI'),
(474, 91, 'BIAK NUMFOR'),
(475, 91, 'MANOKWARI'),
(476, 91, 'SORONG '),
(477, 91, 'FAK FAK '),
(478, 91, 'NABIRE '),
(479, 91, 'YAYAPURA'),
(480, 91, 'YAPEN WAROPEN'),
(481, 91, 'KEEROM'),
(482, 91, 'KOTA JAYAPURA'),
(483, 91, 'TELUK WONDAMA'),
(484, 91, 'MAPPI'),
(485, 91, 'KOTA  SORONG '),
(486, 91, 'MIMIKA'),
(487, 91, 'SUPIORI'),
(488, 91, 'BOVEN DIGUL'),
(489, 91, 'KAIMANA'),
(490, 91, 'TOLIKARA'),
(491, 91, 'YAHUKIMO  '),
(492, 91, 'PEGUNUNGAN BINTANG'),
(493, 91, 'RAJA AMPAT'),
(494, 91, 'SORONG SELATAN'),
(495, 91, 'ASMAT'),
(496, 92, 'SORONG SELATAN'),
(497, 92, 'KOTA  SORONG '),
(498, 92, 'TELUK WONDAMA'),
(499, 92, 'TELUK BINTUNI'),
(500, 92, 'KAIMANA'),
(501, 92, 'FAK FAK '),
(502, 92, 'SORONG '),
(503, 92, 'MANOKWARI'),
(504, 92, 'RAJA AMPAT');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `username`, `password`) VALUES
(1, 'nuris', '74d7273be4b0ddeac49bfa169b288c5b'),
(2, 'wahyu', '32c9e71e866ecdbc93e497482aa6779f');

-- --------------------------------------------------------

--
-- Table structure for table `ms_brand`
--

CREATE TABLE `ms_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(256) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ms_brand`
--

INSERT INTO `ms_brand` (`brand_id`, `brand_name`, `create_date`) VALUES
(2, 'wanita', '2014-06-29 00:00:00'),
(3, 'AWESOME', '2014-06-29 00:00:00'),
(4, 'ASYLUM', '2014-06-29 00:00:00'),
(5, 'OCEAN', '2018-12-05 00:00:00'),
(6, 'WATCHOUT', '2014-06-29 00:00:00'),
(7, 'pria', '2018-12-05 00:00:00'),
(8, 'NEVADA', '2018-12-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ms_customer`
--

CREATE TABLE `ms_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(256) NOT NULL,
  `customer_email` varchar(256) NOT NULL,
  `customer_phone` varchar(50) NOT NULL,
  `customer_address` text NOT NULL,
  `provinsi` varchar(120) NOT NULL,
  `customer_username` varchar(256) NOT NULL,
  `customer_password` varchar(256) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ms_customer`
--

INSERT INTO `ms_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `provinsi`, `customer_username`, `customer_password`, `create_date`) VALUES
(62, 'rudi', 'rudiyanto6065@gmail.com', '083890051601', 'sssssssssssssssssssssssssssssss', 'Kalimantan Timur', 'duduna', 'duduna', '2018-11-13 17:55:24'),
(63, 'sinta', 'sinta@gmail.com', '83890051596', 'kp. pabuaran desa manuk dadali', 'Banten', 'dadali', '????+0?Jj??2?!?', '2018-11-14 05:05:37'),
(64, 'romas', 'romababa@gmail.com', '12345', 'jakarta babastudio', 'DKI Jakarta indonesia ok', 'romadon', 'romadon', '2018-11-14 06:14:55'),
(65, 'sssssssssssss', 'dede@gmail.com', '123456789012', 'asdfghjklzxcvbnmsdfg', 'Banten', 'admin', '12345678', '2018-11-16 17:34:14'),
(66, 'sssssssssssss', 'dedzze@gmail.com', '123456789012', 'zzzzzzzzzzzzzzzz', 'Bengkulu', 'adminzzzzzz', '12345678', '2018-11-16 17:35:00'),
(67, 'sssssssssssss', 'dsssssssssedzze@gmail.com', '123456789012', 'sssssssssssss', '', 'sesesese', '12345678', '2018-11-16 17:36:37'),
(68, 'babastudio', 'babastudio@gmail.com', '083890051601', 'jakarta permata hijaw', 'DKI Jakarta', 'babastudio', 'babastudio', '2018-11-25 03:23:41'),
(69, 'anita', 'anita@babastudio.com', '08389005167', 'jalan panjang desa ciater', 'Banten', 'anita', 'anitasari', '2018-12-19 02:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `ms_size`
--

CREATE TABLE `ms_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(256) NOT NULL,
  `size_description` text NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ms_tshirt`
--

CREATE TABLE `ms_tshirt` (
  `id` int(11) NOT NULL,
  `tshirt_name` varchar(250) NOT NULL,
  `product_description` text NOT NULL,
  `sluga` varchar(230) NOT NULL,
  `tshirt_image` varchar(256) NOT NULL,
  `tshirt_price` int(11) NOT NULL,
  `harga_coret` int(14) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `best_seller` tinyint(4) NOT NULL,
  `featured` tinyint(11) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ms_tshirt`
--

INSERT INTO `ms_tshirt` (`id`, `tshirt_name`, `product_description`, `sluga`, `tshirt_image`, `tshirt_price`, `harga_coret`, `brand_id`, `best_seller`, `featured`, `create_date`) VALUES
(1, 'NEVADA X001', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.sejarah, dalam arti luas dan kedalamannya. Kami juga menginginkan supaya Wikipedia dapat menjadi sumber yang terpercaya. 	”', 'jkarta-lemabgcc', 'miniatur3.jpg', 98000, 250000, 1, 0, 0, '2018-12-05 00:00:00'),
(2, 'NEVADA X002', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.sejarah, dalam arti luas dan kedalamannya. Kami juga menginginkan supaya Wikipedia dapat menjadi sumber yang terpercaya. 	”', 'jkarta-lemabgas', 'screenshot-11.png', 90000, 250000, 0, 0, 0, '2018-12-05 00:00:00'),
(3, 'NEVADA X003', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.sejarah, dalam arti luas dan kedalamannya. Kami juga menginginkan supaya Wikipedia dapat menjadi sumber yang terpercaya. 	”', 'jkarta-lemabgcc', 'HS-R196-gold-color-background-wall-panel_jpg_350x350.jpg', 100000, 0, 0, 0, 0, '2018-12-05 00:00:00'),
(4, 'NEVADA X004', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.sejarah, dalam arti luas dan kedalamannya. Kami juga menginginkan supaya Wikipedia dapat menjadi sumber yang terpercaya. 	”', 'jkarta-lemabg', 'logo22.png', 78000, 250000, 0, 0, 0, '2018-12-05 00:00:00'),
(5, 'NEVADA X005', '', 'jkarta-lemabg', 'pi.jpg', 87000, 250000, 0, 1, 0, '2018-12-05 00:00:00'),
(6, 'NEVADA X006', '', 'jkarta-lema', 'nevada-product-6.jpg', 88000, 250000, 1, 0, 0, '2014-06-29 00:00:00'),
(7, 'NEVADA X007', '', 'jkarta-lemabgww', 'nevada-product-7.jpg', 89000, 250000, 1, 2, 1, '2014-06-29 00:00:00'),
(8, 'NEVADA X008', '', 'jkarta-lemabgrrr', 'nevada-product-8.jpg', 88000, 250000, 1, 2, 1, '2014-06-29 00:00:00'),
(9, 'NEVADA X009', '', 'makan-sehari-full', 'nevada-product-9.jpg', 69000, 250000, 1, 0, 1, '2014-06-29 00:00:00'),
(10, 'NEVADA X010', '', 'jkarta-lemabgx', 'nevada-product-10.jpg', 99000, 250000, 1, 0, 1, '2014-06-29 00:00:00'),
(11, 'NEVADA X011', '', 'jkarta-lemabgaa', 'logo21.png', 99000, 0, 0, 0, 1, '2018-12-05 00:00:00'),
(12, 'NEVADA X012', '', 'jkarta-lemabgee', 'nevada-product-12.jpg', 89000, 250000, 1, 2, 1, '2014-06-29 00:00:00'),
(13, 'tas promo', '', 'tas-promo-akhir-tahun', 'tas4.jpg', 149000, 0, 2, 0, 1, '2014-06-29 00:00:00'),
(14, 'tas kulit b uaya', '', 'tas-kulit-buaya-ori', 'tas6.jpg', 129000, 0, 2, 0, 1, '2014-06-29 00:00:00'),
(15, 'tas wanita baru', '', 'tas-wanita-mewah', 'tas3.jpg', 119000, 0, 2, 0, 1, '2014-06-29 00:00:00'),
(16, 'tas diskon', '', 'tas-diskon-akhir-tahun', 'tas5.jpg', 149000, 0, 2, 0, 0, '2014-06-29 00:00:00'),
(17, 'ASYLUM 6466', '', 'makan-sehari-fulldddd', 'asylum-6466-254331-1-zoom.jpg', 199000, 0, 4, 0, 0, '2014-06-29 00:00:00'),
(18, 'ASYLUM 6566', '', 'makan-sehari-fulldfff', 'asylum-6556-654331-1-zoom.jpg', 209000, 0, 4, 0, 0, '2014-06-29 00:00:00'),
(19, 'ASYLUM 6565', '', 'jkarta-lemabgas', 'asylum-6565-554331-1-zoom.jpg', 169000, 0, 4, 0, 0, '2014-06-29 00:00:00'),
(20, 'ASYLUM 6576', '', 'makaxn-sehari-full', 'asylum-6576-454331-1-zoom.jpg', 179000, 0, 4, 0, 0, '2014-06-29 00:00:00'),
(21, 'ASYLUM 6608', '', 'jkarta-lemabgtry', 'asylum-6608-944331-1-zoom.jpg', 159000, 0, 4, 0, 0, '2014-06-29 00:00:00'),
(22, 'AWE 1675 ', '', 'makan-sehari-fulld', 'awesome-1675-819921-1-zoom.jpg', 177000, 0, 3, 0, 0, '2014-06-29 00:00:00'),
(23, 'AWE 1719', '', 'jkarta-lemabgas', 'awesome-1719-074331-1-zoom.jpg', 168000, 0, 3, 0, 0, '2014-06-29 00:00:00'),
(24, 'AWE 9964', '', 'madkan-sehari-full', 'awesome-9964-622051-1-zoom.jpg', 187000, 0, 3, 0, 0, '2014-06-29 00:00:00'),
(25, 'OCEAN PACIFIC 2044', '', 'makan-sehari-fullfhh', 'ocean-pacific-2044-500542-1-zoom.jpg', 229000, 0, 5, 0, 0, '2014-06-29 00:00:00'),
(26, 'OCEAN PACIFIC 5840', '', 'makan-sehari-fullgh', 'ocean-pacific-5840-506541-1-zoom.jpg', 219000, 0, 5, 0, 0, '2014-06-29 00:00:00'),
(27, 'WATCHOUT JEANS 3256', '', 'makan-sehari-fulldsfff', 'watchout-jeans-3256-476204-1-zoom.jpg', 239000, 0, 6, 0, 0, '2014-06-29 00:00:00'),
(28, 'WATCHOUT JEANS 7490', '', 'makan-sehari-fullfffff', 'watchout-jeans-7490-429011-1-zoom.jpg', 249000, 0, 6, 0, 0, '2014-06-29 00:00:00'),
(29, 'WATCHOUT JEANS 8856', '', 'makan-sehari-fullgghh', 'watchout-jeans-8856-756021-1-zoom.jpg', 213000, 0, 6, 0, 0, '2014-06-29 00:00:00'),
(30, 'SALT P0072', '', 'baju-pria-kemeja', 'salt-n-pepper-0072-390701-1.jpg', 190000, 0, 7, 0, 0, '2014-07-05 00:00:00'),
(31, 'SALT P0532', '', 'beli-baju-nyadong', 'salt-n-pepper-0532-477611-1.jpg', 200000, 0, 7, 0, 0, '2014-07-05 00:00:00'),
(32, 'SALT P2339', '', 'kemeja-masa-kini', 'salt-n-pepper-2339-332621-1.jpg', 167000, 0, 7, 0, 0, '2018-12-05 00:00:00'),
(33, 'SALT P3621', '', 'baju-pria-murah', '16ds-2607-395242-1-zoom.jpg', 134000, 0, 7, 0, 0, '2014-07-05 00:00:00'),
(34, 'SALT P3646', '', 'murah-baju-kemeja', 'salt-n-pepper-3646-918642-1.jpg', 135000, 0, 7, 0, 0, '2014-07-05 00:00:00'),
(35, 'SALT P3717', '', 'kemeja_potong', 'HS-R196-gold-color-background-wall-panel_jpg_350x35011.jpg', 500000, 0, 7, 0, 0, '2018-12-05 00:00:00'),
(36, 'SALT P3720', '', 'beli-baju-kemeja', 'salt-n-pepper-3720-312051-1.jpg', 154000, 0, 0, 0, 0, '2018-12-05 00:00:00'),
(37, 'SALT P5524', '', 'baju-kemeja-keren', '', 165000, 0, 0, 0, 0, '2018-12-05 00:00:00'),
(38, 'SALT P6261', '', 'kemeja-pria', 'logo20.png', 190000, 0, 0, 0, 0, '2018-12-05 00:00:00'),
(39, 'SALT P8889', '', 'baju-distro-keren', 'logo19.png', 178000, 0, 0, 0, 0, '2018-12-05 00:00:00'),
(40, 'SALT P9782', '', 'kemeja-baju-murah', 'salt-n-pepper-9782-211841-1.jpg', 156000, 0, 0, 0, 0, '2018-12-05 00:00:00'),
(41, 'NEVADA X002', '', 'jkarta-lemabgas', '', 888, 250000, 0, 0, 0, '2018-12-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ms_tshirt_size`
--

CREATE TABLE `ms_tshirt_size` (
  `tshirt_size_id` int(11) NOT NULL,
  `tshirt_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `nama_pengirm` varchar(35) NOT NULL,
  `no_invoice` varchar(15) NOT NULL,
  `jmlh_transper` varchar(15) NOT NULL,
  `gambar_transper` varchar(259) NOT NULL,
  `tanggal_transper` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `nama_pengirm`, `no_invoice`, `jmlh_transper`, `gambar_transper`, `tanggal_transper`) VALUES
(7, 'romadon', 'BABASTUDIO/114', '200000', 'logo3.png', '2018-11-28 18:33:11'),
(8, 'dffd', '3434', '233333', 'logo4.png', '2018-12-04 18:09:00'),
(9, 'jaka', '345555', '200000', 'logo6.png', '2018-12-04 18:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `propinsi`
--

CREATE TABLE `propinsi` (
  `id_propinsi` int(11) NOT NULL,
  `nama_propinsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propinsi`
--

INSERT INTO `propinsi` (`id_propinsi`, `nama_propinsi`) VALUES
(11, 'Nanggroe Aceh Darussalaam'),
(12, 'Sumatra Utara'),
(13, 'Sumatra Barat'),
(14, 'Riau'),
(15, 'Jambi'),
(16, 'Sumatra Selatan'),
(17, 'Bengkulu'),
(18, 'Lampung'),
(19, 'Kep. Bangka Belitung'),
(21, 'Kep. Riau'),
(31, 'DKI Jakarta'),
(32, 'Jawa Barat'),
(33, 'Jawa Tengah'),
(34, 'DI Yogyakarta'),
(35, 'Jawa Timur'),
(36, 'Banten'),
(51, 'Bali'),
(52, 'Nusa Tenggara Barat'),
(53, 'Nusa Tenggara Timur'),
(61, 'Kalimantan Barat'),
(62, 'Kalimantan Tengah'),
(63, 'Kalimantan Selatan'),
(64, 'Kalimantan Timur'),
(71, 'Sulawesi Utara'),
(72, 'Sulawesi Tengah'),
(73, 'Sulawesi Selatan'),
(74, 'Sulawesi Tenggara'),
(75, 'Gorontalo'),
(81, 'Maluku'),
(82, 'Maluku Utara'),
(91, 'Papua'),
(92, 'Irian Jaya Barat');

-- --------------------------------------------------------

--
-- Table structure for table `rb_kota`
--

CREATE TABLE `rb_kota` (
  `kota_id` int(11) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_kota`
--

INSERT INTO `rb_kota` (`kota_id`, `provinsi_id`, `nama_kota`) VALUES
(17, 1, 'Badung'),
(32, 1, 'Bangli'),
(94, 1, 'Buleleng'),
(114, 1, 'Denpasar'),
(128, 1, 'Gianyar'),
(161, 1, 'Jembrana'),
(170, 1, 'Karangasem'),
(197, 1, 'Klungkung'),
(447, 1, 'Tabanan'),
(27, 2, 'Bangka'),
(28, 2, 'Bangka Barat'),
(29, 2, 'Bangka Selatan'),
(30, 2, 'Bangka Tengah'),
(56, 2, 'Belitung'),
(57, 2, 'Belitung Timur'),
(334, 2, 'Pangkal Pinang'),
(106, 3, 'Cilegon'),
(232, 3, 'Lebak'),
(331, 3, 'Pandeglang'),
(402, 3, 'Serang'),
(403, 3, 'Serang'),
(455, 3, 'Tangerang'),
(456, 3, 'Tangerang'),
(457, 3, 'Tangerang Selatan'),
(62, 4, 'Bengkulu'),
(63, 4, 'Bengkulu Selatan'),
(64, 4, 'Bengkulu Tengah'),
(65, 4, 'Bengkulu Utara'),
(175, 4, 'Kaur'),
(183, 4, 'Kepahiang'),
(233, 4, 'Lebong'),
(294, 4, 'Muko Muko'),
(379, 4, 'Rejang Lebong'),
(397, 4, 'Seluma'),
(39, 5, 'Bantul'),
(135, 5, 'Gunung Kidul'),
(210, 5, 'Kulon Progo'),
(419, 5, 'Sleman'),
(501, 5, 'Yogyakarta'),
(151, 6, 'Jakarta Barat'),
(152, 6, 'Jakarta Pusat'),
(153, 6, 'Jakarta Selatan'),
(154, 6, 'Jakarta Timur'),
(155, 6, 'Jakarta Utara'),
(189, 6, 'Kepulauan Seribu'),
(77, 7, 'Boalemo'),
(88, 7, 'Bone Bolango'),
(129, 7, 'Gorontalo'),
(130, 7, 'Gorontalo'),
(131, 7, 'Gorontalo Utara'),
(361, 7, 'Pohuwato'),
(50, 8, 'Batang Hari'),
(97, 8, 'Bungo'),
(156, 8, 'Jambi'),
(194, 8, 'Kerinci'),
(280, 8, 'Merangin'),
(293, 8, 'Muaro Jambi'),
(393, 8, 'Sarolangun'),
(442, 8, 'Sungaipenuh'),
(460, 8, 'Tanjung Jabung Barat'),
(461, 8, 'Tanjung Jabung Timur'),
(471, 8, 'Tebo'),
(22, 9, 'Bandung'),
(23, 9, 'Bandung'),
(24, 9, 'Bandung Barat'),
(34, 9, 'Banjar'),
(54, 9, 'Bekasi'),
(55, 9, 'Bekasi'),
(78, 9, 'Bogor'),
(79, 9, 'Bogor'),
(103, 9, 'Ciamis'),
(104, 9, 'Cianjur'),
(107, 9, 'Cimahi'),
(108, 9, 'Cirebon'),
(109, 9, 'Cirebon'),
(115, 9, 'Depok'),
(126, 9, 'Garut'),
(149, 9, 'Indramayu'),
(171, 9, 'Karawang'),
(211, 9, 'Kuningan'),
(252, 9, 'Majalengka'),
(332, 9, 'Pangandaran'),
(376, 9, 'Purwakarta'),
(428, 9, 'Subang'),
(430, 9, 'Sukabumi'),
(431, 9, 'Sukabumi'),
(440, 9, 'Sumedang'),
(468, 9, 'Tasikmalaya'),
(469, 9, 'Tasikmalaya'),
(37, 10, 'Banjarnegara'),
(41, 10, 'Banyumas'),
(49, 10, 'Batang'),
(76, 10, 'Blora'),
(91, 10, 'Boyolali'),
(92, 10, 'Brebes'),
(105, 10, 'Cilacap'),
(113, 10, 'Demak'),
(134, 10, 'Grobogan'),
(163, 10, 'Jepara'),
(169, 10, 'Karanganyar'),
(177, 10, 'Kebumen'),
(181, 10, 'Kendal'),
(196, 10, 'Klaten'),
(209, 10, 'Kudus'),
(249, 10, 'Magelang'),
(250, 10, 'Magelang'),
(344, 10, 'Pati'),
(348, 10, 'Pekalongan'),
(349, 10, 'Pekalongan'),
(352, 10, 'Pemalang'),
(375, 10, 'Purbalingga'),
(377, 10, 'Purworejo'),
(380, 10, 'Rembang'),
(386, 10, 'Salatiga'),
(398, 10, 'Semarang'),
(399, 10, 'Semarang'),
(427, 10, 'Sragen'),
(433, 10, 'Sukoharjo'),
(445, 10, 'Surakarta (Solo)'),
(472, 10, 'Tegal'),
(473, 10, 'Tegal'),
(476, 10, 'Temanggung'),
(497, 10, 'Wonogiri'),
(498, 10, 'Wonosobo'),
(31, 11, 'Bangkalan'),
(42, 11, 'Banyuwangi'),
(51, 11, 'Batu'),
(74, 11, 'Blitar'),
(75, 11, 'Blitar'),
(80, 11, 'Bojonegoro'),
(86, 11, 'Bondowoso'),
(133, 11, 'Gresik'),
(160, 11, 'Jember'),
(164, 11, 'Jombang'),
(178, 11, 'Kediri'),
(179, 11, 'Kediri'),
(222, 11, 'Lamongan'),
(243, 11, 'Lumajang'),
(247, 11, 'Madiun'),
(248, 11, 'Madiun'),
(251, 11, 'Magetan'),
(256, 11, 'Malang'),
(255, 11, 'Malang'),
(289, 11, 'Mojokerto'),
(290, 11, 'Mojokerto'),
(305, 11, 'Nganjuk'),
(306, 11, 'Ngawi'),
(317, 11, 'Pacitan'),
(330, 11, 'Pamekasan'),
(342, 11, 'Pasuruan'),
(343, 11, 'Pasuruan'),
(363, 11, 'Ponorogo'),
(369, 11, 'Probolinggo'),
(370, 11, 'Probolinggo'),
(390, 11, 'Sampang'),
(409, 11, 'Sidoarjo'),
(418, 11, 'Situbondo'),
(441, 11, 'Sumenep'),
(444, 11, 'Surabaya'),
(487, 11, 'Trenggalek'),
(489, 11, 'Tuban'),
(492, 11, 'Tulungagung'),
(61, 12, 'Bengkayang'),
(168, 12, 'Kapuas Hulu'),
(176, 12, 'Kayong Utara'),
(195, 12, 'Ketapang'),
(208, 12, 'Kubu Raya'),
(228, 12, 'Landak'),
(279, 12, 'Melawi'),
(364, 12, 'Pontianak'),
(365, 12, 'Pontianak'),
(388, 12, 'Sambas'),
(391, 12, 'Sanggau'),
(395, 12, 'Sekadau'),
(415, 12, 'Singkawang'),
(417, 12, 'Sintang'),
(18, 13, 'Balangan'),
(33, 13, 'Banjar'),
(35, 13, 'Banjarbaru'),
(36, 13, 'Banjarmasin'),
(43, 13, 'Barito Kuala'),
(143, 13, 'Hulu Sungai Selatan'),
(144, 13, 'Hulu Sungai Tengah'),
(145, 13, 'Hulu Sungai Utara'),
(203, 13, 'Kotabaru'),
(446, 13, 'Tabalong'),
(452, 13, 'Tanah Bumbu'),
(454, 13, 'Tanah Laut'),
(466, 13, 'Tapin'),
(44, 14, 'Barito Selatan'),
(45, 14, 'Barito Timur'),
(46, 14, 'Barito Utara'),
(136, 14, 'Gunung Mas'),
(167, 14, 'Kapuas'),
(174, 14, 'Katingan'),
(205, 14, 'Kotawaringin Barat'),
(206, 14, 'Kotawaringin Timur'),
(221, 14, 'Lamandau'),
(296, 14, 'Murung Raya'),
(326, 14, 'Palangka Raya'),
(371, 14, 'Pulang Pisau'),
(405, 14, 'Seruyan'),
(432, 14, 'Sukamara'),
(19, 15, 'Balikpapan'),
(66, 15, 'Berau'),
(89, 15, 'Bontang'),
(214, 15, 'Kutai Barat'),
(215, 15, 'Kutai Kartanegara'),
(216, 15, 'Kutai Timur'),
(341, 15, 'Paser'),
(354, 15, 'Penajam Paser Utara'),
(387, 15, 'Samarinda'),
(96, 16, 'Bulungan (Bulongan)'),
(257, 16, 'Malinau'),
(311, 16, 'Nunukan'),
(450, 16, 'Tana Tidung'),
(467, 16, 'Tarakan'),
(48, 17, 'Batam'),
(71, 17, 'Bintan'),
(172, 17, 'Karimun'),
(184, 17, 'Kepulauan Anambas'),
(237, 17, 'Lingga'),
(302, 17, 'Natuna'),
(462, 17, 'Tanjung Pinang'),
(21, 18, 'Bandar Lampung'),
(223, 18, 'Lampung Barat'),
(224, 18, 'Lampung Selatan'),
(225, 18, 'Lampung Tengah'),
(226, 18, 'Lampung Timur'),
(227, 18, 'Lampung Utara'),
(282, 18, 'Mesuji'),
(283, 18, 'Metro'),
(355, 18, 'Pesawaran'),
(356, 18, 'Pesisir Barat'),
(368, 18, 'Pringsewu'),
(458, 18, 'Tanggamus'),
(490, 18, 'Tulang Bawang'),
(491, 18, 'Tulang Bawang Barat'),
(496, 18, 'Way Kanan'),
(14, 19, 'Ambon'),
(99, 19, 'Buru'),
(100, 19, 'Buru Selatan'),
(185, 19, 'Kepulauan Aru'),
(258, 19, 'Maluku Barat Daya'),
(259, 19, 'Maluku Tengah'),
(260, 19, 'Maluku Tenggara'),
(261, 19, 'Maluku Tenggara Barat'),
(400, 19, 'Seram Bagian Barat'),
(401, 19, 'Seram Bagian Timur'),
(488, 19, 'Tual'),
(138, 20, 'Halmahera Barat'),
(139, 20, 'Halmahera Selatan'),
(140, 20, 'Halmahera Tengah'),
(141, 20, 'Halmahera Timur'),
(142, 20, 'Halmahera Utara'),
(191, 20, 'Kepulauan Sula'),
(372, 20, 'Pulau Morotai'),
(477, 20, 'Ternate'),
(478, 20, 'Tidore Kepulauan'),
(1, 21, 'Aceh Barat'),
(2, 21, 'Aceh Barat Daya'),
(3, 21, 'Aceh Besar'),
(4, 21, 'Aceh Jaya'),
(5, 21, 'Aceh Selatan'),
(6, 21, 'Aceh Singkil'),
(7, 21, 'Aceh Tamiang'),
(8, 21, 'Aceh Tengah'),
(9, 21, 'Aceh Tenggara'),
(10, 21, 'Aceh Timur'),
(11, 21, 'Aceh Utara'),
(20, 21, 'Banda Aceh'),
(59, 21, 'Bener Meriah'),
(72, 21, 'Bireuen'),
(127, 21, 'Gayo Lues'),
(230, 21, 'Langsa'),
(235, 21, 'Lhokseumawe'),
(300, 21, 'Nagan Raya'),
(358, 21, 'Pidie'),
(359, 21, 'Pidie Jaya'),
(384, 21, 'Sabang'),
(414, 21, 'Simeulue'),
(429, 21, 'Subulussalam'),
(68, 22, 'Bima'),
(69, 22, 'Bima'),
(118, 22, 'Dompu'),
(238, 22, 'Lombok Barat'),
(239, 22, 'Lombok Tengah'),
(240, 22, 'Lombok Timur'),
(241, 22, 'Lombok Utara'),
(276, 22, 'Mataram'),
(438, 22, 'Sumbawa'),
(439, 22, 'Sumbawa Barat'),
(13, 23, 'Alor'),
(58, 23, 'Belu'),
(122, 23, 'Ende'),
(125, 23, 'Flores Timur'),
(212, 23, 'Kupang'),
(213, 23, 'Kupang'),
(234, 23, 'Lembata'),
(269, 23, 'Manggarai'),
(270, 23, 'Manggarai Barat'),
(271, 23, 'Manggarai Timur'),
(301, 23, 'Nagekeo'),
(304, 23, 'Ngada'),
(383, 23, 'Rote Ndao'),
(385, 23, 'Sabu Raijua'),
(412, 23, 'Sikka'),
(434, 23, 'Sumba Barat'),
(435, 23, 'Sumba Barat Daya'),
(436, 23, 'Sumba Tengah'),
(437, 23, 'Sumba Timur'),
(479, 23, 'Timor Tengah Selatan'),
(480, 23, 'Timor Tengah Utara'),
(16, 24, 'Asmat'),
(67, 24, 'Biak Numfor'),
(90, 24, 'Boven Digoel'),
(111, 24, 'Deiyai (Deliyai)'),
(117, 24, 'Dogiyai'),
(150, 24, 'Intan Jaya'),
(157, 24, 'Jayapura'),
(158, 24, 'Jayapura'),
(159, 24, 'Jayawijaya'),
(180, 24, 'Keerom'),
(193, 24, 'Kepulauan Yapen (Yapen Waropen)'),
(231, 24, 'Lanny Jaya'),
(263, 24, 'Mamberamo Raya'),
(264, 24, 'Mamberamo Tengah'),
(274, 24, 'Mappi'),
(281, 24, 'Merauke'),
(284, 24, 'Mimika'),
(299, 24, 'Nabire'),
(303, 24, 'Nduga'),
(335, 24, 'Paniai'),
(347, 24, 'Pegunungan Bintang'),
(373, 24, 'Puncak'),
(374, 24, 'Puncak Jaya'),
(392, 24, 'Sarmi'),
(443, 24, 'Supiori'),
(484, 24, 'Tolikara'),
(495, 24, 'Waropen'),
(499, 24, 'Yahukimo'),
(500, 24, 'Yalimo'),
(124, 25, 'Fakfak'),
(165, 25, 'Kaimana'),
(272, 25, 'Manokwari'),
(273, 25, 'Manokwari Selatan'),
(277, 25, 'Maybrat'),
(346, 25, 'Pegunungan Arfak'),
(378, 25, 'Raja Ampat'),
(424, 25, 'Sorong'),
(425, 25, 'Sorong'),
(426, 25, 'Sorong Selatan'),
(449, 25, 'Tambrauw'),
(474, 25, 'Teluk Bintuni'),
(475, 25, 'Teluk Wondama'),
(60, 26, 'Bengkalis'),
(120, 26, 'Dumai'),
(147, 26, 'Indragiri Hilir'),
(148, 26, 'Indragiri Hulu'),
(166, 26, 'Kampar'),
(187, 26, 'Kepulauan Meranti'),
(207, 26, 'Kuantan Singingi'),
(350, 26, 'Pekanbaru'),
(351, 26, 'Pelalawan'),
(381, 26, 'Rokan Hilir'),
(382, 26, 'Rokan Hulu'),
(406, 26, 'Siak'),
(253, 27, 'Majene'),
(262, 27, 'Mamasa'),
(265, 27, 'Mamuju'),
(266, 27, 'Mamuju Utara'),
(362, 27, 'Polewali Mandar'),
(38, 28, 'Bantaeng'),
(47, 28, 'Barru'),
(87, 28, 'Bone'),
(95, 28, 'Bulukumba'),
(123, 28, 'Enrekang'),
(132, 28, 'Gowa'),
(162, 28, 'Jeneponto'),
(244, 28, 'Luwu'),
(245, 28, 'Luwu Timur'),
(246, 28, 'Luwu Utara'),
(254, 28, 'Makassar'),
(275, 28, 'Maros'),
(328, 28, 'Palopo'),
(333, 28, 'Pangkajene Kepulauan'),
(336, 28, 'Parepare'),
(360, 28, 'Pinrang'),
(396, 28, 'Selayar (Kepulauan Selayar)'),
(408, 28, 'Sidenreng Rappang/Rapang'),
(416, 28, 'Sinjai'),
(423, 28, 'Soppeng'),
(448, 28, 'Takalar'),
(451, 28, 'Tana Toraja'),
(486, 28, 'Toraja Utara'),
(493, 28, 'Wajo'),
(25, 29, 'Banggai'),
(26, 29, 'Banggai Kepulauan'),
(98, 29, 'Buol'),
(119, 29, 'Donggala'),
(291, 29, 'Morowali'),
(329, 29, 'Palu'),
(338, 29, 'Parigi Moutong'),
(366, 29, 'Poso'),
(410, 29, 'Sigi'),
(482, 29, 'Tojo Una-Una'),
(483, 29, 'Toli-Toli'),
(53, 30, 'Bau-Bau'),
(85, 30, 'Bombana'),
(101, 30, 'Buton'),
(102, 30, 'Buton Utara'),
(182, 30, 'Kendari'),
(198, 30, 'Kolaka'),
(199, 30, 'Kolaka Utara'),
(200, 30, 'Konawe'),
(201, 30, 'Konawe Selatan'),
(202, 30, 'Konawe Utara'),
(295, 30, 'Muna'),
(494, 30, 'Wakatobi'),
(73, 31, 'Bitung'),
(81, 31, 'Bolaang Mongondow (Bolmong)'),
(82, 31, 'Bolaang Mongondow Selatan'),
(83, 31, 'Bolaang Mongondow Timur'),
(84, 31, 'Bolaang Mongondow Utara'),
(188, 31, 'Kepulauan Sangihe'),
(190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)'),
(192, 31, 'Kepulauan Talaud'),
(204, 31, 'Kotamobagu'),
(267, 31, 'Manado'),
(285, 31, 'Minahasa'),
(286, 31, 'Minahasa Selatan'),
(287, 31, 'Minahasa Tenggara'),
(288, 31, 'Minahasa Utara'),
(485, 31, 'Tomohon'),
(12, 32, 'Agam'),
(93, 32, 'Bukittinggi'),
(116, 32, 'Dharmasraya'),
(186, 32, 'Kepulauan Mentawai'),
(236, 32, 'Lima Puluh Koto/Kota'),
(318, 32, 'Padang'),
(321, 32, 'Padang Panjang'),
(322, 32, 'Padang Pariaman'),
(337, 32, 'Pariaman'),
(339, 32, 'Pasaman'),
(340, 32, 'Pasaman Barat'),
(345, 32, 'Payakumbuh'),
(357, 32, 'Pesisir Selatan'),
(394, 32, 'Sawah Lunto'),
(411, 32, 'Sijunjung (Sawah Lunto Sijunjung)'),
(420, 32, 'Solok'),
(421, 32, 'Solok'),
(422, 32, 'Solok Selatan'),
(453, 32, 'Tanah Datar'),
(40, 33, 'Banyuasin'),
(121, 33, 'Empat Lawang'),
(220, 33, 'Lahat'),
(242, 33, 'Lubuk Linggau'),
(292, 33, 'Muara Enim'),
(297, 33, 'Musi Banyuasin'),
(298, 33, 'Musi Rawas'),
(312, 33, 'Ogan Ilir'),
(313, 33, 'Ogan Komering Ilir'),
(314, 33, 'Ogan Komering Ulu'),
(315, 33, 'Ogan Komering Ulu Selatan'),
(316, 33, 'Ogan Komering Ulu Timur'),
(324, 33, 'Pagar Alam'),
(327, 33, 'Palembang'),
(367, 33, 'Prabumulih'),
(15, 34, 'Asahan'),
(52, 34, 'Batu Bara'),
(70, 34, 'Binjai'),
(110, 34, 'Dairi'),
(112, 34, 'Deli Serdang'),
(137, 34, 'Gunungsitoli'),
(146, 34, 'Humbang Hasundutan'),
(173, 34, 'Karo'),
(217, 34, 'Labuhan Batu'),
(218, 34, 'Labuhan Batu Selatan'),
(219, 34, 'Labuhan Batu Utara'),
(229, 34, 'Langkat'),
(268, 34, 'Mandailing Natal'),
(278, 34, 'Medan'),
(307, 34, 'Nias'),
(308, 34, 'Nias Barat'),
(309, 34, 'Nias Selatan'),
(310, 34, 'Nias Utara'),
(319, 34, 'Padang Lawas'),
(320, 34, 'Padang Lawas Utara'),
(323, 34, 'Padang Sidempuan'),
(325, 34, 'Pakpak Bharat'),
(353, 34, 'Pematang Siantar'),
(389, 34, 'Samosir'),
(404, 34, 'Serdang Bedagai'),
(407, 34, 'Sibolga'),
(413, 34, 'Simalungun'),
(459, 34, 'Tanjung Balai'),
(463, 34, 'Tapanuli Selatan'),
(464, 34, 'Tapanuli Tengah'),
(465, 34, 'Tapanuli Utara'),
(470, 34, 'Tebing Tinggi'),
(481, 34, 'Toba Samosir');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `slidergambar` varchar(240) NOT NULL,
  `alt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` text NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `tanggal`, `status`, `member_id`) VALUES
(7, '2014-09-03', 'belajar ajax seru lo', 2),
(5, '2014-09-03', 'tes lagi ah', 1),
(8, '2014-09-03', 'belajar ajax seru lo', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_order`
--

CREATE TABLE `tbl_detail_order` (
  `id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `barang` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total_harga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_order`
--

INSERT INTO `tbl_detail_order` (`id`, `pesanan_id`, `barang`, `qty`, `total_harga`) VALUES
(74, 126, 31, 1, '200000'),
(75, 127, 31, 1, '200000'),
(76, 128, 31, 1, '200000'),
(77, 129, 31, 2, '200000'),
(78, 130, 32, 1, '167000');

-- --------------------------------------------------------

--
-- Table structure for table `tr_order`
--

CREATE TABLE `tr_order` (
  `order_id` int(11) NOT NULL,
  `customer_username` varchar(25) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_order`
--

INSERT INTO `tr_order` (`order_id`, `customer_username`, `order_date`) VALUES
(126, 'romadon', '2018-12-05'),
(127, 'babastudio', '2018-12-05'),
(128, 'anita', '2018-12-19'),
(129, 'babastudio', '2018-12-19'),
(130, 'babastudio', '2018-12-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `ms_brand`
--
ALTER TABLE `ms_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `ms_customer`
--
ALTER TABLE `ms_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `ms_size`
--
ALTER TABLE `ms_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `ms_tshirt`
--
ALTER TABLE `ms_tshirt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_tshirt_size`
--
ALTER TABLE `ms_tshirt_size`
  ADD PRIMARY KEY (`tshirt_size_id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `propinsi`
--
ALTER TABLE `propinsi`
  ADD PRIMARY KEY (`id_propinsi`);

--
-- Indexes for table `rb_kota`
--
ALTER TABLE `rb_kota`
  ADD PRIMARY KEY (`kota_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_order`
--
ALTER TABLE `tr_order`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id_kabupaten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ms_brand`
--
ALTER TABLE `ms_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ms_customer`
--
ALTER TABLE `ms_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `ms_size`
--
ALTER TABLE `ms_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ms_tshirt`
--
ALTER TABLE `ms_tshirt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `ms_tshirt_size`
--
ALTER TABLE `ms_tshirt_size`
  MODIFY `tshirt_size_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `propinsi`
--
ALTER TABLE `propinsi`
  MODIFY `id_propinsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `rb_kota`
--
ALTER TABLE `rb_kota`
  MODIFY `kota_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `tr_order`
--
ALTER TABLE `tr_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
