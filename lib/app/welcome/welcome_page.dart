import 'package:flutter/material.dart';
import 'package:oshigoto/app/home/home_page.dart';

import '../../oshigoto_colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: OshigotoColors.primaryBlack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
              alignment: Alignment.center,
              child: FlutterLogo(
                size: screenWidth / 2,
              )),
          SizedBox(
            height: screenHeight / 10,
          ),
          Text(
            'Flutterのお仕事揃ってます',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: OshigotoColors.primaryWhite,
                fontSize: screenWidth / 15),
          ),
          SizedBox(
            height: screenHeight / 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth / 7),
            child: const Text(
              'Flutter案件をググってもすぐでてこない。\nOshigotoでFlutter案件をさくっとみつけちゃいましょう。',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: OshigotoColors.primaryGray,
              ),
            ),
          ),
          SizedBox(
            height: screenHeight / 7,
          ),
          SizedBox(
            width: screenWidth / 2.5,
            height: screenHeight / 15,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: OshigotoColors.primaryBlue,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: Text(
                'はじめる',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth / 25,
                ),
              ),
            ),
          ),
          SizedBox(
            width: screenWidth / 2.5,
            height: screenHeight / 15,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: OshigotoColors.primaryBlack,
              ),
              onPressed: () {},
              child: Text(
                'ログイン',
                style: TextStyle(
                  fontSize: screenWidth / 25,
                  color: OshigotoColors.primaryWhite,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
