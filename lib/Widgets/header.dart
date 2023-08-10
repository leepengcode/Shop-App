import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Screens/register_login_Screen.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Let's get pefersonal",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Sign in for a tailored shopping experience",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 30,
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
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
        ],
      ),
    );
  }
}