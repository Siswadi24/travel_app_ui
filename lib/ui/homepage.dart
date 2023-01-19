import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      color: Color(0xFFf6f6f6),
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        primary: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          SizedBox(
            width: double.infinity,
            height: 50,
            child: SafeArea(
              child: SingleChildScrollView(
                // scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                'assets/images/avatar_profile.png',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'Hai,Siswadi Perdana Putra',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Icon(
                          Icons.circle_notifications,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: Material(
              child: Container(
                margin: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 5,
                  bottom: 8,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFffffff).withOpacity(1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Cari Tempatmu!",
                    hintStyle: TextStyle(
                      color: Color(0xFFD3D3D3).withOpacity(1),
                    ),
                    filled: true,
                    fillColor: Color(0xFFffffff).withOpacity(1),
                    counterStyle: TextStyle(
                      color: Color(0xFFffffff).withOpacity(1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 0,
                      ),
                    ),
                    contentPadding: EdgeInsets.only(left: 16),
                  ),
                  onChanged: (value) {},
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 0, 0, 0).withOpacity(1),
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Spesial untukmu",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    'Lihat semua',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              height: 300,
              child: ListView(
                shrinkWrap: true,
                reverse: false,
                primary: true,
                physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 8,
                    ),
                    child: Stack(
                      children: [
                        Opacity(
                          opacity: 0.8,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'assets/images/keraton_Solo.jpg',
                              width: 250,
                              height: 300,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            top: 10,
                            bottom: 55,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 180,
                                  top: 30,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF).withOpacity(1),
                                        borderRadius: BorderRadius.circular(32),
                                      ),
                                      child: Icon(
                                        Icons.favorite,
                                        size: 18,
                                        color: Color(0xFFFF0000).withOpacity(1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Keraton',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 4,
                                        bottom: 4,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 15,
                                            color: Color(0xFFFFFFFF)
                                                .withOpacity(1),
                                          ),
                                          Text(
                                            'Solo, Jawa Tengah',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color:
                                              Color(0xFFF7CC3B).withOpacity(1),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 4,
                                          ),
                                          child: Text(
                                            '4.5',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 8,
                    ),
                    child: Stack(
                      children: [
                        Opacity(
                          opacity: 0.8,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'assets/images/Air_Terjun_Jumog.jpg',
                              width: 250,
                              height: 300,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            top: 10,
                            bottom: 55,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 180,
                                  top: 30,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF).withOpacity(1),
                                        borderRadius: BorderRadius.circular(32),
                                      ),
                                      child: Icon(
                                        Icons.favorite,
                                        size: 18,
                                        color: Color(0xFFFF0000).withOpacity(1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Air Terjun Jumog',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 4,
                                        bottom: 4,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 15,
                                            color: Color(0xFFFFFFFF)
                                                .withOpacity(1),
                                          ),
                                          Text(
                                            'Karanganyar, Jawa Tengah',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color:
                                              Color(0xFFF7CC3B).withOpacity(1),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 4,
                                          ),
                                          child: Text(
                                            '4.0',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 8,
                    ),
                    child: Stack(
                      children: [
                        Opacity(
                          opacity: 0.8,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'assets/images/mongkrang.jpg',
                              width: 250,
                              height: 300,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            top: 10,
                            bottom: 55,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 180,
                                  top: 30,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF).withOpacity(1),
                                        borderRadius: BorderRadius.circular(32),
                                      ),
                                      child: Icon(
                                        Icons.favorite,
                                        size: 18,
                                        color: Color(0xFFFF0000).withOpacity(1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pegunungan Mongkrang',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 4,
                                        bottom: 4,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 15,
                                            color: Color(0xFFFFFFFF)
                                                .withOpacity(1),
                                          ),
                                          Text(
                                            'Karanganyar, Jawa Tengah',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color:
                                              Color(0xFFF7CC3B).withOpacity(1),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 4,
                                          ),
                                          child: Text(
                                            '4.5',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Row(
                children: [
                  Text(
                    'Populer',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                  ),
                  Text(
                    'Tempat',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            height: 150,
            child: Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
                bottom: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Color(0xFFffffff).withOpacity(0.8),
              ),
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/kebun_teh_kemuning.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kebun Teh Kemuning',
                            style: TextStyle(
                              color: Color(0xFFa2a2a2),
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                            ),
                            child: Text(
                              'Kebun teh ini adalah sebuah tempat wisata yang indah yang berisi hamparan kebun teh yang hijau dan luas.',
                              textAlign: TextAlign.left,
                              maxLines: 3,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Text(
                            '10.000/orang',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: Color(0xFF0097ff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            height: 150,
            child: Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
                bottom: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Color(0xFFffffff).withOpacity(0.8),
              ),
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/keraton_Solo.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kebun Teh Solo',
                            style: TextStyle(
                              color: Color(0xFFa2a2a2),
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                            ),
                            child: Text(
                              'Kebun teh ini adalah sebuah tempat wisata yang indah yang berisi hamparan kebun teh yang hijau dan luas.',
                              textAlign: TextAlign.left,
                              maxLines: 3,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Text(
                            '10.000/orang',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: Color(0xFF0097ff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
