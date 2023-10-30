import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:intl/intl.dart';

import 'data.dart';
import 'discound.dart';
import 'pages/color.dart';
import 'pages/detail.dart';

class gridViewCustom extends StatelessWidget {
  const gridViewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount:
            listProduct.length, // Menggunakan panjang array sebagai itemCount
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final product = listProduct[index];
          return InkWell(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: abuPutih, borderRadius: BorderRadius.circular(20)),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(product.picture.toString()),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            
                            Row(
                              children: [
                                if (product.discount! > 0)
                                CircleAvatar(
                                  radius: 13,
                                  backgroundColor: Colors.red[100],
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          product.discount.toString(),
                                          style: TextStyle(
                                              fontSize: 8.3,
                                              color: Colors.red[800],
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "%",
                                          style: TextStyle(
                                              fontSize: 8.3,
                                              color: Colors.red[800], 
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            CircleAvatar(
                                radius: 15,
                                backgroundColor: whiteAbu,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 15,
                                    ))),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: whiteAbu,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5.0),
                                    child: Text(
                                      product.name!,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: whiteAsli),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        product.sales.toString(),
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: whiteAsli),
                                      ),
                                      Text(
                                        " sales",
                                        style: TextStyle(
                                            fontSize: 10, color: whiteAsli),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Icon(
                                          Icons.circle,
                                          size: 3,
                                          color: whiteAsli,
                                        ),
                                      ),
                                      Text(
                                        product.rating.toString(),
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: whiteAsli),
                                      ),
                                      Text(
                                        " Ratings",
                                        style: TextStyle(
                                            fontSize: 10, color: whiteAsli),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                        width: 2, height: 35, color: whiteAsli),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        children: [
                                          if (product.discount! > 0)
                                          Row(
                                            children: [
                                              Text(
                                                "Rp.",
                                                style: TextStyle(
                                                    color: whiteAsli,
                                                    fontSize: 10,
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    decorationColor: Colors.red,
                                                    decorationThickness: 3.0),
                                              ),
                                              Text(
                                                product.price.toString(),
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: whiteAsli,
                                                  decoration:
                                                      TextDecoration.lineThrough,
                                                  decorationColor: Colors.red,
                                                  decorationThickness: 3.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Rp.",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: whiteAsli,
                                                  ),
                                                ),
                                                Text(
                                                  '${DiscountCount.mathDiscount(product.price!, product.discount!)}',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: whiteAsli),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    Detail(picture: product.picture, name: product.name, sales: product.sales, rating: product.rating, price: product.price, discount: product.discount),
              ));
            },
          );
        },
      ),
    );
  }
}
