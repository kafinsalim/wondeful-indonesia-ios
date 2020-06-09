//
//  Destinasi.swift
//  TrySwiftUI
//
//  Created by Admin on 07/06/20.
//  Copyright © 2020 Kafin Code. All rights reserved.
//

import SwiftUI

struct Wonder : Identifiable {
    var id: Int
    var name: String
    var location: String
    var branding: String
    var description: String = "Belum ada deskripsi"
    var hasVideo: Bool = false
    var coordinate: String = ""
    
    var imageName: String { return name }
    var thumbnailName: String { return name + " Thumb" }
}

//#if DEBUG
let wonderfulData = [
    Wonder(id: 0, name: "Danau Toba", location: "Medan", branding: "Colorful Medan", description: """
Medan merupakan salah satu kota besar yang ada di Indonesia. Pemilihan colorful Medan ini tentu mengacu pada keberagaman yang ada di Kota Medan.

Di kota ini terdapat keberagaman suku, budaya, kuliner, dan kekayaan alam yang tentunya dapat menjadi daya tarik wisata.

Branding destinasi wisata untuk Kota Medan ini sebelumnya sudah pernah ada, yaitu ‘This Is Medan’. Namun branding tersebut kurang dapat memaksimalkan potensi wisata yang ada di Medan.\nPemilihan Colorful Medan ini juga dengan pertimbangan Kota Medan sebagai icon dari Sumatera Utara. Dengan keberagaman yang dimilikinya, Kota Medan layaknya sebuah miniature dari bangsa Indonesia.

Oleh karena itu branding Colorful Medan ini dirasa sangat tepat menggambarkan keunikan yang dimiliki Kota Medan.
""", hasVideo: false, coordinate: "123.2, -1.23"),
    Wonder(id: 1, name: "Pulau Bawah", location: "Kepulauan Riau", branding: "Wonderful Riau Island", description: """
Kepulauan Riau sebelumnya sudah memiliki wakilnya dalam promosi pariwisata Indonesia, yaitu Kepri. Branding pariwisata yang diberikan untuk Kepri adalah Wonderful Kepri.

Namun karena penggunaan akronim Kepri dianggap agak sulit bagi wisatawan untuk mengenalnya, maka branding tersebut kemudian diganti dengan Wonderful Riau Island.

Branding Wonderful Riau Island bercermin dari segala potensi yang dimiliki Kepulauan Riau, termasuk di dalamnya Kepri dan Bintan.

Kepri dan Bintan tentunya sudah banyak dikenal orang wisatawan mancanegara mengingat promosi wisata besar-besaran juga telah dilakukan untuk kedua destinasi tersebut.

Pemilihan Wonderful Riau Island ini diharapkan dapat menggambarkan bagaimana menakjubkannya kebudayaan melayu serta kehidupan masyarakat Kepualauan Riau yang dinamis.
""",hasVideo: false, coordinate: "123.2, -1.23"),
    Wonder(id: 2, name: "Monumen Nasional", location: "DKI Jakarta", branding: "Enjoy Jakarta", description: """
Jakarta sebagai ibukota negara Indonesia, tentu memiliki peran yangs sangat vital dalam pergerakan pemerintahan maupun perekonomian negara.

Melihat peran dan potensi yang dimilikinya, tentu Kota Jakarta juga sepatutnya turut ambil bagian dalam promosi pariwisata Indonesia.

Dengan mengusung Jakarta sebagai kota metropolitan di Indonesia, branding Enjoy Jakarta dirasa dapat merepresentasikan bagaimana pariwisata di Jakarta.

Sebagai simbol ibukota negara, Kota Jakarta sangat berpengaruh bagi pertumbuhan ekonomi negara.

Mungkin Kota Jakarta memang tidak memiliki kekayaan alam seperti daerah lainnya, tetapi dengan citra yang sudah dimilikinya Jakarta tentu dapat bersaing dalam mempromosikan pariwisatanya.

Pariwisata tidak melulu tentang alam dan budaya, tetapi tentang kota dengan hingar-bingar metropolitannya dan gemerlapnya kehidupan di Jakarta.
""", hasVideo: false, coordinate: "123.2, -1.23"),
    Wonder(id: 3, name: "Gedung Sate", location: "Bandung", branding: "Stunning Bandung", description: """
Hampir sama seperti Jakarta, Bandung juga merupakan salah satu kota besar dengan keterbatasan kekayaan alam yang dapat dijual sebagai pariwisata.

Pemilihan branding Stunning Bandung ini merepresentasikan bagaimana kekayaan budaya, fashion, dan kuliner yang ada di Bandung. Berbeda dengan daeah lainnya di Jawa, Kota Bandung layaknya icon tanah sunda dengan segala pesonanya.

Branding destinasi wisata di Bandung ini diharapkan dapat memberikan kesan positif dan mudah diingat bagi masyarakat setempat maupun wisatawan.

Stunning yang mengisyaratkan ‘mempesona’ memiliki keselarasan dengan kebudayaan dan keramahan budaya sunda. Kota Bandung bagaikan simbol dari kekayaan yang dimiliki Jawa Barat.
""", hasVideo: false, coordinate: "123.2, -1.23"),
    Wonder(id: 4, name: "Kesenian Jawa", location: "Jogjakarta", branding: "Java Culturan Wonder", description: """
Terpilihnya pemberian branding Java Cultural Wonder kepada Kota Yogyakarta, Solo, dan Semarang merupakan keberlanjutan dari pembentukan program wisata joglosemar (Jogja, Solo, Semarang).

Nama Java dalam branding tersebut karena Jogja dan Jawa Tengah merupakan representasi dari kebudayaan Jawa. Selain itu, kata java atau jawa memang sudah sangat terkenal di mata mancanegara sehingga dipillih dalam branding promosi pariwisata ini.

Branding destinasi wisata untuk joglosemar ini diharapkan dapat terus meningkatkan pariwisata di Jawa Tengah, khususnya ketiga daerah tersebut.

Branding Java Cultural Wonder tentu disesuaikan dengan adanya budaya jawa yang kental di wilayah Jawa Tengah. Kearifan budaya jawa memang dianggap lebih cocok menggambarkan identitas jawa.

Meskipun memang di Jawa Tengah juga kaya akan alam dan kulinernya.
""", hasVideo: false, coordinate: "123.2, -1.23"),
    Wonder(id: 5, name: "Taman Nasional Baluran", location: "Banyuwangi", branding: "Majestic Banyuwangi", description: """
Banyuwangi sangat terkenal dengan ‘the sunrise of java’ karena memang matahari terbit pertama kali di Pulau Jawa adalah di Banyuwangi ini.

Banyuwangi memiliki kekayaan akan alam dan budayanya, khususnya akan tarian tradisonalnya. Pemilihan majestic ini tentu bukan sembarangan asal pilih.

Majestic yang berarti kemewahan atau keagungan menggambarkan bagaimana keberagaman destinasi wisata yang dimiliki Banyuwangi.

Alam Banyuwangi tidak perlu diragukan lagi, deratan pegunungan, pantai, sampai taman nasional baluran ada di Banyuwangi. Untuk budaya, khususnya seni tari ada Tari Barong dan Gandrung yang cukup terkenal di Banyuwangi.

Sedangkan kuliner tentu banyak makanan tradisional yang dimiliki Banyuwangi seperti daerah lainnya di Indonesia.

Dengan demikian branding destinasi wisata bagi Banyuwangi ini memang dianggap paling sesuai dan cocok dengan identitas yang dimiliki Banyuwangi.
""", hasVideo: false, coordinate: "123.2, -1.23"),
    Wonder(id: 6, name: "Danau Beratan", location: "Bali", branding: "Bali the Island of Gods", description: """
Bali memang tak hentinya memberikan nafas segar untuk Indonesia dari keindahan wisatanya. Pulau Dewata Bali sangat terkenal dengan deratan pantainya yang begitu menakjubkan.

Kombinasi antara moderniasi dan tradisi di Bali berhasil melahirkan sebuah kekuatan tersendiri bagi Bali. Tentunya adanya modernisasi ini tanpa menghilangkan budaya yang ada di Bali.

Branding Bali the Island of Gods rasanya sudah cukup jelas menggambarkan bagaimana keindahan yang dimiliki Bali. Pemberian branding destinasi wisata ini sesuai dengan julukan Pulau Dewata Bali layaknya pulau para dewa dengan segala keindahannya.

Selain itu, branding yang dimiliki Bali ini juga memiliki filosofi tersendiri, yaitu ketuhanan, kebudayaan, keindahan, keramahtamahan, dan juga keharmonisan.
""", hasVideo: false, coordinate: "123.2, -1.23"),
    Wonder(id: 7, name: "Gunung Rinjani", location: "Lombok", branding: "Friendly Lombok", description: """
Lombok merupakan salah satu destinasi wisata di Indonesia yang memiliki predikat khusus bagi wisatawan, khususnya bagi wisawatan muslim.

Julukan sebagai pulau seribu masjid cukup menegaskan budaya muslim yang ada di Pulau Lombok. Di luar itu semua, Lombok memang kekayaan alam yang luar bisa.

Pantai dengan pasir putih yang eksotis dan gagahnya Gunung Rinjani menandakan pariwisata di Lombok adalah salah satu yang terbaik di Indonesia.

Branding destinasi wisata bagi Lombok juga dipilih berdasarkan keunikan dan ciri khas yang dimiliki Lombok. Berbagai fasilitas lengkap dan keramahan masyarakat Lombok sepertinya memang paling memiliki nilai jual yang tinggi.

Penggunaan kata friendly merupakan penggambaran dari dua hal tersebut yang membuat Lombok nyaman untuk dikunjungi wisatawan.
""", hasVideo: false, coordinate: "123.2, -1.23"),
    Wonder(id: 8, name: "Taman Laut Taka Bonerate", location: "Makassar", branding: "Eplore Makassar", description: """
Makassar sebagai salah satu kota besar di Indonesia merupakan tujuan destinasi andalan di Pulau Sulawesi. Kekayaan alam, sejarah, kuliner, dan budayanya menjadi nilai lebih di mata wisatawan untuk datang ke Makassar.

Selain sebagai tujuan destinasi wisata, Makassar juga merupakan tempat persinggahan bagi para wisatawan yang akan menuju ke daerah di Pulau Sulawesi dan Papua.

Kesiapan dari segala aspek membuat Makassar dijadikan sebagai salah satu destinasi wisata andalan dari Pulau Sulawesi. Pemilihan branding destinasi wisata bagi Kota Makassar diambil dari keunikan yang ada di ujung selatan Pulau Sulawesi ini.

Explore Makassar cukup menggambarkan bagaimana banyak dan menariknya kekayaan alam dan sejarah di Makassar untuk dijelajahi.

Branding tersebut diharapkan dapat menarik minat wisatawan untuk menjelajahi Kota Makassar, baik wisawatan yang memang berkunjung ke Makassar atau wisatawan yang hanya singgah sebentar sebelum melanjutkan perjalanan lagi.
""", hasVideo: false, coordinate: "123.2, -1.23"),
    Wonder(id: 9, name: "Raja Ampat", location: "Raja Ampat", branding: "Coral Wonder", description: """
Coral Wonders memang paling cocok diberikan kepada destinasi wisata yang memiliki kekayaan akan baharinya. Kekayaan bahari ini secara lebih spesifik yaitu kekayaan akan coral atau kehidupan bawah lautnya.

Branding destinasi wisata Coral Wonders tanpa perlu dijelaskan panjang lebar sudah jelas merujuk pada kekayaan alam bawah laut tersebut.

Destinasi wisata yang pantas memiliki branding tersebut, tidak lain yaitu Bunaken, Wakatobi, dan Raja Ampat. Sama seperti Joglosemar, ketiga destinasi tersebut berdiri bersama sebagai andalan wisata bawah laut Indonesia.

Bunaken, Wakatobi, dan Raja Ampat bahkan masing-masing sudah cukup terkenal akan kekayaan alam yang dimilikinya.

Beberapa tahun terakhir ketenarannya bahkan sudah sampai ke mancanegara. Tak heran jika akses dan segala fasilitas penunjang cukup berkembang pesat di ketiga destinasi wisata tersebut.
""", hasVideo: false, coordinate: "123.2, -1.23")
]
//#endif


// source: https://www.klikmania.net/branding-destinasi-wisata-indonesia/
