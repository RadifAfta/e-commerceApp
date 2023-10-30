// ignore: unused_import
import 'package:ecommerce_abal_abal/data.dart';
import 'package:ecommerce_abal_abal/discound.dart';
import 'package:ecommerce_abal_abal/pages/color.dart';
import 'package:flutter/material.dart';
import 'home.dart';

// ignore: must_be_immutable
class Detail extends StatelessWidget {
  Detail(
      {super.key,
      required this.picture,
      required this.name,
      required this.sales,
      required this.rating,
      required this.price,
      required this.discount,
      this.hasil});
  String? picture, name, sales, rating;
  int? price, discount, hasil;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff100c0c),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: abuPutih,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: whiteAbu,
                          ),
                        ),
                      ),
                      Text("Details",
                          style: TextStyle(
                            color: whiteAbu,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          name.toString(),
                          style: TextStyle(
                              color: whiteAsli,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("Edit",
                            style: TextStyle(color: hijauGelap, fontSize: 15))
                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: abuPutih,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      width: 450,
                      height: 400,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: abuPutih,
                        image: DecorationImage(
                          image: AssetImage(picture.toString()),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Positioned(
                      top: 25.0,
                      left: 30.0,
                      child: Row(
                        children: [
                          if (discount! > 0)
                            CircleAvatar(
                              radius: 13,
                              backgroundColor: Colors.red[100],
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Text(
                                      discount.toString(),
                                      style: TextStyle(
                                        fontSize: 8.3,
                                        color: Colors.red[800],
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "%",
                                      style: TextStyle(
                                        fontSize: 8.3,
                                        color: Colors.red[800],
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 25.0,
                      right: 30.0,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: whiteAbu,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      left: 10.0,
                      right: 10.0,
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: whiteAbu,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name!,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: whiteAsli,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "$sales sales",
                              style: TextStyle(
                                fontSize: 12,
                                color: whiteAsli,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  " $rating Ratings",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: whiteAsli,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                if (discount! > 0)
                                  Text(
                                    "Rp.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: whiteAsli,
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: Colors.red,
                                      decorationThickness: 3.0,
                                    ),
                                  ),
                                if (discount! > 0)
                                  Text(
                                    price.toString(),
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: whiteAsli,
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: Colors.red,
                                      decorationThickness: 3.0,
                                    ),
                                  ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Rp.",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: whiteAsli,
                                  ),
                                ),
                                Text(
                                  '${DiscountCount.mathDiscount(price!, discount!)}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: whiteAsli,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(
                          color: whiteAsli,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Ini adalah deskripsi produk yang panjang. Produk ini memiliki fitur-fitur yang luar biasa dan memberikan pengalaman luar biasa kepada penggunanya. Anda dapat menggunakan teks ini untuk menjelaskan lebih lanjut tentang produk Anda dan semua manfaat yang ditawarkannya.",
                        style: TextStyle(
                          color: whiteAbu,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: MenuList(
                                bgColor: hijauGelap,
                                title: "4.5 Ratings",
                                textColor: whiteAsli),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: MenuList(
                                bgColor: abuPutih,
                                title: "1200 Sales",
                                textColor: whiteAbu),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: MenuList(
                                bgColor: abuPutih,
                                title: "48 Stock",
                                textColor: whiteAbu),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Reviews",
                        style: TextStyle(
                          color: whiteAbu,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: abuPutih,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Bagong sia",
                                  style: TextStyle(
                                    color: whiteAsli,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "5 Stars",
                                  style: TextStyle(
                                    color: hijauGelap,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Ulasan pengguna mengenai produk ini. Produk ini sangat baik dan berkualitas tinggi.",
                              style: TextStyle(
                                color: whiteAsli,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: abuPutih,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Mamat sumat",
                                  style: TextStyle(
                                    color: whiteAsli,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "4 Stars",
                                  style: TextStyle(
                                    color: hijauGelap,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Ulasan pengguna lainnya tentang produk ini. Produk ini memiliki nilai tinggi.",
                              style: TextStyle(
                                color: whiteAsli,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
