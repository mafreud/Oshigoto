import 'package:flutter/material.dart';
import 'package:oshigoto/app/job/job_details/job_details_page.dart';
import 'package:oshigoto/oshigoto_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: OshigotoColors.primaryBlack,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: screenHeight / 20),
            _Header(),
            const SizedBox(height: 20),
            _Card(),
            _Card(),
            _Card(),
            _Card(),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Text(
          'Find Your\nFlutter Job',
          style: TextStyle(
            color: OshigotoColors.primaryWhite,
            fontSize: screenWidth / 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => JobDetailsPage()));
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          top: 3,
          right: 12,
          bottom: 3,
        ),
        child: Card(
          elevation: 5,
          color: OshigotoColors.secondaryBlack,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(
                height: 3,
              ),
              const ListTile(
                leading: FlutterLogo(
                  size: 40,
                ),
                title: Text(
                  'Flutter + Firebaseエンジニア',
                  style: TextStyle(
                    color: OshigotoColors.primaryWhite,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  '(株)アットゲーム',
                  style: TextStyle(
                    color: OshigotoColors.primaryGray,
                    fontSize: 13,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 12),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, primary: OshigotoColors.secondaryGrey),
                      onPressed: () {},
                      child: Text('副業'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, bottom: 12),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, primary: OshigotoColors.secondaryGrey),
                      onPressed: () {},
                      child: Text('1年~'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, bottom: 12),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, primary: OshigotoColors.secondaryGrey),
                      onPressed: () {},
                      child: Text('フルリモート'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
