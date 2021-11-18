import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Stack(
          children: [
            Positioned(
              top: 0.0,
              right: 0.0,
              left: 0.0,
              child: Image.asset(
                'assets/images/homepicture.png',
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: 50.0,
              right: 0.0,
              left: 0.0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Text(
                      'Medikal Takvim',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Text(
                      'Egitim Platformuna',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Text(
                      'Hosgeldiniz',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 220.0,
              left: 30.0,
              child: Text(
                'Onerilen Etkinlikler',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        bottomNavigationBar: DotNavigationBar(
          //backgroundColor: Colors.orange,
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: Colors.black,
          unselectedItemColor: Colors.grey[300],
          marginR: EdgeInsets.all(0),
          borderRadius: 0.0,
          //paddingR: EdgeInsets.all(0),
          //enableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: const Text('Anasayfa'),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: const Text('Egitimler'),
            ),

            /// Search
            DotNavigationBarItem(
              icon: const Text('Organizatorler'),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: const Text('Profil'),
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { home, favorite, search, person }
