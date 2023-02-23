import 'package:flutter/material.dart';

import '../cons.dart';
import '../widgets/home/home_body.dart';

class FirstHome extends StateLessWidget {
  @override
  Widget bulid(BulidContext context){
    return Scaffold(
      kBackgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),

     );
   }

  AppBar homeAppBar(){
    return AppBar(

      backgroundColor: Colors.blue,
     /* leading: Icon(
        Icons.menu,
        ),*/
      action:[
        IconButton(
          icon: Icon(
            Icons.menu
           ),
          onPressed: (){},
         ),
       ],
     );
    }
   /* body: Row(
        childern[
          Stack(
            alignment: Alignment.bottomCenter, //  لتنزيل الكلمة تحت في الصورة 
            childern[
              Image(
                image:
               ),
               height: 100.0,
               width: 100.0,
               fit: BoxFit.cover, // تعمل على ملئ الصورة 
             
              Text( //  لكتابة كلمة او جملة فوق الصورة 
                'الإسعافات الأولية',
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 30.0,
                fontWeidght: FontWeidght.bold,
                 ),
               ),
             ],

           ),  
          MaterialButton(
             onPressed: (){
                  //  print(passwordController.text);                 
                  print(passwordController.text);
                 },
             child: Text(
                'التعرف على الإسعافات الأولية  ',
                style: TextStyle(
                 color: Colors.white,
                  ),
                ),
           ),
          MaterialButton(
             onPressed: (){
                  //  print(passwordController.text);                 
                  print(passwordController.text);
                 },
             child: Text(
                'الكسور  ',
                style: TextStyle(
                 color: Colors.white,
                  ),
                ),
           ),
          MaterialButton(
             onPressed: (){
                  //  print(passwordController.text);                 
                  print(passwordController.text);
                 },
             child: Text(
                'الجروح   ',
                style: TextStyle(
                 color: Colors.white,
                  ),
                ),
           ),
          MaterialButton(
             onPressed: (){
                  //  print(passwordController.text);                 
                  print(passwordController.text);
                 },
             child: Text(
                'الحريق  ',
                style: TextStyle(
                 color: Colors.white,
                  ),
                ),
           ),  
          MaterialButton(
             onPressed: (){
                  //  print(passwordController.text);                 
                  print(passwordController.text);
                 },
             child: Text(
                'الغرز بالإبر',
                style: TextStyle(
                 color: Colors.white,
                  ),
                ),
           ),  
          MaterialButton(
             onPressed: (){
                  //  print(passwordController.text);                 
                  print(passwordController.text);
                 },
             child: Text(
                'الكورونا',
                style: TextStyle(
                 color: Colors.white,
                  ),
                ),
           ),   
          MaterialButton(
             onPressed: (){
                  //  print(passwordController.text);                 
                  print(passwordController.text);
                 },
             child: Text(
                'الإختناق',
                style: TextStyle(
                 color: Colors.white,
                  ),
                ),
           ),
          MaterialButton(
             onPressed: (){
                  //  print(passwordController.text);                 
                  print(passwordController.text);
                 },
             child: Text(
                ' خروج    ',
                style: TextStyle(
                 color: Colors.white,
                  ),
                ),
           ),                                       
          ],
       ),*/
    
 }


