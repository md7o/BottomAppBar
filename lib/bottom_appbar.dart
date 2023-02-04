import 'package:appbar_project/pages/favorite_page.dart';
import 'package:appbar_project/pages/home_page.dart';
import 'package:appbar_project/pages/setting_page.dart';
import 'package:appbar_project/pages/tickets_page.dart';
import 'package:flutter/material.dart';

class BotoomAppBar extends StatefulWidget {
  const BotoomAppBar({super.key});

  @override
  State<BotoomAppBar> createState() => _BotoomAppBarState();
}

class _BotoomAppBarState extends State<BotoomAppBar> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const FavoritePage(),
    const TicketsPage(),
    const SettingPage(),
    // const Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex], //to show pages at click

      backgroundColor:
          const Color(0xFF1E2C47), //container bottom AppBar backgroundColor

      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: Color(0x00192836),
          ),
          child: BottomNavigationBar(
            iconSize: 30,
            elevation: 0, // 0 value to remove inner shadow
            backgroundColor: Colors.transparent, //bottom navigaton background
            type: BottomNavigationBarType.fixed, //click effect
            selectedItemColor: Colors.amber, //selected button Color
            unselectedItemColor: Colors.blueAccent, //unselected button Color
            showUnselectedLabels:
                false, //show text under icon unselected button
            currentIndex: currentIndex, //to change button when click
            onTap: (index) =>
                setState(() => currentIndex = index), //change pages when click
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_rounded),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket_rounded),
                label: 'Tickets',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_rounded),
                label: 'Setting',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
