import 'package:flutter/material.dart';
//import 'package:first/model/produ.dart';
import '../../cons.dart';
import '../../model/produ.dart';
import '../../model/produ2.dart';

//  عمل الكلاس تبع المحتوى لوضع كل الصور داخل الصناديق
class PutImage2 extends StateLessWidget {
  const PutImage2({
    key key,
    this.itemIndex,
    this.produ,
    this.press,
  }) : super(key: key);

  final int itemIndex;
  final Product2 produ;
  final Function press;

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
      child: InWell(
        // لنقل الى صفحة جديدة
        onTap: press,
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
                child: Image.asset(
                  produ.image, // لعرض كل الصور الموجودة
                ),
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
                  produ.title, //  لعرض العنوان
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
