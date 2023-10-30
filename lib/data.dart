class Product {
  String? picture, name, sales, rating;
   int? price, discount, hasil;
  Product(
      {required this.picture,
      required this.name,
      required this.sales,
      required this.rating,
      required this.price,
      required this.discount,
      this.hasil,
  });
}

List<Product> listProduct = <Product>[
   Product(
      picture: "assets/images/gamepad2.png",
      name: "Stik Elite",
      sales: "200",
      rating: "4.5",
      price: 50000,
      discount: 0,
  ),
   Product(
      picture: "assets/images/headset.png",
      name: "Headset Elite",
      sales: "200",
      rating: "4.5",
      price: 52000,
      discount: 13,
  ),
   Product(
      picture: "assets/images/Keyboard.png",
      name: "Keyboard Elite",
      sales: "200",
      rating: "4.5",
      price: 53000,
      discount: 11,
  ),
   Product(
      picture: "assets/images/PS4.png",
      name: "Playstation 4",
      sales: "234",
      rating: "4.5",
      price: 53000,
      discount: 20,
  ),
   Product(
      picture: "assets/images/ps5.png",
      name: "Playstation 5",
      sales: "121",
      rating: "4.5",
      price: 80000,
      discount: 10,
  ),
   Product(
      picture: "assets/images/mouse.png",
      name: "Mouse Elite",
      sales: "127",
      rating: "4.7",
      price: 80000,
      discount: 10,
  ),
];
