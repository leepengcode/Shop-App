class buCard {
  late String img;
  late String title;
  late String des;
  late String price;

  buCard(
      {required this.img,
        required this.title,
        required this.des,
        required this.price});
}

class buItem {
  List<buCard> buitemList = [
    buCard(
        img: "assets/33.jpg",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
    buCard(
        img: "assets/34.jpg",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
    buCard(
        img: "assets/35.jpg",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
    buCard(
        img: "assets/36.jpg",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
    buCard(
        img: "assets/38.jpg",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
    buCard(
        img: "assets/33.jpg",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
  ];
}
