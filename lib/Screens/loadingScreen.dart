
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shop_app/Screens/welcomeScreen.dart';

class loadingScreen extends StatefulWidget {
  loadingScreen({super.key});

  @override
  State<loadingScreen> createState() => _loadingState();
}

class _loadingState extends State<loadingScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2)).then((value) => {
      Navigator.of(context).pushReplacement(
        CupertinoPageRoute(builder: (ctx) => const homeScreen()),
      )
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image(image: AssetImage("assets/logo.png"),fit: BoxFit.cover,
           height: 140,
           width: 250),
            SpinKitThreeBounce(
              color: Colors.blueAccent,
              size: 40.0,
            )
          ],
        ),
      ),
    );
  }
}