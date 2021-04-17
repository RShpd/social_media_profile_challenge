import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/screens/home_screen.dart';
import 'package:social_media_profile_screen/screens/movie_screen.dart';
import 'package:social_media_profile_screen/screens/profile_screen.dart';
import 'package:social_media_profile_screen/screens/search_screen.dart';
import 'package:social_media_profile_screen/screens/shopping_screen.dart';

const iconsPath = 'assets/icons/';
const imagePath = 'assets/images/';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media Profile Screen',
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<Widget> _children = [
    HomeScreen(),
    SearchScreen(),
    MovieScreen(),
    ShoppingScreen(),
    ProfileScreen(),
  ];
  final iconColor = Colors.black;
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTabIndex,
        onTap: (index) => setState(() => _currentTabIndex = index),
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home,
              color: iconColor,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              CupertinoIcons.search,
              color: iconColor,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.movie_creation_outlined,
              color: iconColor,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              CupertinoIcons.bag,
              color: iconColor,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: CircleAvatar(
              child: Image.asset(
                '${imagePath}avatar.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
