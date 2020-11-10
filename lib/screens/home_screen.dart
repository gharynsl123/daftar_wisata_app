import 'package:daftar_wisata_app/datas/data_wisata.dart';
import 'package:daftar_wisata_app/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DataWisata> _dataWisataList = List<DataWisata>();
  double _screenWidthAdjustment;

  @override
  void initState() {
    _dataWisataList = DataWisata().createDataWisata();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _screenWidthAdjustment = MediaQuery.of(context).size.width - 48.0 - 64.0;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wisata Indonesia"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
            itemExtent: 190.0,
            itemCount: _dataWisataList.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      fullscreenDialog: true,
                      transitionDuration: Duration(milliseconds: 500),
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return DetailScreen(
                          dataWisata: DataWisata(
                              title: _dataWisataList[index].title,
                              subTitle: _dataWisataList[index].subTitle,
                              image: _dataWisataList[index].image,
                              materialColor:
                                  _dataWisataList[index].materialColor),
                        );
                      },
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                          Widget child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      }));
                },
                child: Card(
                  margin: EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 8.0),
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children: [
                      Hero(
                        tag: 'background' + _dataWisataList[index].title,
                        child: Container(
                          color: _dataWisataList[index].materialColor,
                        ),
                      ),
                      Positioned(
                        top: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Hero(
                          tag: 'image' + _dataWisataList[index].title,
                          child: Image.network(
                            _dataWisataList[index].image,
                            height: 80.0,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 96.0,
                        left: 16.0,
                        width: _screenWidthAdjustment,
                        child: Hero(
                          tag: 'text' + _dataWisataList[index].title,
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              _dataWisataList[index].title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 118.0,
                        left: 16.0,
                        width: _screenWidthAdjustment,
                        child: Hero(
                          tag: 'subtitle' + _dataWisataList[index].title,
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              _dataWisataList[index].subTitle,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
