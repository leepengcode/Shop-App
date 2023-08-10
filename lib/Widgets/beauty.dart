import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Class/beauty.dart';

class beauty extends StatelessWidget {
  const beauty({
    super.key,
    required this.buitem,
  });

  final buItem buitem;

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
              itemCount: buitem.buitemList.length,
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
                            image: AssetImage(buitem.buitemList[index].img),
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
                        buitem.buitemList[index].title,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Column(
                        children: [
                          Text(
                            buitem.buitemList[index].des,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        buitem.buitemList[index].price,
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