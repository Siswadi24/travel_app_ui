import 'package:flutter/material.dart';
import 'package:travel_app/ui/homepage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.zero,
            child: Image.asset(
              'assets/images/welcome_page_bg.jpg',
              width: double.infinity,
              height: 1000,
              fit: BoxFit.cover,
            ),
          ),
          ListView(
            reverse: false,
            physics: AlwaysScrollableScrollPhysics(),
            children: [
              SizedBox(
                width: double.maxFinite,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Enjoy Your Travel',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        decoration: TextDecoration.none,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                height: 350,
              ),
              SizedBox(
                width: double.maxFinite,
                height: 170,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Get Ready For',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Your Trip',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    'Temukan semua impianmu di sini',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.maxFinite,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF3285ff).withOpacity(1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(17),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            'Get Started Your Journey',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              decoration: TextDecoration.none,
                              color: Color(0xFFffffff).withOpacity(1),
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
        ],
      ),
    );
  }
}
