import 'package:flutter/material.dart';

class TampilHalaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tuntunan Tayamum"),
      ), //AppBar

      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              'Pengertian Tayammum',
              'https://cdn.muslim.or.id/wp-content/uploads/2010/01/tayamum-810x500.jpg',
              'Tayammum secara bahasa diartikan sebagai Al Qosdu (القَصْدُ) yang berarti maksud. Sedangkan secara istilah dalam syari’at adalah sebuah peribadatan kepada Allah berupa mengusap wajah dan kedua tangan dengan menggunakan sho’id yang bersih[1]. Sho’id adalah seluruh permukaan bumi yang dapat digunakan untuk bertayammum baik yang terdapat tanah di atasnya ataupun tidak'),
          _createPageItemUI(
              'Media yang dapat Digunakan untuk Tayammum',
              'https://3.bp.blogspot.com/-oUW8UlzDLwc/WpA_QlO5yJI/AAAAAAAAALs/OEpUHVPOSu09qMM74BRmmiCn48DObwSMwCLcBGAs/s1600/Debu%2BTanah.jpg',
              'Media yang dapat digunakan untuk bertayammum adalah seluruh permukaan bumi yang bersih baik itu berupa pasir, bebatuan, tanah yang berair, lembab ataupun kering..'),
          _createPageItemUI(
              'Keadaan yang  Dapat Menyebabkan Seseorang Bersuci  dengan Tayammum',
              'https://3.bp.blogspot.com/-WJKxlX_qlZg/WQVXNfWMF4I/AAAAAAAACNo/NA2tJ_zGBMA_R5AxbOHQqzhKVe_fDF8egCLcB/s1600/cacaraberttayamum.jpg',
              'Jika tidak ada air baik dalam keadaan safar/dalam perjalanan ataupun tidak'),
          _createPageItemUI(
              'Cara bertayamum',
              'https://3.bp.blogspot.com/-dHtgmewmcQg/V6Flwhek8nI/AAAAAAAAAJY/xwyD1HrnOsYz7QIChyxP63HmIbK4yi75wCEw/s1600/tata-cara-wudhu-mencuci-muka.jpeg',
              'berikut adalah cara atau tuntunan untuk melakukan tayamum'),
          _createPageItemUI(
              '1.Memukulkan kedua telapak tangan',
              'https://1.bp.blogspot.com/-cE4OPR_4S5I/V6FlvybK0kI/AAAAAAAAAJY/1tcBTUCSTqMeFpf2W66PNbeefWUuD_W7QCEw/s1600/tata-cara-wudhu-membasuh-tangan.jpeg',
              'Memukulkan kedua telapak tangan ke permukaan bumi atau debu dengan sekali pukulan kemudian meniupnya.'),
          _createPageItemUI(
              '2.menyapu punggung telapak tangan kanan.',
              'https://1.bp.blogspot.com/-TfgFBfimPd4/V6FlxLjJ4QI/AAAAAAAAAJY/2-XKn0irn0o976VZGOB39QDpNDiwBPadgCEw/s1600/tata-cara-wudhu-mengusap-kepala.jpeg',
              'Kemudian menyapu punggung telapak tangan kanan dengan tangan kiri dan sebaliknya.'),
          _createPageItemUI(
              '3.Kemudian menyapu wajah dengan dua telapak tangan.',
              'https://4.bp.blogspot.com/-ncykdu5ppPw/V6FlxUnESNI/AAAAAAAAAJY/jn3lNIVTliskLQsQJ0gex1I2F46cvKQogCEw/s1600/tata-cara-wudhu-mengusap-telinga.jpeg',
              'Kemudian menyapu wajah dengan dua telapak tangan.'),
          _createPageItemUI(
              '4.Semua usapan baik ketika mengusap',
              'https://1.bp.blogspot.com/-ty0Pqfvmy8I/V6Flv4woX8I/AAAAAAAAAJY/asKHk71lkKEbUYR86NLq5XmTQxMh8ytdwCEw/s1600/tata-cara-wudhu-membasuh-kaki.jpeg',
              'Semua usapan baik ketika mengusap telapak tangan dan wajah dilakukan sekali usapan saja.'),
          _createPageItemUI(
            '5.Bagian tangan yang diusap',
            'file:///Users/perdana/Downloads/Doa%20setelah%20wudhu.png',
            'Bagian tangan yang diusap adalah bagian telapak tangan sampai pergelangan tangan saja atau dengan kata lain tidak sampai siku seperti pada saat wudhu',)
        ],
      ), //PageView
    ); //Sccafold
  }
}

_createPageItemUI(String nama, String gambar, String deskripsi) {
  return Container(
    child: ListView(
      children: <Widget>[
        Image(
          image: NetworkImage(gambar),
          height: 300.0,
          fit: BoxFit.cover,
        ),

        SizedBox(
          height: 20.0,
        ), //SizedBox

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(nama,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        ), //Padding

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            deskripsi,
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.justify,
          ),
        )
      ],
    ),
  );
}