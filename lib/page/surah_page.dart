import 'package:flutter/material.dart';

class AyatKursi extends StatefulWidget {
  const AyatKursi({Key? key}) : super(key: key);

  @override
  _AyatKursiState createState() => _AyatKursiState();
}

class _AyatKursiState extends State<AyatKursi> {
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
                              "Ayat Kursi",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Bacaan Ayat Kursi dengan tafsirnya",
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
                      "assets/images/bg_quran.jpg",
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
                padding: EdgeInsets.all(20),
                child: ListView(
                  children: [
                    Center(
                      child: Text(
                        "بِسْمِ اللَّـهِ الرَّحْمَـٰنِ الرَّحِيمِ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Dengan menyebut nama Allah Yang Maha Pemurah lagi Maha Penyayang",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SelectableText(
                      " .بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيم اَلْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِيْنَ. حَمْدًا يُوَافِيْ نِعَمَهُ وَيُكَافِئُ مَزِيْدَهُ. يَا رَبَّنَا لَكَ الْحَمْدُ كَمَا يَنْبَغِيْ لِجَلاَلِ وَجْهِكَ الْكَرِيْمِ وَعَظِيْمِ سُلْطَانِكَ اللهم صل على سيدنا محمد وعلى ال سيدنا محمد.اَللَّهُمَّ رَبَّنَا تَـقَـبَّلْ مِنَّا صَلاَتَنَا وَصِيَا مَنَا وَرُكُوْ عَنَا وَسُجُوْدَنَا وَقُعُوْدَنَا وَتَضَرُّ عَنَا وَتَخَشُّوْ عَنَا وَتَعَبُّدَنَا وَتَمِّمْ تَقْصِيْرَ نَا يَا اَلله يَا رَبَّ الْعَا لَمِيْنَ. رَبَّنَا ضَلَمْنَا أَنْفُسَنَا وَإِنْ لَمْ تَغْفِرْ لَنَا وَتَرْ حَمْنَا لَنَكُوْ نَنَّ مِنَ الْخَا سِرِ يْ.  رَبَّنَا وَلاَ تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِ يْنَ مِنْ قَبْلِنَا .رَبَّنَا وَلاَ تُحَمِّلْنَا مَا لاَ طَا قَتَا لَنَا بِهِ, وَاعْفُ عَنَّا وَاغْفِرْلَنَا وَارْحَمْنَا أَنْتَ مَوْلاَ نَا فَا نْصُرْنَا عَلَى الْقَوْمِ الْكَا فِرِيْنَ رَبَّنَا لاَ تُزِغْ قُلُوْ بَنَا بَعْدَ إِذْ هَدَ يْتَنَا وَهَبْ لَنَا مِنْ لَّدُ نْكَ رَحْمَةً إِنَّكَ أَنْتَ الْوَهَّابُ .رَبَّنَا غْفِرْلَنَا وَلِوَالِدِيْنَ وَلِجَمِيْعِ الْمُسْلِمِيْنَ وَالْمُسْلِمَاتِ وَالْمُؤْمِنِيْنَ وَالْمُؤْمِنَاتِ أَلْأَ حْيَآءِمِنْهُمْ وَاْلأَ مْوَاتِ, اِنَّكَ عَلَى قُلِّ ثَيْءٍقَدِيْرِ رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي اْلآ خِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ سُبْحَانَ رَبِّكِ رَبِّ الْعِزَةِ عَمَّا يَصِفُوْنَ، وَسَلاَمٌ عَلَى الْمُرْ سَلِيْنَ، وَالْحَمْدُ لِلهِ رَبِّ الْعَالَمِيْنَ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                          textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: SelectableText(
                        "Bismillahirrahmaanirrahiim. Alhamdu lillaahi rabbil 'aalamiin, hamdan yuwaafii ni'amahu wayukaafii maziidahu. Ya rabbanaa lakal hamdu kamaa yan baghhi lijalaali wajhika wa'azhiimi sulthaanika. Allahumma shalli 'alaa sayyidinaa muhammadin wa'alaa aali sayyidinaa muhammad. Allahumma rabbanaa taqabbal minnaa shalaataana washiyaamanaa warukuu'anaa wasujuudanaa waqu'uudanaa watadlarru'anaa, watakhasysyu'anaa wata'abbudanaa, watammim taqshiiranaa yaa allah yaa rabbal'aalamiin. Rabbana dzhalamnaa anfusanaa wa-inlamtaghfir lana watarhamnaa lanakuunanna mlnal khaasiriin. Rabbanaa walaa tahmil'alainaa ishran kama hamaltahul'alal ladziina min qablinaa. Rabbanaa walaa tuhammilnaa maalaa thaaqata lanaa bihii wa'fu'annaa waghfir lanaa warhamnaa anta maulaanaa fanshurnaa 'alal qaumil kaafiriin. Rabbanaa laa tuzigh quluubanaa ba'da idzhadaitanaa w'ahablanaa min ladunka rahmatan innaka antal wahhaab. Rabbanaghfir lanaa waliwaalidinaa walijami'il muslimiin walmuslimaati wal mu'miniina walmu'minati. Al ahyaa-i-minhum wal amwaati, innaka alaa kuli syai'n qadiir. Rabbanaa aatinaa fiddunyaa hasanatan wafil aakhirati hasanatan waqinaa adzaaban-naar. Subhaana rabbika rabbil i'zzati ammaa yashifuuna wasalaamun 'alal mursalhna wal-hamdu lillaahi rabbil'aalamiina.",
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
                        "Dengan menyebut nama Allah Yang Maha Pengasih dan Maha Penyayang. Segala puji bagi Allah Tuhan seru sekalian alam. Dengan puji yang sebanding dengan nikmat-Nya dan menjamin tambahannya. Ya Allah Tuhan Kami, bagi-Mu segala puji dan segala apa yang patut atas keluhuran DzatMu dan Keagungan kekuasaanMu. Ya Allah! Limpahkanlah rahmat dan salam atas junjungan kita Nabi Muhammad dan sanak keluarganya. Ya Allah terima sholat kami, puasa kami, ruku kami, sujud kami, duduk rebah kami, khusyu' kami, pengabdian kami, dan sempurnakanlah apa yang kami lakukan selama sholat ya Allah. Tuhan seru sekalian alam. Ya Allah, Kami telah aniaya terhadap diri kami sendiri, karena itu ya Allah jika tidak dengan limpahan ampunan-Mu dan rahmat-Mu niscaya kami akan jadi orang yang sesat. Ya Allah Tuhan kami, janganlah Engkau pikulkan atas diri kami beban yang berat sebagaimana yang pernah Engkau bebankan kepada orang yang terdahulu dari kami. Ya Allah Tuhan kami, janganlah Engkau bebankan atas diri kami apa yang di luar kesanggupan kami. Ampunilah dan limpahkanlah rahmat ampunan terhadap diri kami ya Allah. Ya Allah Tuhan kami, berilah kami pertolongan untuk melawan orang yang tidak suka kepada agamaMu. Ya Allah Tuhan kami, janganlah engkau sesatkan hati kami sesudah mendapat petunjuk, berilah kami karunia. Engkaulah yang maha Pemurah.",
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