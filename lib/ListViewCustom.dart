import 'package:ecommerce_abal_abal/data.dart';
import 'package:ecommerce_abal_abal/discound.dart';
import 'package:ecommerce_abal_abal/pages/color.dart';
import 'package:ecommerce_abal_abal/pages/detail.dart';
import 'package:flutter/material.dart';

class listViewCustom extends StatelessWidget {
  const listViewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: listProduct.length,
      itemBuilder: (context, index) {
        // ignore: unused_local_variable
        final product = listProduct[index];

        return InkWell(
          child: Container(
            // decoration: BoxDecoration(
            //     color: abuPutih, borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  width: 440,
                  decoration: BoxDecoration(
                      color: putihAbuDikit,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: abuPutih,
                              borderRadius: BorderRadius.circular(15)),
                          child: Container(
                            child: Row(
                              children: [
                                Image.asset(
                                  product.picture.toString(),
                                  width: 100,
                                  height: 100,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      product.name!,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            product.sales.toString(),
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black),
                                          ),
                                          Text(
                                            " sales",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Icon(
                                              Icons.circle,
                                              size: 3,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            product.rating.toString(),
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black),
                                          ),
                                          Text(
                                            " Ratings",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 2,
                                        height: 55,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Column(
                                          children: [
                                            if (product.discount! > 0)
                                              Row(
                                                children: [
                                                  Text(
                                                    "Rp.",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        decorationColor:
                                                            Colors.red,
                                                        decorationThickness:
                                                            3.0),
                                                  ),
                                                  Text(
                                                    product.price.toString(),
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.black,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      decorationColor:
                                                          Colors.red,
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
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  '${DiscountCount.mathDiscount(product.price!, product.discount!)}',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
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
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // Container(
                //     decoration: BoxDecoration(
                //         color: whiteAbu,
                //         borderRadius: BorderRadius.all(Radius.circular(15.0))),
                //     child: Column(
                //       children: [
                //         Text(
                //           product.name,
                //           style: TextStyle(),
                //         ),
                //       ],
                //     )),
              ],
            ),
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
    ));
  }
}
