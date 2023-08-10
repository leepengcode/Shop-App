import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Class/recommend.dart';

class Recommend extends StatelessWidget {
  const Recommend({
    super.key,
    required this.recitem,
  });

  final recItem recitem;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: 381,
            height: 460,
            color: Colors.white,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recitem.recitemList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 2, mainAxisSpacing: 20),
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image(
                            image: AssetImage(recitem.recitemList[index].img),
                            height: 300,
                            width: 300,
                            fit: BoxFit.fitWidth,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 190, top: 10),
                            child: const Icon(
                              Icons.favorite_border,
                              size: 32,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        recitem.recitemList[index].ver,
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        recitem.recitemList[index].title,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Column(
                        children: [
                          Text(
                            recitem.recitemList[index].des,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        recitem.recitemList[index].price,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}