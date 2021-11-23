import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  var imagePath;
  Detay({this.imagePath, Key? key}) : super(key: key);

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //Stack ile üst üste elemanlar koyabiliyoruz.
        children: [
          Hero(
            //iki tarafta da kullanılması gerekiyor animasyonlu resim geçişlerinde
            tag: widget.imagePath, // bu tag da iki tarafta aynı olmalı.
            child: Container(
              width: MediaQuery.of(context)
                  .size
                  .width, //her cihazda tam ekran boyutunda olacak
              height: MediaQuery.of(context)
                  .size
                  .height, //her cihaz tipinde tam ekran olacak
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imagePath),
                    fit: BoxFit
                        .cover), //bir üst kısımda olduğundan widget kullandık.
              ),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                child: icSayfa(),
                height: 260,
                width: MediaQuery.of(context).size.width -
                    30, //ekran genişliğinden 30 azı
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          resminUstundeki(),
        ],
      ),
    );
  }

  icSayfa() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 130,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey), //çerçeve rengi
                    image: const DecorationImage(
                        image: AssetImage('images/dress.jpg'),
                        fit: BoxFit.contain)),
              ),
            ),
            Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, //hepsi soldan başlayacak
              children: [
                const Text(
                  'LAMINATED',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Louis Vuitton',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 180,
                  child: const Text(
                    'One button V-neck sling long-sleeved waist female stitching dress',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
          ],
        ),
        const Divider(),
        Padding(
          padding:
              const EdgeInsets.only(left: 15, top: 10, bottom: 2, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$6500',
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 22),
              ), //indexi böyle iptal etti
              FloatingActionButton(
                child: Icon(Icons.arrow_forward_ios),
                onPressed: () {},
                backgroundColor: Colors.brown,
              ),
            ],
          ),
        ),
      ],
    );
  }

  resminUstundeki() {
    return Positioned(
      child: Container(
        height: 40,
        width: 130,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Center(
              child: Text(
                'LAMINATED',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 14,
            ),
          ],
        ),
      ),
      top: MediaQuery.of(context).size.height / 2,
      left: 50,
    );
  }
}
