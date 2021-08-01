import 'package:flutter/material.dart';
import 'package:spotify/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: bottomNavBar(),
      body: body(),
    );
  }

  Widget bottomNavBar() {
    return Container(
      color: kBottomNavBarColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: 1,
            color: kGreyColor,
          ),
          Row(
            children: [
              Image.asset(
                'assets/image0.png',
                width: 53,
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Driver License ',
                          style: whiteTextStyle.copyWith(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          '• Olivia Rodrigo',
                          style: greyTextStyle.copyWith(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icon_device.png',
                          width: 13,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Devices Available',
                          style: whiteTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/icon_love.png',
                width: 24,
              ),
              SizedBox(
                width: 8,
              ),
              Image.asset(
                'assets/icon_play.png',
                width: 24,
              ),
              SizedBox(
                width: defaultMargin,
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: kBackgroundColor,
          ),
          BottomNavigationBar(
            backgroundColor: kBottomNavBarColor,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            selectedItemColor: kWhiteColor,
            unselectedItemColor: kGreyColor,
            elevation: 1,
            items: [
              BottomNavigationBarItem(
                label: 'home',
                icon: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_home.png'),
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_search.png'),
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Library',
                icon: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_library.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget body() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(
                  0xff4E413D,
                ),
                kBackgroundColor,
                kBackgroundColor,
              ],
            ),
          ),
        ),
        ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'assets/icon_setting.png',
                  width: 24,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good evening',
                    style: whiteTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      CardItem(
                        title: 'Machine Gun\nKelly',
                        imageUrl: 'assets/image1.png',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      CardItem(
                        title: 'The Oral History\nof The Office',
                        imageUrl: 'assets/image2.png',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      CardItem(
                        title: 'Greta Van Fleet',
                        imageUrl: 'assets/image3.png',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      CardItem(
                        title: 'Bryce Vine',
                        imageUrl: 'assets/image4.png',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      CardItem(
                        title: 'Chon',
                        imageUrl: 'assets/image5.png',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      CardItem(
                        title: 'Tychon',
                        imageUrl: 'assets/image6.png',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Text(
                'Recently Played',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RecentlyItem(
                    imageUrl: 'assets/image7.png',
                    title: 'Driver License',
                  ),
                  RecentlyItem(
                    imageUrl: 'assets/image8.png',
                    title: 'Carnival',
                  ),
                  RecentlyItem(
                    imageUrl: 'assets/image9.png',
                    title: 'Tickets to my\ndownfall',
                  ),
                  RecentlyItem(
                    imageUrl: 'assets/image10.png',
                    title: 'Berkatmu lebih\ndari cukup',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Text(
                'New Releases For You',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ReleaseItem(
                    imageUrl: 'assets/image11.png',
                    title: 'Dance Gavin Dance',
                    subtitle: 'Album • Afterburner',
                  ),
                  ReleaseItem(
                    imageUrl: 'assets/image12.png',
                    title: 'Dance Gavin Dance',
                    subtitle: 'Album • Mothership',
                  ),
                  ReleaseItem(
                    imageUrl: 'assets/image13.png',
                    title: 'Greta Van Fleet',
                    subtitle: 'Album • After Burner',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Text(
                'Popular Releases',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ReleaseItem(
                    imageUrl: 'assets/image11.png',
                    title: 'Dance Gavin Dance',
                    subtitle: 'Album • Afterburner',
                  ),
                  ReleaseItem(
                    imageUrl: 'assets/image12.png',
                    title: 'Dance Gavin Dance',
                    subtitle: 'Album • Mothership',
                  ),
                  ReleaseItem(
                    imageUrl: 'assets/image13.png',
                    title: 'Greta Van Fleet',
                    subtitle: 'Album • After Burner',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ],
    );
  }
}

class ReleaseItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ReleaseItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    this.subtitle = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 148,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 12,
              fontWeight: bold,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            subtitle,
            style: greyTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class RecentlyItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const RecentlyItem({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 100,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 12,
              fontWeight: bold,
            ),
          ),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CardItem({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        defaultRadius,
      ),
      child: Container(
        width: 174,
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 56,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                height: 56,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: kCardColor,
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(defaultRadius),
                  ),
                ),
                child: FittedBox(
                  child: Text(
                    title,
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
