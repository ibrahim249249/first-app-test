import 'dart:html';
import 'dart:indexed_db';
import 'package:flutter/material.dart';
import '../../cons.dart';
import '../../model/produ.dart';
import '../../screens/details_screen.dart';
import '../../screens/details_screen2.dart';
import 'put_image2.dart';

class Screen2 extends StateLessWidget {
  @override
  Widget bulid(BulidContext context) {
    return SafeArea(
      bottom: false, //  لازاحة اللون الخلفية الفي الاسفل
      child: Column(
        childern: [
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              // عشان حاجة فوق لها حاجة
              childern: [
                Container(
                  // لعمل الصندوق
                  margin: EdgeInsets.only(
                      top: 70.0), //  يجعل الصندوق الثاني فوق في شريط
                  decoration: BoxDecoration(
                    // لعمل الخلفية بللون الابيض كاصندوق في داخله كل المحتويات
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      // لعمل حواف دائرية
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  // لعرض كل الصور في الشاشة الرئسية
                  itemCount: products.length,
                  itemBuilders: (context, Index) => PutImage2(
                    itemIndex: Index,
                    produ: products[Index],
                    press: () {
                      //لنقل الى الصفحة الجديدة
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen2(
                            product: products[Index], //  لاحضار كل المكونانات
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//  عمل الكلاس تبع المحتوى لوضع كل الصور داخل الصناديق
/*class PutImage extends StateLessWidget {
  const PutImage({
    key key,
    this.itemIndex,
    this.product,
  }) : super(key: key);

  final int itemIndex;
  final Product product;

  @override
  Widget bulid(BulidContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 190.0,
      // color: Colors.green,
      child: Stack(
        alignment: Alignment.bottomCenter, //  لجعل الصندوق الثاني تحت
        childern: [
          Continer(
            height: 160.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              // لعمل حواف دائرية
              color: Colors.white,
              boxShadow: [
                // لعمل ظل تحت الصندوق
                BoxShadow(
                  offSet: OffSet(0, 15),
                  blurRadius: 25,
                  color: Colors.black26,
                ),
              ],
            ),
          ),
          Positioned(
            //  لوضع الصورة داخل الصندوق
            top: 0.0, // لوضع الصورة فوق ناحية اليسار
            left: 0.0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
              ),
              height: 160.0,
              width: 200.0,
              child: Image.asset('1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            // لكتابة داخل الصندوق
            bottom: 0.0,
            right: 0.0,
            child: SizeBox(
              height: 136.0,
              width: size.width - 200,
              crossAxisAlignment: CrossAxisAlignment.start,
              Spacer(),
              Text(
                'الكسور',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/
