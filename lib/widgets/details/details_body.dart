import 'dart:ffi';
import 'dart:html';
import 'package:flutter/material.dart';
import '../../cons.dart';
import '../../model/produ.dart';
import 'product_image.dart';

class DetailsBody extends StateLessWidget {
  final Product product;

  const DetailsBody({key key, this.product}):super(key: key);

  @override
  Widget bulid(BulidContext context) {
    Size size = MediaQuery(context).size;
    return Column(
      childern: [
        container(
          //  قسم الصفحة الى نصفين
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          //height: 300.0,
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            childern: [
              Center(
                child: ProductImage(
                  size: size,
                  image: product.imag,
                ),
              ),
              Padding(
                padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding,)
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.headLine6,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/*class ProductImage extends StateLessWidget {
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
}*/
