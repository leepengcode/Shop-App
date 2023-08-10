import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Class/item.dart';
import '../Screens/detail_screen.dart';

class Newin extends StatelessWidget {
  const Newin({
    super.key,
    required this.item,
  });

  final Item item;

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
              itemCount: item.itemList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 2, mainAxisSpacing: 20),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => detail_screen(img: item.itemList[index].img, ver: item.itemList[index].ver,title: item.itemList[index].title,
                              des: item.itemList[index].des,price: item.itemList[index].price),
                        ));
                  },
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image(
                              image: AssetImage(item.itemList[index].img),
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
                          item.itemList[index].ver,
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          item.itemList[index].title,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Column(
                          children: [
                            Text(
                              item.itemList[index].des,
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          item.itemList[index].price,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
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