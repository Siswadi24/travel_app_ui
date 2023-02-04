import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          primary: true,
          physics: AlwaysScrollableScrollPhysics(),
          children: <Widget>[
            SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  width: double.maxFinite,
                  height: 55,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Color(0xFF000000).withOpacity(1),
                          size: 24,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 120),
                      // ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Detail',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              decoration: TextDecoration.none,
                              color: Color(0xFF000000).withOpacity(1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 400,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF000000).withOpacity(0.8),
                            blurRadius: 20,
                            spreadRadius: 0,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(18),
                        ),
                        child: Opacity(
                          opacity: 0.9,
                          child: Image.asset(
                            'assets/images/keraton_Solo.jpg',
                            width: double.maxFinite,
                            height: 400,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    padding: const EdgeInsets.all(30),
                    width: double.maxFinite,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        LayoutBuilder(
                          builder: (context, constraints) {
                            final marginLeft = constraints.maxWidth * 0.77;
                            return Container(
                              width: 50,
                              height: 50,
                              margin: EdgeInsets.only(
                                  left: marginLeft, bottom: 210),
                              decoration: BoxDecoration(
                                color: Color(0xFFffffff).withOpacity(0.5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: IconButton(
                                  icon: Icon(
                                    isLiked
                                        ? Icons.favorite_border
                                        : Icons.favorite,
                                    color: Color(0xFFff0000).withOpacity(1),
                                    size: 24,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isLiked = !isLiked;
                                    });
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Keraton Surakarta',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                decoration: TextDecoration.none,
                                color: Color(0xFFFFFFFF).withOpacity(1),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Color(0xFFffffff).withOpacity(0.9),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      'Solo, Jawa Tengah',
                                      style: TextStyle(
                                        color:
                                            Color(0xFFffffff).withOpacity(0.9),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Color(0xFFf7cc3b).withOpacity(0.9),
                              size: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                            ),
                            Text(
                              '4.5',
                              style: TextStyle(
                                color: Color(0xFFffffff).withOpacity(0.9),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 25,
            ),
            SizedBox(
              width: double.maxFinite,
              height: 140,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  'Sebuah Kerajaan Jawa yang memerintah beberapa abad yang lalu yang sekarang telah menjadi ikon kota Solo. Kerajaan ini bernama Keraton Kasunanan, didirikan oleh Susuhan Pakubuwono II (Sunan PB II) pada tahun 1744 sebagai pengganti Keraton Kartasura yang rusak akibat Geger Pecinan pada tahun 1743.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 127, 122, 122).withOpacity(1),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                padding: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFffffff).withOpacity(1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        child: Image.asset(
                          'assets/images/keraton_Solo.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        child: Image.asset(
                          'assets/images/keraton_Solo.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        child: Image.asset(
                          'assets/images/keraton_Solo.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 100,
              child: Container(
                margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
                padding: const EdgeInsets.all(24),
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 131, 129, 129).withOpacity(1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Rp 10.000/',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        'Orang',
                        style: TextStyle(
                          color: Color(0xFFcfcfcf).withOpacity(1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFf7cc3b).withOpacity(1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Pesan',
                                style: TextStyle(
                                  color: Color(0xFFffffff).withOpacity(1),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ),
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
