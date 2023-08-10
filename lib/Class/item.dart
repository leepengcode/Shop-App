class Card {
  late String img;
  late String ver;
  late String title;
  late String des;
  late String price;

  Card(
      {required this.img,
      required this.ver,
      required this.title,
      required this.des,
      required this.price});
}

class Item {
  List<Card> itemList = [
    Card(
        img: "assets/1.1.jpg",
        ver: "New Season",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
    Card(
        img: "assets/2.jpg",
        ver: "New Season",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
    Card(
        img: "assets/3.jpg",
        ver: "New Season",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
    Card(
        img: "assets/4.jpg",
        ver: "New Season",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
    Card(
        img: "assets/5.jpg",
        ver: "New Season",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
    Card(
        img: "assets/6.jpg",
        ver: "New Season",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
  ];
}
