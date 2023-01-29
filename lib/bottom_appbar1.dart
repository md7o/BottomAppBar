import 'package:appbar_project/page_design.dart';
import 'package:flutter/material.dart';

class BotoomAppBar1 extends StatefulWidget {
  const BotoomAppBar1({super.key});

  @override
  State<BotoomAppBar1> createState() => _BotoomAppBar1State();
}

class _BotoomAppBar1State extends State<BotoomAppBar1> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const page_design(),
      backgroundColor: const Color(0xFF1E2C47),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(0, 25, 40, 54),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: BottomNavigationBar(
            iconSize: 30,
            elevation: 0,
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.blueAccent,
            showUnselectedLabels: false,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
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
