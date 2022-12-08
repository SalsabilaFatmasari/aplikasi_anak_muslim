import 'package:flutter/material.dart';

class Dzikir extends StatefulWidget {
  const Dzikir({Key? key}) : super(key: key);

  @override
  _DzikirState createState() => _DzikirState();
}

class _DzikirState extends State<Dzikir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff44aca0),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffb4ddd9)),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                        margin: EdgeInsets.only(top: 120, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Dzikir",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Bacaan Dzikir Setelah Shalat",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      "assets/images/bg_dzikir.png",
                      width: 330,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 250, right: 20),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xff0e1446)),
                        child: Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.amber,
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                        title: Center(
                                            child: Text("Dalil")),
                                        content: SingleChildScrollView(
                                          child: Text(
                                            " Ada dua perkara, sekiranya keduanya itu selalu dijaga oleh seorang muslim, maka ia akan masuk surga. Dua perkara itu sangat mudah untuk dikerjakan, tetapi sedikit yang mau melaksanakannya. Yaitu; setiap selesai shalat mengucapkan tasbih sebanyak sepuluh kali, tahmid sepuluh kali, dan takbir sepuluh kali. Hal itu akan sama dengan seratus lima puluh dengan lisan dan seribu lima ratus dalam timbangan. Membaca takbir sebanyak tiga puluh empat jika akan tidur, membaca tahmid sebanyak tiga puluh tiga dan membaca tasbih sebanyak tiga puluh tiga, maka itu adalah seratus dalam hitungan lisan dan seribu dalam hitungan timbangan",
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ));
                            },
                            child: Center(
                              child: Text(
                                "Dalil",
                                style: TextStyle(
                                    letterSpacing: 2,
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: ListView(
                  children: [
                    Align(
                      child: Text(
                       "أَسْتَغْفِرُ اللهَ (3x) اَللَّهُمَّ أَنْتَ السَّلاَمُ، وَمِنْكَ السَّلاَمُ، تَبَارَكْتَ يَا ذَا الْجَلاَلِ وَاْلإِكْرَامِ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right
                        ,
                      ),
                    ),
                    Align(
                      child: Text(
                        "Astaghfirullah (3x). Allahumma antas salaam wa minkas salaam tabaarokta yaa dzal jalaali wal ikrom",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                            textAlign: TextAlign.center
                      ),
                    ),
                    Align(
                      child: Padding(
                    padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Aku minta ampun kepada Allah,” (3x). Lantas membaca: “Ya Allah, Engkau pemberi keselamatan, dan dariMu keselamatan, Maha Suci Engkau, wahai Tuhan Yang Pemilik Keagungan dan Kemuliaan",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    ),
                    
                    Align(
                      child: Padding(
                    padding: EdgeInsets.only(top: 20),
                      child: Text(
                       "لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرُ، اَللَّهُمَّ لاَ مَانِعَ لِمَا أَعْطَيْتَ، وَلاَ مُعْطِيَ لِمَا مَنَعْتَ، وَلاَ يَنْفَعُ ذَا الْجَدِّ مِنْكَ الْجَدُّ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right
                        ,
                      ),
                    ),
                    ),

                    Align(
                      child: Text(
                        "Laa ilaha illallah wahdahu laa syarika lah, lahul mulku wa lahul hamdu wa huwa ‘ala kulli syai-in qodiir. Allahumma laa maani’a limaa a’thoyta wa laa mu’thiya limaa mana’ta wa laa yanfa’u dzal jaddi minkal jaddu",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    Align(
                      child: Padding(
                    padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Tiada Rabb yang berhak disembah selain Allah Yang Maha Esa, tidak ada sekutu bagi-Nya. Bagi-Nya puji dan bagi-Nya kerajaan. Dia Maha Kuasa atas segala sesuatu. Ya Allah, tidak ada yang mencegah apa yang Engkau berikan dan tidak ada yang memberi apa yang Engkau cegah. Tidak berguna kekayaan dan kemuliaan itu bagi pemiliknya (selain iman dan amal shalihnya yang menyelamatkan dari siksaan). Hanya dari-Mu kekayaan dan kemuliaan",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    ),
                    
                    Align(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                      child: Text(
                       "لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرُ. لاَ حَوْلَ وَلاَ قُوَّةَ إِلاَّ بِاللهِ، لاَ إِلَـهَ إِلاَّ اللهُ، وَلاَ نَعْبُدُ إِلاَّ إِيَّاهُ، لَهُ النِّعْمَةُ وَلَهُ الْفَضْلُ وَلَهُ الثَّنَاءُ الْحَسَنُ، لاَ إِلَـهَ إِلاَّ اللهُ مُخْلِصِيْنَ لَهُ الدِّيْنَ وَلَوْ كَرِهَ الْكَافِرُوْنَ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right
                        ,
                      ),
                      )
                    ),
                    Align(
                      child: Text(
                        "Laa ilaha illallah wahdahu laa syarika lah. Lahul mulku wa lahul hamdu wa huwa ‘ala kulli syai-in qodiir. Laa hawla wa laa quwwata illa billah. Laa ilaha illallah wa laa na’budu illa iyyaah. Lahun ni’mah wa lahul fadhlu wa lahuts tsanaaul hasan. Laa ilaha illallah mukhlishiina lahud diin wa law karihal kaafiruun.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    Align(
                      child: Padding(
                    padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Tiada Rabb (yang berhak disembah) kecuali Allah, Yang Maha Esa, tidak ada sekutu bagi-Nya. Bagi-Nya kerajaan dan pujaan. Dia Mahakuasa atas segala sesuatu. Tidak ada daya dan kekuatan kecuali (dengan pertolongan) Allah. Tiada Rabb (yang hak disembah) kecuali Allah. Kami tidak menyembah kecuali kepada-Nya. Bagi-Nya nikmat, anugerah dan pujaan yang baik. Tiada Rabb (yang hak disembah) kecuali Allah, dengan memurnikan ibadah kepadaNya, sekalipun orang-orang kafir sama benci",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    ),

                    Align(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                      child: Text("سُبْحَانَ اللهِ (33 ×)",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right
                        
                        ,
                      ),
                      )
                    ),
                    Align(
                      child: Text(
                        "Subhanallah (33x)",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    Align(
                      child: Padding(
                    padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Maha Suci Allah (33x)",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    ),

                    Align(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                      child: Text("اَلْحَمْدُ لِلَّهِ (33 ×)",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right
                        ,
                      ),
                      )
                    ),
                    Align(
                      child: Text(
                        "Alhamdulillah (33x)",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    Align(
                      child: Padding(
                    padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Segala Puji Bagi Allah (33x)",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    ),

                    Align(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                      child: Text("(اَللهُ أَكْبَرُ (33 ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right
                        ,
                      ),
                      )
                    ),
                    Align(
                      child: Text(
                        "Alllahu Akbar(33x)",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    Align(
                      child: Padding(
                    padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Allah Maha Besar (33x)",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    ),

                    Align(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                      child: Text("لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right
                        ,
                      ),
                      )
                    ),
                    Align(
                      child: Text(
                        "Laa ilaha illallah wahdahu laa syarika lah. Lahul mulku wa lahul hamdu wa huwa ‘ala kulli syai-in qodiir",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    Align(
                      child: Padding(
                    padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Tidak ada Rabb (yang berhak disembah) kecuali Allah Yang Maha Esa, tidak ada sekutu bagi-Nya. Bagi-Nya kerajaan. Bagi-Nya pujaan. Dia-lah Yang Mahakuasa atas segala sesuatu.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}