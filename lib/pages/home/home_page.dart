import 'package:flutter/material.dart';
import 'package:shamo/pages/widgets/product_card.dart';
import 'package:shamo/pages/widgets/product_tile.dart';
import 'package:shamo/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget header() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hallo Juniar Aldi',
                  style:
                      primaryTextStyle.copyWith(fontSize: 24, fontWeight: bold),
                ),
                Text(
                  '@aldinugraha7',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/image_profile.png'))),
          )
        ],
      ),
    );
  }

  Widget categories() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: primaryColor,
              ),
              child: Text(
                'All Shoes',
                style:
                    primaryTextStyle.copyWith(fontSize: 12, fontWeight: medium),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleColor,
                ),
                color: transparentColor,
              ),
              child: Text(
                'Running',
                style: subtitleTextStyle.copyWith(
                    fontSize: 12, fontWeight: medium),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleColor,
                ),
                color: transparentColor,
              ),
              child: Text(
                'Training',
                style: subtitleTextStyle.copyWith(
                    fontSize: 12, fontWeight: medium),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleColor,
                ),
                color: transparentColor,
              ),
              child: Text(
                'Basketball',
                style: subtitleTextStyle.copyWith(
                    fontSize: 12, fontWeight: medium),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleColor,
                ),
                color: transparentColor,
              ),
              child: Text(
                'Hikking',
                style: subtitleTextStyle.copyWith(
                    fontSize: 12, fontWeight: medium),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget popularProductsTitle() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Text(
        'Popular Products',
        style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
      ),
    );
  }

  Widget popularProducts(){
    return Container(
      margin: EdgeInsets.only(top: 14),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Row(
              children: [
                ProductCard(),
                ProductCard(),
                ProductCard()
              ],
            )
          ],
        ),
      ),
    );
  }

    Widget newArrivalsProductsTitle() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Text(
        'New Arrivals',
        style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
      ),
    );
  }

  Widget newArrivals(){
    return Container(
      margin: EdgeInsets.only(top: 14),
      child: Column(
        children: [
          ProductTile(),
          ProductTile(),
          ProductTile(),
          ProductTile()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [header(), categories(), popularProductsTitle(),popularProducts(), newArrivalsProductsTitle(), newArrivals()],
    );
  }
}
