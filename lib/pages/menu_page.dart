import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_shop/components/button.dart';
import 'package:sushi_shop/models/food.dart';
import 'package:sushi_shop/themes/colors.dart';

import '../components/food_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List foodMenu = [
    Food(
        name: "Sushi",
        price: "21.00",
        imagePath: "lib/images/many_sushi.png",
        rating: "4.9"),
    Food(
        name: "Salmon sushi",
        price: "25.00",
        imagePath: "lib/images/salmon_sushi.png",
        rating: "4.6"),
    Food(
        name: "Salmon eggs",
        price: "24.00",
        imagePath: "lib/images/salmon_eggs.png",
        rating: "4.3"),
    Food(
        name: "Tuna",
        price: "19.00",
        imagePath: "lib/images/tuna.png",
        rating: "4.1"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          "Tokyo",
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // promo banner
        Container(
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Get 32% Promo",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyButton(
                    text: "Redeem",
                    onTap: () {},
                  )
                ],
              ),
              const Image(
                image: AssetImage("lib/images/many_sushi.png"),
                height: 100,
                width: 100,
              )
            ],
          ),
        ),

        const SizedBox(
          height: 25,
        ),

        //search bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search here...",
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white)),
            ),
          ),
        ),

        const SizedBox(
          height: 25,
        ),

        //menu list
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Food Menu",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
        ),

        const SizedBox(
          height: 10,
        ),

        Expanded(
            child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: foodMenu.length,
          itemBuilder: (context, index) => FoodTile(
            food: foodMenu[index],
          ),
        )),

        const SizedBox(
          height: 25,
        ),

        //popular food
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
          ),
          padding: EdgeInsets.all(25),
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    "lib/images/tuna.png",
                    height: 60,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        "Tuna",
                        style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("\$" + " 21.00"),
                    ],
                  ),
                ],
              ),
              const Icon(
                Icons.favorite_border,
                color: Colors.grey,
                size: 28,
              )
            ],
          ),
        )
      ]),
    );
  }
}
