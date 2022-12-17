import 'package:apk_ank/page/bacaan_wudhu.dart';
import 'package:apk_ank/page/dzikir.dart';
import 'package:apk_ank/page/niat_shalat__sunnah_page.dart';
import 'package:flutter/material.dart';
import 'package:apk_ank/page/ayat_kursi_page.dart';
import 'package:apk_ank/page/bacaan_shalat_page.dart';
import 'package:apk_ank/page/niat_shalat_page.dart';
import 'package:apk_ank/page/niat_shalat__sunnah_page.dart';
import 'package:apk_ank/page/doa_qunut.dart';
import 'package:apk_ank/page/header_drawer.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0e1446),
        title: const Text("Belajar Shalat"),
      ),
      // drawer: Drawer(
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         const MyHeaderDrawer(),
      //         ListTile(
      //           leading: const Icon(Icons.home),
      //           title: const Text("Beranda"),
      //           onTap: () {Navigator.pop(context,
      //                     MaterialPageRoute(
      //                         builder: (context) => MainPage()));},
      //         ),
      //         ListTile(
      //           leading: const Icon(Icons.message),
      //           title: const Text("Konsultasi"),
      //           onTap: () {Navigator.pop(context,
      //                     MaterialPageRoute(
      //                         builder: (context) => MainPage()));},
      //         ),
      //       ],
      //     ),
      //     ),
      //   ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[

          //wudhu
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BacaanWudhu()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(
                          image: AssetImage("assets/images/bg_wudhuphp.png"), //ganti gambarnya
                          height: 100,
                          width: 100,
                        ),
                    Text("Wudhu", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),

          //niatshalat
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NiatSholat()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(
                          image: AssetImage("assets/images/bg_wajib.png"),
                          height: 100,
                          width: 100,
                        ),
                    Text("Niat Shalat Wajib", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),

          //niat shlata sunnnah
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NiatSholatSunnah()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(
                          image: AssetImage("assets/images/bg_sunnahph.png"),
                          height: 100,
                          width: 100,
                        ),
                    Text("Niat Shalat Sunnah", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),

          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                 Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BacaanSholat()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(
                          image: AssetImage("assets/images/bg_bacaan_shalat.jpg"),
                          height: 100,
                          width: 100,
                        ),
                    Text("Bacaan Shalat", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),

          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DoaQunut()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(
                          image: AssetImage("assets/images/bg_qunut.png"),
                          height: 100,
                          width: 100,
                        ),
                    Text("Doa Qunut", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),

          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dzikir()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(
                          image: AssetImage("assets/images/bg_dzikir.png"),
                          height: 100,
                          width: 100,
                        ),
                    Text("Dzikir", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),

          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AyatKursi()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(
                          image: AssetImage("assets/images/doa.png"),
                          height: 100,
                          width: 100,
                        ),
                    Text("Doa Setelah Shalat", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),

          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NiatSholat()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(
                          image: AssetImage("assets/images/bg_surahph.png"),
                          height: 100,
                          width: 100,
                        ),
                    Text("Surah Pendek", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}