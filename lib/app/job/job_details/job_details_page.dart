import 'package:flutter/material.dart';
import 'package:oshigoto/oshigoto_colors.dart';

class JobDetailsPage extends StatelessWidget {
  const JobDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: OshigotoColors.primaryBlack,
        elevation: 0,
        title: const Text('詳細'),
      ),
      backgroundColor: OshigotoColors.primaryBlack,
      bottomNavigationBar: Container(
          height: screenHeight / 10,
          color: OshigotoColors.primaryBlack,
          child: Center(
            child: SizedBox(
              width: screenWidth / 1.3,
              height: screenHeight / 18,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: OshigotoColors.primaryBlue,
                ),
                onPressed: () {},
                child: Text(
                  '応募する',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              FlutterLogo(
                size: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Flutterエンジニア',
                style: TextStyle(
                  color: OshigotoColors.primaryWhite,
                  fontSize: screenWidth / 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('株式会社アットゲーム, 東京都',
                  style: TextStyle(color: OshigotoColors.primaryGray)),
              const SizedBox(height: 20),
              Container(
                width: screenWidth / 1.2,
                height: screenWidth / 7,
                decoration: BoxDecoration(
                  border: Border.all(color: OshigotoColors.secondaryGrey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '業務経験',
                          style: TextStyle(color: OshigotoColors.primaryGray),
                        ),
                        Text(
                          '最低1年',
                          style: TextStyle(color: OshigotoColors.primaryWhite),
                        ),
                      ],
                    ),
                    Container(
                      height: 80,
                      child: VerticalDivider(
                        indent: 15,
                        endIndent: 15,
                        color: OshigotoColors.primaryGray,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '契約形態',
                          style: TextStyle(color: OshigotoColors.primaryGray),
                        ),
                        Text(
                          '業務委託',
                          style: TextStyle(color: OshigotoColors.primaryWhite),
                        ),
                      ],
                    ),
                    Container(
                      height: 80,
                      child: VerticalDivider(
                        indent: 15,
                        endIndent: 15,
                        color: OshigotoColors.primaryGray,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '報酬',
                          style: TextStyle(color: OshigotoColors.primaryGray),
                        ),
                        Text(
                          '応相談',
                          style: TextStyle(color: OshigotoColors.primaryWhite),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Divider(color: OshigotoColors.secondaryGrey),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '概要',
                    style: TextStyle(color: OshigotoColors.primaryWhite),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '本文',
                    style: TextStyle(color: OshigotoColors.primaryGray),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
