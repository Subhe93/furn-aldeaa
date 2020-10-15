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

  Resturant(
      {this.image,
      this.name,
      this.desc,
      this.price,
      this.distance,
      this.deliveryFee});
}

class Dish{
  String name;
  String image;
  double price;

  Dish({this.name, this.image, this.price});
}

List<Dish> dishes = [
  Dish(
      name: "Classic Burger",

      image: "images/دجاج مدخن.JPG",
      price: 22.99

  ),
  Dish(
      name: "Prosciutto",

      image: "images/حمص.jpg",
      price: 18.99

  ),
  Dish(
      name: "pizza",

      image: "images/بيتزا مارغريتا.jpg",
      price: 22

  ),
  Dish(
      name: "pizza",

      image: "images/بيتزا مارغريتا.jpg",
      price: 22

  ),
];


List<Offer> offers = [
  Offer(
      name: "pizza",
      offerText: "1 + 1 FREE",
      image: "images/بيتزا مارغريتا.jpg",
      resturantsList: resturantList),
  Offer(
      name: "pizza",
      offerText: "1 + 1 FREE",
      image: "images/بيتزا مارغريتا.jpg",
      resturantsList: resturantList),
  Offer(
      name: "pizza",
      offerText: "1 + 1 FREE",
      image: "images/بيتزا مارغريتا.jpg",
      resturantsList: resturantList),
  Offer(
      name: "pizza",
      offerText: "1 + 1 FREE",
      image: "images/بيتزا مارغريتا.jpg",
      resturantsList: resturantList),
];

Resturant resturant1 = Resturant(
    image: "images/IMG_2644.jpg",
    name: "The Pizza Factory",
    desc: "4.6 (1K+) - \$\$\$ - burger-pizza",
    price: "\$10",
    distance: "30-50 m",
    deliveryFee: "FREE Delivery");
Resturant resturant2 = Resturant(
    image: "images/IMG_2644.jpg",
    name: "The Pizza Factory",
    desc: "4.6 (1K+) - \$\$\$ - burger-pizza",
    price: "\$10",
    distance: "30-50 m",
    deliveryFee: "FREE Delivery");
Resturant resturant3 = Resturant(
    image: "images/IMG_2644.jpg",
    name: "The Pizza Factory",
    desc: "4.6 (1K+) - \$\$\$ - burger-pizza",
    price: "\$10",
    distance: "30-50 m",
    deliveryFee: "FREE Delivery");
Resturant resturant4 = Resturant(
    image: "images/IMG_2644.jpg",
    name: "The Pizza Factory",
    desc: "4.6 (1K+) - \$\$\$ - burger-pizza",
    price: "\$10",
    distance: "30-50 m",
    deliveryFee: "FREE Delivery");
List<Resturant> resturantList = [
  resturant1,
  resturant2,
  resturant3,
  resturant4
];
