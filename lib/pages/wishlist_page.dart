import 'package:flutter/material.dart';

class wishlist_page extends StatefulWidget {
  const wishlist_page({super.key});

  @override
  State<wishlist_page> createState() => _wishlist_pageState();
}

class _wishlist_pageState extends State<wishlist_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.shopping_bag_outlined,color: Colors.black,size: 32,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Text("WISHLIST",style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                letterSpacing: 1,
                fontWeight: FontWeight.w900
            ),),
          ],
        ),
      ),
    );
  }
}
