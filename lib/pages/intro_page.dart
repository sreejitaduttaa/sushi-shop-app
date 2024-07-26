import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/button.dart';
import '../themes/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor ,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 25,
            ),

            //shop name
            Text(
              "SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            //icon
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image(
                image: AssetImage("lib/images/salmon_sushi.png"),
                // height: 250,
                // width: 250,
                alignment: Alignment.center,
              ),
            ),

            SizedBox(
              height: 25,
            ),

            //title
            Text(
              "THE TASTE OF JAPANESE GOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            //subtitle
            Text(
              "Feel the taste of the most popular Japanese food from anywhere and anytime",
              style: TextStyle(color: Colors.grey[300], height: 2),
            ),
            const SizedBox(
              height: 25,
            ),

            //get started button
            MyButton(
              text: "Get Started",
              onTap: () {
                // go to menu page
                Navigator.pushNamed(context, '/menupage');
              },
            )
          ],
        ),
      ),
    );
  }
}
