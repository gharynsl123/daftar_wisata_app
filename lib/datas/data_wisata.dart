import 'package:flutter/material.dart';

class DataWisata {
  final String title;
  final String subTitle;
  final String image;
  final MaterialColor materialColor;

  DataWisata({this.title, this.subTitle, this.image, this.materialColor});

  List<DataWisata> createDataWisata(){
    List _dataWisata = List<DataWisata>();
    return _dataWisata
      ..add(DataWisata(
          title: "Museum Angkut",
          subTitle: "ada dimalang",
          image:
          "https://www.mldspot.com/sites/default/files/styles/wide_big/public/field/image/Review%20Museum%20Angkut%20Malang%20Tiket.jpg?itok=i30XKMP1",
          materialColor: Colors.blue))
      ..add(DataWisata(
          title: "Kota Tua",
          subTitle: "ada dijakarta",
          image:
          "https://img.alinea.id/img/content/2019/06/06/38959/jam-kunjungan-museum-museum-di-kota-tua-jakarta-diperpanjang-NpjK8GD2ce.jpg",
          materialColor: Colors.red))
      ..add(DataWisata(
          title: "Museum Peta",
          subTitle: "ada didunia",
          image:
          "https://awsimages.detik.net.id/content/2017/12/27/1025/img_20171227175919_5a437d075223e.JPG",
          materialColor: Colors.green))
      ..add(DataWisata(
          title: "Jungle Land",
          subTitle: "ada dibogor",
          image:
          "https://awsimages.detik.net.id/visual/2020/09/25/dokthe-jungle-land.png?w=650",
          materialColor: Colors.yellow))
      ..add(DataWisata(
          title: "Museum Tanah",
          subTitle: "ada di tanah",
          image:
          "https://kelanaku.com/wp-content/uploads/2018/11/Museum-Tanah-Bogor.jpg",
          materialColor: Colors.purple))
      ..add(DataWisata(
          title: "Monas",
          subTitle: "ada dijakarta",
          image:
          "https://mmc.tirto.id/image/2018/07/28/ilustrasi-monas-2_ratio-16x9.jpg",
          materialColor: Colors.pink))
      ..add(DataWisata(
          title: "Taman Safari",
          subTitle: "ada di bogor",
          image:
          "https://akcdn.detik.net.id/visual/2020/06/10/kondisi-satwa-tsi-bogor_169.jpeg?w=650",
          materialColor: Colors.orange))
      ..add(DataWisata(
          title: "Taman Mini",
          subTitle: "ada dijakarta",
          image:
          "https://anekatempatwisata.com/wp-content/uploads/2014/08/Teater-IMAX-Keong-Mas.jpg",
          materialColor: Colors.brown))
      ..add(DataWisata(
          title: "Museum Mobil",
          subTitle: "ada digarasi",
          image:
          "https://i.misteraladin.com/blog/2018/10/29135905/hauwke2.jpg",
          materialColor: Colors.lightGreen))
      ..add(DataWisata(
          title: "Museum Keramik",
          subTitle: "ada dibatu",
          image:
          "https://upload.wikimedia.org/wikipedia/commons/9/98/Museum_Seni_Rupa_dan_Keramik_Main_images10.png",
          materialColor: Colors.lightBlue));
  }
}
