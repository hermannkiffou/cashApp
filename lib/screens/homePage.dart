import 'package:cashapp/screens/profilPage.dart';
import 'package:flutter/material.dart';
import 'package:cashapp/screens/managePage.dart';

class HomePage extends StatefulWidget {
  static const String id = 'homePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  _changeScreen(int val) {
    setState(() {
      index = val;
    });
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Cash App"),
        ),
      ),
      body: index == 1
          ? Manage()
          : index == 2
              ? Profil()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text("Home Page !"),
                    )
                  ],
                ),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: BottomNavigationBar(
          onTap: _changeScreen,
          currentIndex: index,
          backgroundColor: Colors.white,
          unselectedFontSize: 20,
          unselectedItemColor: Colors.black,
          unselectedIconTheme: const IconThemeData(
            size: 30,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          selectedIconTheme: const IconThemeData(
            size: 40,
            color: Colors.orange,
          ),
          elevation: 5.0,
          selectedFontSize: 20,
          iconSize: 40,
          selectedItemColor: Colors.indigo,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
              ),
              label: "Gestion",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}
