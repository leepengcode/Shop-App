import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop_app/pages/home_menScreen.dart';
import 'package:shop_app/pages/search_page.dart';
import 'package:shop_app/pages/user_page.dart';
import 'package:shop_app/pages/wishlist_page.dart';

class navition_bar extends StatefulWidget {
  const navition_bar({super.key});

  @override
  State<navition_bar> createState() => _navition_barState();
}

class _navition_barState extends State<navition_bar> {
  @override
  List<Map<String, dynamic>> Buttom = [
    {"name": "Home", "icon": Icons.home_outlined},
    {"name": "Search", "icon": Icons.find_in_page_outlined},
    {"name": "Wishlist", "icon": Icons.favorite_border},
    {"name": "User", "icon": Icons.person_outline}
  ];
  List Page=[
    homeMenScreen(),
    search_page(),
    wishlist_page(),
    user_page(),
  ];
  var index_a=0;
  Widget build(BuildContext context) {
    return  SafeArea(
      top: true,
      child: Scaffold(
        body: Page[index_a],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          unselectedItemColor: Colors.black87,
          // fixedColor: Colors.black,
          iconSize: 30,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
          selectedItemColor: Colors.lightBlueAccent,
          currentIndex: index_a ,
          onTap: (var index){
            setState(() {
              index_a=index;
            });
          },
          items: [
            for(int i=0;i<Buttom.length;i++)
              BottomNavigationBarItem(icon: Icon(Buttom[i]['icon']),label: Buttom[i]['name'])
          ],
        ),
      ),
    );
  }
}