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
          mainAxisAlignment: MainAxisAlignment.center,
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
                              "Doa Qunut",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Bacaan Doa Qunut beserta Latin dan Terjemahannya",
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
                      "assets/images/bg_quran.jpg", //ganti gambarnya
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
                                            child: Text("Tafsir Ayat Kursi")),
                                        content: SingleChildScrollView(
                                          child: Text(
                                            "Allah adalah Tuhan Yang Maha Esa, tidak ada tuhan selain Dia, dan hanya Dia yang berhak untuk disembah. Adapun tuhan-tuhan yang lain yang disembah oleh sebagian manusia dengan alasan yang tidak benar, memang banyak jumlahnya. Akan tetapi Tuhan yang sebenarnya hanyalah Allah. Hanya Dialah Yang hidup abadi, yang ada dengan sendiri-Nya, dan Dia pulalah yang selalu mengatur makhluk-Nya tanpa ada kelalaian sedikit pun.\n\nKemudian ditegaskan lagi bahwa Allah tidak pernah mengantuk. Orang yang berada dalam keadaan mengantuk tentu hilang kesadarannya, sehingga dia tidak akan dapat melakukan pekerjaannya dengan baik, padahal Allah swt senantiasa mengurus dan memelihara makhluk-Nya dengan baik, tidak pernah kehilangan kesadaran atau pun lalai.\n\nKarena Allah tidak pernah mengantuk, sudah tentu Dia tidak pernah tidur, karena mengantuk adalah permulaan dari proses tidur. Orang yang tidur lebih banyak kehilangan kesadaran daripada orang yang mengantuk.\n\nSifat Allah yang lain yang disebutkan dalam ayat ini ialah bahwa Dialah yang mempunyai kekuasaan dan yang memiliki apa yang ada di langit dan di bumi. Dialah yang mempunyai kekuatan dan kekuasaan yang tak terbatas, sehingga Dia dapat berbuat apa yang dikehendaki-Nya. Semuanya ada dalam kekuasaan-Nya, sehingga tidak ada satu pun dari makhluk-Nya termasuk para nabi dan para malaikat yang dapat memberikan pertolongan kecuali dengan izin-Nya, apalagi patung-patung yang oleh orang-orang kafir dianggap sebagai penolong mereka.\n\nYang dimaksud dengan \"pertolongan\" atau \"syafaat\" dalam ayat ini ialah pertolongan yang diberikan oleh para malaikat, nabi dan orang-orang saleh kepada umat manusia pada hari kiamat untuk mendapatkan keringanan atau kebebasan dari hukuman Allah. Syafaat itu akan terjadi atas izin Allah. Dalam hadis disebutkan :\n\nNabi Saw bersabda, \"¦Kemudian Allah berfirman, \"Para Malaikat memberikan syafaat, para Nabi memberikan syafaat, dan orang-orang mukmin juga memberikan syafaat. (Riwayat Ahmad dan Muslim dari Abu Sa'id al-Khudri)\n\nSifat Allah yang lain yang disebutkan dalam ayat ini ialah: bahwa Allah senantiasa mengetahui apa saja yang terjadi di hadapan dan di belakang makhluk-Nya, sedang mereka tidak mengetahui sesuatu pun dari ilmu Allah, melainkan sekadar apa yang dikehendaki-Nya untuk mereka ketahui. Kursi Allah mencakup langit dan bumi. Allah tidak merasa berat sedikit pun dalam memelihara makhluk-Nya yang berada di langit dan di bumi, dan di semua alam ciptaan-Nya. Allah Mahatinggi lagi Mahabesar.\n\nMereka tidak mengetahui ilmu Allah, kecuali apa yang telah dikehendaki-Nya untuk mereka ketahui. Dengan demikian, yang dapat diketahui oleh manusia hanyalah sekadar apa yang dapat dijangkau oleh pengetahuan yang telah dikaruniakan Allah kepada mereka, dan jumlahnya amat sedikit dibanding dengan ilmu-Nya yang luas. Hal ini ditegaskan Allah dalam firman-Nya:\n\n\"Sedangkan kamu diberi pengetahuan hanya sedikit.\" (al-Isra' 17:85)",
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ));
                            },
                            child: Center(
                              child: Text(
                                "Tafsir",
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
                    SelectableText(
                      "للّٰهُمَّ اهْدِنِىْ فِيْمَنْ هَدَيْتَ وَعَافِنِى فِيْمَنْ عَافَيْتَ وَتَوَلَّنِىْ فِيْمَنْ تَوَلَّيْتَ وَبَارِكْ لِىْ فِيْمَا اَعْطَيْتَ وَقِنِيْ شَرَّمَا قَضَيْتَ فَاِنَّكَ تَقْضِىْ وَلاَ يُقْضٰى عَلَيْكَ وَاِ نَّهُ لاَ يَذِلُّ مَنْ وَالَيْتَ وَلاَ يَعِزُّ مَنْ عَادَيْتَ تَبَارَكْتَ رَبَّنَا وَتَعَالَيْتَ فَلَكَ الْحَمْدُ عَلَى مَا قَضَيْتَ وَاَسْتَغْفِرُكَ وَاَتُوْبُ اِلَيْكَ وَصَلَّى اللهُ عَلَى سَيِّدَنَا مُحَمَّدٍ النَّبِيِّ اْلاُمِّيِّ وَعَلَى آلِهِ وَصَحْبِهِ وَسَلَّمَ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: SelectableText(
                        "Allahummah diinii fiiman hadait wa aafinii fiman aafait. Watawallanii fiiman tawallait wabaariklii fiimaa a'thait. Waqinii birahmatika syarra maa qadlait. Fa innaka taqdlii w alaa yuodlaa 'alaik, wa-innahu laa yadzillu man waalait. Walaa ya'izzu man aadait. Tabaarakta rabbanaa wata 'aalait. Falakal hamdu 'alaa maa qadlait astaghfiruka wa-atuubu i laik. Washallallaahu'alaa sayyidinaa muhammadin nabyyil ummiyyi wa-'alaa aalihi washahbihi wasallam",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: SelectableText(
                        "Ya Allah, berilah aku petunjuk seperti orang-orang yang telah Engkau beri petunjuk. Berilah aku kesehatan seperti orang yang telah Engkau beri kesehatan. Berilah berkah pada segala apa yang telah Engkau berikan kepadaku. Dan peliharalah aku dari kejahatan yang Engkau pastikan. Sesungguhnya tidaklah akan hina orang-orang yang telah Engkau beri kekuasaan. Dan tidak akan mulia orang yang Engkau musuhi. Maha berkahlah Engkau dan Maha Luhurlah Engkau. Segala Puji bagiMu atas yang telah Engkau pastikan. Aku mohon ampun dan kembalilah (taubat) kepada Engkau. Semoga Allah memberi rahmat, berkah dan salam atas Nabi Muhammad beserta keluarganya",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.justify,
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