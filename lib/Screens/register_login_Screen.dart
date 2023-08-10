import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class register_login_screen extends StatelessWidget {
  const register_login_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Container(
                      width: 320,
                      height: 30,
                      child: TabBar(tabs: [
                        Tab(
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "I'M NEW HERE",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(children: [
                      Container(
                        child: ListView(
                          children: [

                            SizedBox(height: 50,),
                            TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                label: Text("Email Address"),
                                prefixIcon: Icon(Icons.email_outlined,color: Colors.black,)
                              ),
                            ),
                            SizedBox(height: 20,),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                label: Text("Password"),
                                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                                prefixIcon: Icon(Icons.password,color: Colors.black,)
                              ),
                            ),
                            SizedBox(height: 30,),
                            Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black
                              ),
                              child: Center(
                                child: Text("SIGN IN",style: TextStyle(
                                  color: Colors.white,fontSize: 20
                                ),),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Center(child: Text("Forgot Password?",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),)),
                            SizedBox(height: 20,),
                            Center(child: Text("OR",style: TextStyle(
                                fontSize: 16,
                            ),)),
                              SizedBox(height: 20,),
                            Card(
                              child: Container(
                                  height: 50,
                                  width: double.infinity,
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 60,left: 10),
                                        child: SvgPicture.asset("assets/facebook.svg",height: 30,width: 20),
                                      ),
                                      Center(child: Text("Continue with Google",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),)),
                                    ],
                                  )
                              ),
                            ),
                            Card(
                              child: Container(
                                  height: 50,
                                  width: double.infinity,
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 60,left: 10),
                                        child: SvgPicture.asset("assets/google.svg",height: 30,width: 20),
                                      ),
                                      Center(child: Text("Continue with Facebook",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),)),
                                    ],
                                  )
                              ),
                            ),
                            SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Text("New to BUTTERFLY?",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                  fontSize: 16
                              ),),
                              Text(" Register",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                              ),)
                            ],)
                          ],
                        ),
                      ),
                      Container(
                        child: ListView(
                          children: [
                            SizedBox(height: 50,),
                            TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  label: Text("Full Name"),
                                  prefixIcon: Icon(Icons.email_outlined,color: Colors.black,)
                              ),
                            ),
                            SizedBox(height: 20,),
                            TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  label: Text("Email Address"),
                                  prefixIcon: Icon(Icons.email_outlined,color: Colors.black,)
                              ),
                            ),
                            SizedBox(height: 20,),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  label: Text("Password"),
                                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                                  prefixIcon: Icon(Icons.password,color: Colors.black,)
                              ),
                            ),
                            SizedBox(height: 30,),
                            Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black
                              ),
                              child: Center(
                                child: Text("SIGN UP",style: TextStyle(
                                    color: Colors.white,fontSize: 20
                                ),),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Card(
                              child: Container(
                                  height: 50,
                                  width: double.infinity,
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 60,left: 10),
                                        child: SvgPicture.asset("assets/facebook.svg",height: 30,width: 20),
                                      ),
                                      Center(child: Text("Continue with Google",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),)),
                                    ],
                                  )
                              ),
                            ),
                            Card(
                              child: Container(
                                  height: 50,
                                  width: double.infinity,
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 60,left: 10),
                                        child: SvgPicture.asset("assets/google.svg",height: 30,width: 20),
                                      ),
                                      Center(child: Text("Continue with Facebook",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),)),
                                    ],
                                  )
                              ),
                            ),
                            SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Have an account?",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),),
                                Text(" Login here",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),)
                              ],)
                          ],
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            )));
  }
}
