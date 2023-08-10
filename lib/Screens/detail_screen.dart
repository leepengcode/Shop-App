import 'package:flutter/material.dart';

class detail_screen extends StatelessWidget {

  detail_screen({
    required this.img,
    required this.ver,
    required this.title,
    required this.des,
    required this.price,
});

  var img, ver, title, des, price;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Padding(
          padding: const EdgeInsets.only(left: 1, right: 1),
          child: AppBar(
            actions: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,right: 10),
                    child: Icon(Icons.shopping_bag_outlined,color: Colors.white,size: 30,),
                  ),
                ],
              )
            ],
            backgroundColor: Colors.black87,
            elevation: 0,
            centerTitle: true,
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image(image: AssetImage(img),),
              Padding(
                padding: const EdgeInsets.only(left: 370,top: 20),
                child: Icon(Icons.favorite_border,size: 30,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 370,top: 70),
                child: Icon(Icons.share_outlined,size: 30,),
              )
            ],
          )
        ],
      ),
    );
  }
}
