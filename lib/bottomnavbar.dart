import 'package:farmsbook/screens/chat.dart';
import 'package:farmsbook/screens/home.dart';
import 'package:farmsbook/screens/orders.dart';
import 'package:farmsbook/screens/profile.dart';
import 'package:farmsbook/screens/requirements.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ChatPage(),
    OrdersPage(),
    ProfilePage(),
    RequirementPage()
  ];
  int i = 0;

  void _onItemTapped(int index) {
    setState(() {
      i = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: const Color(0xffE8E7E8),
        body: Center(
          child: _widgetOptions.elementAt(i),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff45701D),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_answer),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.quiz_sharp),
              label: 'Requirements',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.car_repair),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              label: 'Profile',
            ),
          ],
          currentIndex: i,
          selectedItemColor: Colors.white,
          unselectedItemColor: const Color(0xffA0B786),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
