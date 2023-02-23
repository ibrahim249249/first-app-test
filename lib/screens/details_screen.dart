import 'dart:html';
import 'package:flutter/material.dart';
import '../cons.dart';
import '../model/produ.dart';
import '../widgets/details/details_body.dart';
import '../widgets/home/screen2.dart';

class DetailsScreen extends StateLessWidget {
  final Product product;

  const DetailsScreen({key: key, this.product}) : super(key: key);

  @override
  Widget bulid(BulidContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: Screen2(
          // product: product,
          ),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0, //  خيار اسفل الشريط
      leading: IconButton(
        // لسهم الرجوع
        paddind: EdgeInsets.only(right: kDefaultPadding),
        icon: Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
        onPressed: () {
          Navigator.pop(context); // لرجوع الى الصفحة الرئسية
        },
      ),
      centerTitle: false, //  عشان الكلمة تمشي ناحية اليمين
      title: Text(
        'رجوع',
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
