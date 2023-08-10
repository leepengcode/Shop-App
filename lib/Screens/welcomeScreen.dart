import 'package:flutter/material.dart';
import 'package:shop_app/navigation_Screen.dart';
import 'package:shop_app/pages/home_menScreen.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 430,
            child:Image(image: AssetImage("assets/shop.jpg"),fit: BoxFit.fitHeight,)
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Column(
              children: [
                Text("WELCOME TO",style: TextStyle(
                  fontWeight: FontWeight.w900
                    ,fontSize: 40,
                  letterSpacing: 3,
                  color: Colors.teal
                ),),
                Text("BUTTERFLY",style: TextStyle(
                    fontWeight: FontWeight.w900
                    ,fontSize: 40,
                    letterSpacing:3,
                  color: Colors.pink
                )),
                SizedBox(height: 15,),
                Text("Experience fast and hassle-free cheeckout, a",style: TextStyle(
                  fontSize: 17,
                    letterSpacing: 0.3,
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                ),),
                SizedBox(height: 5,),
                Text("personalised homepage and early access to ",style: TextStyle(
                    fontSize: 17,
                    letterSpacing: 0.3,
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                )),
                SizedBox(height: 5,),
                Text("Sales",style: TextStyle(
                    fontSize: 17,
                  letterSpacing: 0.3,
                  color: Colors.black,
                  fontWeight: FontWeight.w500
                )),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Container(
                      width: 165,
                        height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text("Shop Women",style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          fontWeight: FontWeight.w600
                        ),),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  navition_bar(),));
                      },
                      child: Container(
                        width: 165,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text("Shop Men",style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                              fontWeight: FontWeight.w600
                          ),),
                        ),
                      ),
                    )
                  ],),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
