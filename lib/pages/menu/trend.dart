import 'package:flutter/material.dart';

class Trend extends StatelessWidget {
  const Trend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trend"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text("INI Trend"),
              
            ],
          ),
        ),
      ),
    );
  }
}
