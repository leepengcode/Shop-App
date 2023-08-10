import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/Class/beauty.dart';
import 'package:shop_app/Class/item.dart';
import 'package:shop_app/Class/mcqueen.dart';
import 'package:shop_app/Class/recommend.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shop_app/Screens/detail_screen.dart';
import 'package:shop_app/Screens/register_login_Screen.dart';

import '../Widgets/beauty.dart';
import '../Widgets/header.dart';
import '../Widgets/mcqueen.dart';
import '../Widgets/newin.dart';
import '../Widgets/recomand.dart';
import '../Widgets/shopnowbutton.dart';
import '../Widgets/tabbar.dart';

class homeMenScreen extends StatefulWidget {
  const homeMenScreen({super.key});

  @override
  State<homeMenScreen> createState() => _homeMenScreenState();
}

class _homeMenScreenState extends State<homeMenScreen> {
  Item item = new Item();
  recItem recitem = new recItem();
  macItem macitem = new macItem();
  buItem buitem = new buItem();
  var isLike = false;

  List imageList = [
    {"id": 1, "image_path": 'assets/19.jpg'},
    {"id": 1, "image_path": 'assets/21.jpg'},
    {"id": 1, "image_path": 'assets/20.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "BUTTERFLY",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 35,
                letterSpacing: 1.5),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 30,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              Tabbar(),
              Expanded(
                child: TabBarView(children: [
                  Container(
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 55,
                          width: double.infinity,
                          color: Colors.black.withOpacity(0.80),
                          child: Center(
                            child: AnimatedTextKit(
                              animatedTexts: [
                                FlickerAnimatedText(
                                  speed: Duration(seconds: 2),
                                  'Sale : up to 60% off selected styles',
                                  textStyle: TextStyle(
                                    color: Colors.lightGreenAccent,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TyperAnimatedText(
                                    speed: Duration(milliseconds: 100),
                                    "Free shipping on order over 40 Dollar",
                                    textStyle: TextStyle(
                                      color: Colors.yellowAccent,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Header(),
                        Container(
                          height: 500,
                          child: Image(
                            image: AssetImage("assets/1.jpg"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "THE HEAT IS ON: 5",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 32,
                                  letterSpacing: 1),
                            ),
                            Text(
                              "LOOKS TO STAY COOL",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 32,
                                  letterSpacing: 1),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Icy air-con and stifling streets - Prada et al serve both",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black)),
                              child: Center(
                                child: Text("Shop Now",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20)),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "New in",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Handpicked daily from the world's best bramds and boutiques",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Newin(item: item),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black)),
                          child: Center(
                            child: Text("Shop Now",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20)),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 500,
                          width: double.infinity,
                          child: Image(
                            image: AssetImage("assets/7.jpg"),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "NEW FROM",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 32,
                                  letterSpacing: 1),
                            ),
                            Text(
                              "BALENCIAGA",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 32,
                                  letterSpacing: 1),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Demna's latest cult classics - starring the Rubber HD mule",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black)),
                              child: Center(
                                child: Text("Shop Now",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20)),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Recommended for you",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Discover new styles, just for you",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Recommend(recitem: recitem),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black)),
                          child: Center(
                            child: Text("Shop Now",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 200,
                          width: double.infinity,
                          child: Image(
                            image: AssetImage("assets/8.jpg"),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Macqueen(macitem: macitem),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black)),
                          child: Center(
                            child: Text("Shop Now",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20)),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Trending this week",
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                print(currentIndex);
                              },
                              child: CarouselSlider(
                                items: imageList
                                    .map(
                                      (item) => Image.asset(
                                        item['image_path'],
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),
                                    )
                                    .toList(),
                                carouselController: carouselController,
                                options: CarouselOptions(
                                  scrollPhysics: const BouncingScrollPhysics(),
                                  autoPlay: true,
                                  aspectRatio: 1,
                                  viewportFraction: 1,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      currentIndex = index;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 0,
                              right: 0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                    imageList.asMap().entries.map((entry) {
                                  return GestureDetector(
                                    onTap: () => carouselController
                                        .animateToPage(entry.key),
                                    child: Container(
                                      width: currentIndex == entry.key ? 17 : 9,
                                      height: 9.0,
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 3.0,
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: currentIndex == entry.key
                                              ? Colors.red
                                              : Colors.teal),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          height: 160,
                          color: Colors.blue,
                          child: Image(
                            image: AssetImage("assets/31.jpg"),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          child: Container(
                              width: double.infinity,
                              height: 160,
                              color: Colors.blue,
                              child: Image(
                                image: AssetImage("assets/32.jpg"),
                                fit: BoxFit.fitWidth,
                              )),
                        )
                      ],
                    ),
                  ),
                  Beauty_Shop(buitem: buitem),
            ],
          ),
        ),
    ]
      ),
    )
      )
    );
  }
}

class Beauty_Shop extends StatelessWidget {
  const Beauty_Shop({
    super.key,
    required this.buitem,
  });

  final buItem buitem;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(children: [
      SizedBox(
        height: 20,
      ),
      Container(
        height: 55,
        width: double.infinity,
        color: Colors.black.withOpacity(0.80),
        child: Center(
          child: AnimatedTextKit(
            animatedTexts: [
              FlickerAnimatedText(
                speed: Duration(seconds: 2),
                'Sale : up to 60% off selected styles',
                textStyle: TextStyle(
                  color: Colors.lightGreenAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TyperAnimatedText(
                  speed: Duration(milliseconds: 100),
                  "Free shipping on order over 40 Dollar",
                  textStyle: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  )),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Header(),
      SizedBox(
        height: 15,
      ),
      Image(image: AssetImage("assets/30.jpg")),
      SizedBox(
        height: 25,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "THE BEST OF SUMMER",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
                letterSpacing: 1),
          ),
          Text(
            "BEAUTY IS HERE",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
                letterSpacing: 1),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Icy air-con and stifling streets - Prada et al serve both",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black)),
            child: Center(
              child: Text("Shop Now",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 20)),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Discover: vacation beauty perfect for packing",
                style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              beauty(buitem: buitem),
              SizedBox(
                height: 20,
              ),
              ShowNowButton(),
            ],
          ),
        ],
      ),
      SizedBox(
        height: 60,
      ),
      Image(image: AssetImage("assets/36.jpg")),
      SizedBox(
        height: 25,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "JUST IN FORM ISAMAYA",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 31,
                letterSpacing: 1),
          ),
          Text(
            "BEAUTY",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
                letterSpacing: 1),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Discover the shades, finishes and formulas of Industrial 2.0, the "
            "brand's exciting new collection of chrome eyeshadow pigments and glossy lip tints",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 30,),
          ShowNowButton(),
          SizedBox(
            height: 55,
          ),
          Image(image: AssetImage("assets/33.jpg")),
          SizedBox(
            height: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "OUR GO-TO VACATION",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 32,
                    letterSpacing: 1),
              ),
              Text(
                "SCENTS",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 32,
                    letterSpacing: 1),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "From fresh florals to zingy citruses, this carution"
                    "spotlights the secnts guranteed to instanly transport you to a far-flung sunny isle ",
                style: TextStyle(
                    fontSize: 17, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 30,),
              Container(
                width: double.infinity,
                height: 160,
                color: Colors.blue,
                child: Image(
                  image: AssetImage("assets/31.jpg"),
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                child: Container(
                    width: double.infinity,
                    height: 160,
                    color: Colors.blue,
                    child: Image(
                      image: AssetImage("assets/37.jpg"),
                      fit: BoxFit.fitWidth,
                    )),
              )
        ],
      ),
    ])]),
    );
  }
}













