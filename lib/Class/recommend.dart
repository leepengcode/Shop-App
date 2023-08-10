class reCard {
  late String img;
  late String ver;
  late String title;
  late String des;
  late String price;

  reCard(
      {required this.img,
        required this.ver,
        required this.title,
        required this.des,
        required this.price});
}

class recItem {
  List<reCard> recitemList = [
    reCard(
        img: "assets/9.jpg",
        ver: "New Season",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
    reCard(
        img: "assets/11.jpg",
        ver: "New Season",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
    reCard(
        img: "assets/10.jpg",
        ver: "New Season",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
    reCard(
        img: "assets/12.jpg",
        ver: "New Season",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
    reCard(
        img: "assets/13.jpg",
        ver: "New Season",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
    reCard(
        img: "assets/14.jpg",
        ver: "New Season",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
    reCard(
        img: "assets/15.jpg",
        ver: "New Season",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
    reCard(
        img: "assets/16.jpg",
        ver: "New Season",
        title: "T-shirt with Embroidery",
        des: "Oversized t-shirt with short sleeves and embroidery on chest.",
        price: "US 14.59"),
  ];
}
