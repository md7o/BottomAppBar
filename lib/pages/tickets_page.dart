import 'package:flutter/material.dart';

class TicketsPage extends StatelessWidget {
  const TicketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191E2C),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Icon(
            Icons.bar_chart_rounded,
            size: 30,
            color: Colors.amber,
          ),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.search_rounded,
              size: 30,
              color: Colors.amber,
            ),
          )
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(
            height: 600,
          ),
          Text(
            'There are no tickets',
            style: TextStyle(
              color: Color(0x36FFC107),
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
