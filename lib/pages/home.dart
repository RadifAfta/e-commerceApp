// ignore: unused_import
import 'package:ecommerce_abal_abal/GridViewCustom.dart';
// ignore: unused_import
import 'package:ecommerce_abal_abal/data.dart';
import 'package:ecommerce_abal_abal/listViewCustom.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:ecommerce_abal_abal/pages/color.dart';

// ignore: unused_import
import 'detail.dart';

class MyLayout extends StatefulWidget {
  const MyLayout({super.key});

  @override
  State<MyLayout> createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {
  bool isList = true;

  void changeView(bool isList) {
    setState(() {
      this.isList = !isList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff100c0c),
          toolbarHeight: 75,
          flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/cewe.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, ",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        Text(
                          "Radif",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Apa yang kamu mau beli??",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        backgroundColor: Color(0xff100c0c),
        body: Container(
          margin: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 370.0),
                    child: Text("Product",
                        style: TextStyle(
                          color: whiteAbu,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    margin: EdgeInsets.only(left: 7),
                    width: 380,
                    height: 45,
                    decoration: BoxDecoration(
                      color: abuPutih,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 25,
                          color: whiteAbu,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 150,
                          height: 11,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search Product",
                              hintStyle:
                                  TextStyle(fontSize: 12, color: whiteAbu),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: abuPutih,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.filter_list_outlined,
                        color: whiteAbu,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MenuList(
                      bgColor: hijauGelap,
                      title: "Best Seller",
                      textColor: whiteAsli),
                  MenuList(
                      bgColor: abuPutih,
                      title: "Earphones",
                      textColor: whiteAbu),
                  MenuList(
                      bgColor: abuPutih, title: "Charger", textColor: whiteAbu),
                  MenuList(
                      bgColor: abuPutih,
                      title: "Protection",
                      textColor: whiteAbu),
                  MenuList(
                      bgColor: abuPutih, title: "Console", textColor: whiteAbu),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Seller",
                      style: TextStyle(
                        color: whiteAbu,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    // Icon(
                    //   Icons.list,
                    //   color: hijauGelap,
                    //   size: 30,
                    // ),
                    isList
                        ? IconButton(
                            onPressed: () {
                              changeView(isList);
                            },
                            icon: Icon(Icons.grid_view_outlined, color: hijauGelap, size: 25,))
                        : IconButton(
                            onPressed: () {
                              changeView(isList);
                            },
                            icon: Icon(Icons.list, color: hijauGelap, size: 25,))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              isList ? gridViewCustom() : listViewCustom(),
            ],
          ),
        ));
  }
}

class MenuList extends StatelessWidget {
  const MenuList(
      {super.key,
      required this.bgColor,
      required this.title,
      required this.textColor});
  final String title;
  final Color bgColor, textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: bgColor,
      ),
      child: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
