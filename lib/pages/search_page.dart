import 'dart:math';

import 'package:flutter/material.dart';

class search_page extends StatefulWidget {
  const search_page({super.key});

  @override
  State<search_page> createState() => _search_pageState();
}

class _search_pageState extends State<search_page> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("SEARCH",style: TextStyle(
              fontSize: 35,
              color: Colors.black,
              letterSpacing: 1,
              fontWeight: FontWeight.w900
            ),),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
            height: 45,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                    fillColor: Colors.grey.withOpacity(0.2),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  prefixIcon: Icon(Icons.search_outlined,size: 27,color: Colors.grey,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                 hintText: "Search here",
                  hintStyle: TextStyle(
                    fontSize: 20
                  ),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                ),
              ),
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: () {

              },
              child: ListTile(
                leading: Text("Brands",style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w500
                ),),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: () {

              },
              child: ListTile(
                leading: Text("Brands",style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w500
                ),),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black),
              ),
            )
          ],
        ),
      )
    );
  }
}
