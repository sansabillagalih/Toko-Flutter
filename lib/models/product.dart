class Product {
  String name, description, price, image, logo;
  List<String> imageUrls;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.logo,
    required this.imageUrls,
  });
}

List<Product> products = [
  Product(
    name: 'Acer Ultrabook',
    description:
        'Ultrabook merupakan laptop dengan dimensi yang tipis yang dapat mendukung mobilitas penggunanya. Ultrabook saat ini memang tengah menjadi salah satu produk populer dan memiliki banyak peminat. Selain ukurannya yang tidak terlalu besar dan dimensi yang tipis, ultrabook juga memiliki kinerja yang tinggi. Laptop jenis tersebut identik dengan sebuah laptop kelas premium yang dibanderol dengan harga cukup tinggi. Akan tetapi, berbeda dengan ultrabook kebanyakan, Acer memperkenalkan varian ultrabook yang dijual dengan harga relatif terjangkau melalui Acer Swift 3 SF314-54G. Harga Acer Swift 3 SF314-54G diklaim sebagai ultrabook termurah di Indonesia. Namun, meski dijual dengan harga yang terjangkau, performa Acer Swift 3 SF314-54G tidak kalah dengan ultrabook lainnya. Selain harganya yang diklaim lebih murah untuk laptop jenis ultrabook, Acer Swift 3 SF314-54G juga diklaim sebagai satu-satunya notebook tipis dan ringan dengan RAM yang dapat diupgrade.',
    price: '2000',
    image: 'assets/images/laptop1.jpg',
    logo: 'assets/images/acer.png',
    imageUrls: [
      'https://images.tokopedia.net/img/cache/250-square/VqbcmM/2021/8/12/13c82869-70c4-4d42-9158-5c675fd166d3.jpg',
      'https://crecos.vteximg.com.br/arquivos/ids/207943-398-398/ASU-G512LI-W.jpg?v=637604197293370000',
      'https://cf.shopee.co.id/file/5cd53d775755cfc1629365094801e712'
    ],
  ),
  Product(
    name: 'Lenovo Ideapad',
    description:
        'Laptop Lenovo IdeaPad 330 memiliki kemampuan untuk bisa 2.48 kali lebih cepat launch game-nya. tidak tanggung-tanggung, pemutaran game-nya pun mencapai 32% lebih cepat dari produk-produk laptop sejenisnya, khususnya produk yang masih menggunakan SATA AAD. Oleh sebab itu, bagi Sahabat Arena yang senang bermain game, Lenovo IdeaPad 330 layak dipertimbangkan. Di luar untuk gaming, performa laptop ini nampaknya tidak perlu dipertanyakan lagi. Sahabat Arena bisa menggunakan laptop besutan produsen Lenovo ini untuk memainkan berbagai macam game, dan dalam berbagai ukuran. Oleh karena itu, dengan semua performa yang ditawarkan ini, tak masalah jika harga Lenovo IdeaPad 330 juga sedikit lebih tinggi dibandingkan dengan produk laptop Lenovo yang lainnya. Karena dibandingkan dengan produk yang lain, produk laptop ini memang paling laku di pasaran.',
    price: '1500',
    image: 'assets/images/laptop5.jpg',
    logo: 'assets/images/lenovo.png',
    imageUrls: [
      'https://img.tek.id/img/content/2021/08/31/44575/rekomendasi-5-laptop-gaming-yang-gak-bikin-kantong-jebol-iAwFAaCGpr.jpg',
      'https://media.suara.com/pictures/970x544/2021/01/12/61251-laptop-gaming-asus-rog-strix-scar-17-g732lws-asus.jpg',
      'https://idgameware.com/wp-content/uploads/2019/07/201901AM260000004_15487116613591050048825-1.jpg',
    ],
  ),
  Product(
    name: 'Asus VivoBook',
    description:
        'Untuk segi performa, tidak ada yang menonjol pada laptop ini. Asus mempersenjatai laptop ASUS VivoBook Max X441SA ini dengan prosesor Intel Celeron N3060 dual-core generasi Bay Trail. Yang mampu berlari dengan kecepatan 1.6GHz dan TurboBoost mencapai 2.24 GHz. Selain itu laptop ASUS VivoBook Max X441SA ini juga dibekali dengan memori RAM berkapasitas 2 GB. Jenis DDR3L dengan kecepatan 1600MHz yang bisa diupgrade sesuai dengan kebutuhan. Untuk sektor penyimpanan, ASUS VivoBook Max X441SA ini memiliki hard disk berkapasitas 500GB degan kecepatan rotor 5400rpm yang bisa diupgrade jika diperlukan.',
    price: '3500',
    image: 'assets/images/laptop3.png',
    logo: 'assets/images/asus.png',
    imageUrls: [
      'https://images.tokopedia.net/img/cache/500-square/hDjmkQ/2021/10/2/dffe5420-aea2-456a-9ea2-1def5b0b7a44.jpg',
      'https://www.harapanrakyat.com/wp-content/uploads/2020/08/11.-Asus-ROG-Zephyrus-S17-Laptop-Gaming-Ramping-Perfoma-Handal.jpg',
      'https://s2.bukalapak.com/uploads/content_attachments/2287/original/Asus_ROG_Zephyrus_S_GX531_2_Asus.jpg',
    ],
  ),
  Product(
    name: 'Asus X441U',
    description:
        'Melihat trend saat ini yang lebih mengarah ke penggunaan prosesor yang efisien tempat dan daya, nampaknya pihak Asus juga tak mau ketinggalan. Untuk soal prosesor, Asus x441u dibekali dengan Intel Core i3-6006U generasi terbaru Skylake. Prosesor tersebut mampu berlari dikecepatan standar 2 GHz saja dan sayangnya tidak ada fitur TurboBoost. Soal dapur pacu cukup lumayan sih dengan harga Asus x441u di 5 jutaan anda mendapatkan prosesor yang mengutamakan efisiensi penggunaan baterai. Untuk mendukung kinerja prosesor, notebook ini dilengkapi dengan memori RAM berkapasitas 4 GB DDR4 yang bisa anda upgrade sesuai kebutuhan hingga maksimal 16 GB DDR4. Pada sektor media penyimpanan sendiri cukup standar kapasitasnya yakni HDD 500 GB. Secara keseluruhan, kinerja Asus x441u sudah cukup untuk kegiatan gaming',
    price: '1500',
    image: 'assets/images/laptop4.jpg',
    logo: 'assets/images/asus.png',
    imageUrls: [
      'https://allegro.stati.pl/AllegroIMG/PRODUCENCI/ASUS/G513IH-HN002/asus-rog-strix-g15-prawy-bok.jpg',
      'https://images.tokopedia.net/img/cache/250-square/VqbcmM/2021/8/12/13c82869-70c4-4d42-9158-5c675fd166d3.jpg',
      'https://crecos.vteximg.com.br/arquivos/ids/207943-398-398/ASU-G512LI-W.jpg?v=637604197293370000',
    ],
  ),
  Product(
    name: 'Asus TUF',
    description:
        'Asus merupakan salah satu produsen laptop yang terkenal dengan lini laptop gaming. Republic of Gamers (ROG) dan Strix merupakan beberapa brand yang diperkenalkan Asus untuk lini laptop gaming. Selain kedua brand tersebut, Asus juga menghadirkan lini laptop gaming dengan harga yang lebih terjangkau, yaitu The Ultimate Force atau yang disingkat TUF. Brand tersebut merupakan evolusi dari laptop Asus seri FX. Tentunya juga harga Asus TUF FX504 yang akan kita bahas berikut merupakan tipe asus Tuf dengan harga yang lebih menggoda, yaitu Asus TUF FX504GD. karena Harga Asus TUF FX504GD bisa dikatakan cukup terjangkau dibandi laptop gaming asus lainnya.',
    price: '2500',
    image: 'assets/images/laptop2.jpg',
    logo: 'assets/images/asus.png',
    imageUrls: [
      'https://hnsgsfp.imgix.net/4/images/detailed/65/Surface_Laptop_Go_2.jpg?fit=fill&bg=0FFF&w=1536&h=900&auto=format,compress',
      'https://m.media-amazon.com/images/I/718ETwvLVOL._SL1500_.jpg',
      'https://image.cnbcfm.com/api/v1/image/106725307-1601554921056-surface-laptop-go.png?v=1601554930&w=1600&h=900',
    ],
  ),
];
