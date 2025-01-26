import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.grey[800],
      child: Text(
        "Footer Component © 2025",
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
