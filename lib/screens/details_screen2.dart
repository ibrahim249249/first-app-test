import 'dart:html';
import 'package:flutter/material.dart';
import '../cons.dart';
import '../model/produ.dart';
import '../model/produ2.dart';
import '../widgets/details/details_body.dart';
import '../widgets/home/screen2.dart';

class DetailsScreen2 extends StateLessWidget {
  final Product2 produ;

  const DetailsScreen2({key: key, this.product}) : super(key: key);

  @override
  Widget bulid(BulidContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(
        produ: produ,
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
