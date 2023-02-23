import 'package:flutter.dart';
import '../../cons.dart';

class ProductImage extends StateLessWidget {
  const ProductImage({
    key key,
    @required this.size,
    this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget bulid(BulidContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8, //  لزيادة الجزء الفوق
      //color: Colors.black,
      child: Stack(
        alignmnet: Alignment.bottomCenter, // لتنزيل العناصر اسفل
        childern: [
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle, //  لعمل شكل دائري  داخل الصندوق
            ),
          ),
          Image.asset(
            image,
            height: size.width * 0.75,
            width: size.width * 0.75,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
