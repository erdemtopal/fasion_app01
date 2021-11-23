// ignore_for_file: non_constant_identifier_names

import 'package:fasionapp/detay.dart';
import 'package:flutter/material.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moda App',
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigation),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: "",
          ),
        ],
        selectedItemColor: Colors.brown.withOpacity(0.8),
        unselectedItemColor: Colors.grey,
        iconSize: 20,
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Moda App',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            color: Colors.grey,
            icon: const Icon(Icons
                .camera_alt), //başka icon buttonlar da children içine ekleyebiliriz.
          ), //APP Bar'ın sağ kısmı
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 140,
            width: double.infinity, //ekrana yayılsın sağ-sol düzlemde
            child: ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis
                  .horizontal, //default yukarıdan aşağıdaydı. bunu soldan sağa kaydırmalı yaotık
              children: [
                listeElemani('images/model1.jpeg', 'images/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('images/model2.jpeg', 'images/louisvuitton.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('images/model3.jpeg', 'images/chloelogo.png'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('images/model1.jpeg', 'images/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('images/model2.jpeg', 'images/louisvuitton.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('images/model3.jpeg', 'images/chloelogo.png'),
              ],
            ),
          ),

          //üst taraftaki profil listesi bitti. şimdi Card yapıcaz
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              //card yerine bunu kullandık. Card'ın daha gelişmişi bunu
              //color: Colors.blue.shade300,
              elevation: 4,
              borderRadius: BorderRadius.circular(16),
              child: Container(
                height: 500,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage('images/model1.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          //tabletlerde felan geniş açışsın diye yapıyor
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Daisy",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "34 mins ago",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 22,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'This official website features a rşbbet knot zipper jacket that is modern and stylish. It looks very temperament and is recomended to friends.',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        InkWell(
                          //tıklanabilir bir konteyner için inkwell içine aldık
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Detay(
                                    imagePath: 'images/modelgrid1.jpeg')));
                          },
                          child: Hero(
                            tag: 'images/modelgrid1.jpeg',
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              //anlamı: tüm ekranı al, ondan 50 çıkar ve yarısı kadar genişlik ver.
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('images/modelgrid1.jpeg'),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imagePath: 'images/modelgrid2.jpeg')));
                              },
                              child: Hero(
                                tag: 'images/modelgrid2.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  //anlamı: tüm ekranı al, ondan 50 çıkar ve yarısı kadar genişlik ver.
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'images/modelgrid2.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imagePath: 'images/modelgrid3.jpeg')));
                              },
                              child: Hero(
                                tag: 'images/modelgrid3.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  //anlamı: tüm ekranı al, ondan 50 çıkar ve yarısı kadar genişlik ver.
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'images/modelgrid3.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(
                                0.2), //0 ile 1 arası bir değer alır.  1 en koyusu
                          ),
                          child: const Center(
                            child: Text(
                              '# Louis vitton',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(
                                0.2), //0 ile 1 arası bir değer alır.  1 en koyusu
                          ),
                          child: const Center(
                            child: Center(
                              child: Text(
                                '# Chloe',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    color: Colors.brown),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.reply,
                          color: Colors.brown.withOpacity(0.4),
                          size: 30,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          '1.7k',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.comment,
                          color: Colors.brown.withOpacity(0.4),
                          size: 30,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          '325',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 130,
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          '2.3k',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        //stack sayesinde üst üste fotografları konumlandırabiliyoruz.
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover), //container arka planı aslında
              ),
            ),
            Positioned(
              //bu sol üste otomatik gelen küçük logoyu sağ alta almak için gerekli
              top: 50, //üstten 50 ve soldan 50 kaydı. sağ alt köşede artık
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.brown),
          child: const Center(
            child: Text(
              'Follow',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 14, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
