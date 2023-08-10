import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowNowButton extends StatelessWidget {
  const ShowNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black)),
      child: Center(
        child: Text("Shop Now",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
      ),
    );
  }
}