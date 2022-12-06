import 'package:flutter/material.dart';
import 'package:apk_ank/page/ayat_kursi_page.dart';
import 'package:apk_ank/page/bacaan_shalat_page.dart';
import 'package:apk_ank/page/niat_shalat_page.dart';

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
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
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
                          image: AssetImage("assets/images/ic_niat.png"),
                          height: 100,
                          width: 100,
                        ),
                    Text("Wudhu", style: TextStyle(fontSize: 17.0)),
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
                              builder: (context) => NiatSholat()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(
                          image: AssetImage("assets/images/ic_niat.png"),
                          height: 100,
                          width: 100,
                        ),
                    Text("Niat Shalat Wajib", style: TextStyle(fontSize: 17.0)),
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
                          image: AssetImage("assets/images/ic_bacaan.png"),
                          height: 100,
                          width: 100,
                        ),
                    Text("Niat Shalat Wajib", style: TextStyle(fontSize: 17.0)),
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
                          image: AssetImage("assets/images/ic_doa.png"),
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
                          MaterialPageRoute(builder: (context) => AyatKursi()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(
                          image: AssetImage("assets/images/ic_bacaan.png"),
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
                          MaterialPageRoute(builder: (context) => AyatKursi()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(
                          image: AssetImage("assets/images/ic_bacaan.png"),
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
                          MaterialPageRoute(builder: (context) => AyatKursi()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(
                          image: AssetImage("assets/images/ic_bacaan.png"),
                          height: 100,
                          width: 100,
                        ),
                    Text("Doa Sehari Hari", style: TextStyle(fontSize: 17.0)),
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
                          image: AssetImage("assets/images/ic_bacaan.png"),
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