import 'package:flutter/material.dart';
import 'package:app_cake/src/widdgets/commons.dart';
import '../widdgets/custom_text.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeCake extends StatefulWidget {
  const HomeCake({Key? key}) : super(key: key);

  @override
  State<HomeCake> createState() => _HomeCakeState();
}

class _HomeCakeState extends State<HomeCake> {
  List<Map<String, dynamic>> types = [
    {
      "icon": Icons.icecream,
      "label": "Cones",
    },
    {
      "icon": Icons.cake,
      "label": "Cake",
    },
    {
      "icon": Icons.coffee,
      "label": "Cup",
    },
    {
      "icon": Icons.fastfood,
      "label": "Food",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('What would you like to eat?',
                      style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 19.0,
                          color: Color(0xFF545D68))),
                ),
                Stack(
                  children: <Widget>[
                    Positioned(
                      top: 11,
                      right: 11,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(22)),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_none)),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: const ListTile(
                  leading: Icon(Icons.search, color: Colors.redAccent),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: 'Type here to find dessert',
                        border: InputBorder.none),
                  ),
                  trailing:
                      Icon(Icons.filter_list_rounded, color: Colors.redAccent),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
