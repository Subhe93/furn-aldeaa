class Offer {
  String name;
  String offerText;
  String image;
  List<Resturant> resturantsList;

  Offer({this.name, this.offerText, this.image, this.resturantsList});
}

class Resturant {
  String image;
  String name;
  String desc;
  String price;
  String distance;
  String deliveryFee;
  bool freeOffer;
  bool favorite;

  Resturant(
      {this.favorite,
      this.freeOffer,
      this.image,
      this.name,
      this.desc,
      this.price,
      this.distance,
      this.deliveryFee});
}

class Dish {
  String name;
  String image;
  double price;

  Dish({this.name, this.image, this.price});
}

class cartItemModel {
  String name;
  double price;
  cartItemModel({this.name, this.price});
}

List<Dish> dishes = [
  Dish(name: " دجاج مدخن", image: "images/دجاج مدخن.JPG", price: 22.99),
  Dish(name: "حمص ناعم", image: "images/حمص.jpg", price: 18.99),
  Dish(name: "بيتزا مارغاريتا", image: "images/بيتزا مارغريتا.jpg", price: 22),
];

List<Offer> offers = [
  Offer(
      name: "بيتزا",
      offerText: "1 + 1 مجاني",
      image: "images/Group 3667.png",
      resturantsList: resturantList),
  Offer(
      name: "بيتزا",
      offerText: "تخفيض ٥٠٪",
      image: "images/بيتزا مارغريتا.jpg",
      resturantsList: resturantList),
  Offer(
      name: "تحلية",
      offerText: "تخفيض ٣٠٪",
      image: "images/كيكة العسل.jpg",
      resturantsList: resturantList),
];

Resturant resturant1 = Resturant(
    favorite: true,
    image: "images/بيتزا الضيعة.JPG",
    name: "بيتزا الضيعة",
    desc: "4.6 (1K+) - \$\$\$ - بيتزا",
    price: "\$10",
    distance: "30-50 m",
    deliveryFee: "\$3.55 Delivery",
    freeOffer: false);
Resturant resturant2 = Resturant(
    image: "images/سوشي رول.jpg",
    name: "سوشي رول",
    desc: "4.6 (1K+) - \$\$\$ -مأكولات بحريه",
    price: "\$10",
    distance: "30-50 m",
    deliveryFee: "لايوجد توصيل",
    favorite: false,
    freeOffer: false);
Resturant resturant3 = Resturant(
    image: "images/سلطة الباستا.jpg",
    name: "سلطة الباستا",
    desc: "4.6 (1K+) - \$\$\$ - سلطة",
    price: "\$10",
    distance: "30-50 m",
    deliveryFee: "توصيل مجاني",
    favorite: false,
    freeOffer: false);
Resturant resturant4 = Resturant(
    image: "images/بيتزا الرانش.jpg",
    name: "بيتزا الرانش",
    desc: "4.6 (1K+) - \$\$\$ - معجنات-بيتزا",
    price: "\$10",
    distance: "30-50 m",
    deliveryFee: "توصيل مجاني",
    favorite: false,
    freeOffer: false);

Resturant resturant5 = Resturant(
    image: "images/كبة.jpg",
    name: "كبة",
    desc: "4.6 (1K+) - \$\$\$ -ماكولات عربية",
    price: "\$10",
    distance: "30-50 m",
    deliveryFee: "توصيل مجاني",
    favorite: false,
    freeOffer: false);
Resturant resturant6 = Resturant(
    image: "images/طوشكا.jpg",
    name: "طوشكا",
    desc: "4.6 (1K+) - \$\$\$ - المطعم اللبناني",
    price: "\$10",
    distance: "30-50 m",
    deliveryFee: "توصيل 1\$",
    favorite: false,
    freeOffer: false);
Resturant resturant7 = Resturant(
    image: "images/سوشي رول.jpg",
    name: "سوشي",
    desc: "4.6 (1K+) - \$\$\$ -ماكولات بحريه",
    price: "\$10",
    distance: "30-50 m",
    deliveryFee: "لايوجد توصيل",
    favorite: false,
    freeOffer: false);

List<Resturant> resturantList = [
  resturant1,
  resturant2,
  resturant3,
  resturant4
];

List<Resturant> resturantList1 = [resturant5, resturant6, resturant7];

class RadioModel {
  bool isSelected;
  final String text;

  RadioModel(this.isSelected, this.text);
}

class OrderModel {
  bool Delivered;
  String Resturant;
  double rating;
  String image;

  OrderModel(this.Delivered, this.Resturant, this.image, this.rating);
}

class Product {
  String title;
  String descriptions;
  String price;
  String image;

  Product({this.descriptions, this.image, this.title, this.price});
}
