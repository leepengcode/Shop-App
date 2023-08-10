import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(tabs: [
      Tab(
        child: Text(
          "FASHION",
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              letterSpacing: 1,
              fontWeight: FontWeight.w500),
        ),
      ),
      Tab(
        child: Text(
          "BEAUTY",
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              letterSpacing: 1,
              fontWeight: FontWeight.w500),
        ),
      ),
    ]);
  }
}