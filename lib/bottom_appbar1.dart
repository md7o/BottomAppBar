import 'package:flutter/material.dart';

class BotoomAppBar1 extends StatefulWidget {
  const BotoomAppBar1({super.key});

  @override
  State<BotoomAppBar1> createState() => _BotoomAppBar1State();
}

class _BotoomAppBar1State extends State<BotoomAppBar1> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFF1E2F55),
              borderRadius: BorderRadius.all(
                Radius.circular(24),
              ),
            ),
            child: BottomNavigationBar(
              iconSize: 25,
              elevation: 0,
              backgroundColor: Colors.transparent,
              selectedItemColor: Colors.amber,
              unselectedItemColor: Colors.blueAccent,
              showUnselectedLabels: false,
              currentIndex: currentIndex,
              onTap: (index) => setState(() => currentIndex = index),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline),
                  label: '.',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'hlao',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings_outlined),
                  label: 'hlao',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
