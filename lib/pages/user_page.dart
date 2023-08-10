import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:shop_app/Screens/register_login_Screen.dart';

class user_page extends StatefulWidget {
  const user_page({super.key});

  @override
  State<user_page> createState() => _user_pageState();
}

class _user_pageState extends State<user_page> {
  final _controller = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 32,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15,bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ME",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Let's get personal",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Access your Bag & Wishlist on any of your devices",
                  style: TextStyle(
                      fontSize: 17, color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => register_login_screen(),));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 165,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Register",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Container(
                        width: 165,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black),
                        child: Center(
                          child: Text("Sign In",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Language and region",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: Icon(Icons.language_outlined,color: Colors.black,),
                      title: Text("Enflish (United Kingdom)"),
                      subtitle: Text("Language"),
                    ),
                    ListTile(
                      leading: Icon(Icons.attach_money_outlined,color: Colors.black),
                      title: Text("United State USD"),
                      subtitle: Text("Region"),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "My Shop Preferences",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Checkbox(
                            side: BorderSide(color: Colors.black),
                            activeColor: Colors.black,
                            value: false,
                            onChanged: (value) {},
                          ),
                          Text("Women")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Checkbox(
                            side: BorderSide(color: Colors.black),
                            activeColor: Colors.black,
                            value: true,
                            onChanged: (value) {},
                          ),
                          Text("Men")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "My Settings",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {

                      },child: Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Center(
                            child: Text(
                              "Notifications",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Biometric authentication",
                          style: TextStyle(fontSize: 17),
                        ),
                        AdvancedSwitch(
                          controller: _controller,
                          activeColor: Colors.green,
                          inactiveColor: Colors.grey,
                          borderRadius:
                              BorderRadius.all(const Radius.circular(15)),
                          width: 35.0,
                          height: 20.0,
                          enabled: true,
                          disabledOpacity: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Support",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 15,),
                    InkWell(
                      onTap: () {

                      },child: Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Center(
                            child: Text(
                              "About Farfetch",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                    InkWell(
                      onTap: () {

                      },child: Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Center(
                            child: Text(
                              "Term & Conditions",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                    InkWell(
                      onTap: () {

                      },child: Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Center(
                            child: Text(
                              "Privacy Polacy",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                    InkWell(
                      onTap: () {

                      },child: Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Center(
                            child: Text(
                              "FAQ's & guides",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                    InkWell(
                      onTap: () {

                      },child: Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Center(
                            child: Text(
                              "Boutique partners",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),

                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                    child: Text(
                  "Contect Us",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                )),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {

                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.call_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Phone",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {

                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.email_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Email",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Center(child: Text("Avalilable Monday to Friday 9am - 6pm GMT"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
