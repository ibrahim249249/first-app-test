//import 'dart:html';
import 'dart:html';

import 'package:flutter/material.dart';

class Login extends StateLessWidget {
  var passwordController = TextEditingController(); // عشان اتحكم في الزر حق الدخول لازم يكون في متغير 
  @Override
  Widget build(BuildContent context) {
    return Scaffold(
      color: Colors.blue,
      appBar: AppBar(

        ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // لجعل الكلام يبدا من البداية 
         childern:
         [
           Text(
             'تسحيل الدخول',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
           SizedBox( // لعمل مسافة بين جملة تسجيل دخول و الصندوق 
            height: 60.0,
            ),
           TextFormField( // لعمل الصندوق حق اسم المستخدم 
             /*  controller: passwordController,

              keyboardType: TextInputType.emailAddress,
              onFeildSubmitted: (value){
              print(value);
              },
              onChanged: (value){
              print(value);
               },*/
             decoration: InputDecoration( // لكتابة النص داخل التكست 
               labelText: 'اسم المستخدم ',
               border: OutLineInputBorder(
              ), // لعمل الحواف 
             ),
            ),
           SizedBox( // لعمل مسافة بين جملة تسجيل دخول و الصندوق 
            height: 30.0,
            ),
           TextFormField( // لعمل الصندوق حق اسم المستخدم 
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword, //
            obscureText: true, // تجعل كلمة المرور مخفية 
            onFeildSubmitted: (value){
              print(value);
             },
            onChanged: (value){
              print(value);
             },
             decoration: InputDecoration( // لكتابة النص داخل التكست 
               labelText: 'كلمة السر  ',
               prefixIcon: Icon(
                Icons.lock,
                ),
               suffixIcon: Icon(
                Icons.remove_red_eye, // لعمل الايقونة حقت المفتاح لكلمة السر 
                ),
               border: OutLineInputBorder( // شكل المستطيل 
                ), // لعمل الحواف 
               ),
               ),
            SizedBox( // لعمل مسافة بين جملة تسجيل دخول و الصندوق 
             height: 30.0,
             ),
            Continer(
              weight: double.infinity,
              color: Colors.blue,
              child: MaterialButton( //  لعمل زر الدخول 
                onPressed: (){
                  //  print(passwordController.text);                 
                  print(passwordController.text);
                 },
                child: Text(
                'دخول ',
                style: TextStyle(
                  color: Colors.white,
                 ),
                ),
               ),
              ),
            SizedBox( // لعمل مسافة بين جملة تسجيل دخول و الصندوق 
              height: 30.0,
             ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              childern:[
                Text(
                  'لا تمتلك حساب؟',

                 ),
                TextButton( 
                  onPressed(){},
                  child: Text(
                    'تسجيل الآن ',

                  ),
                ),
              ],
            ),
           ],  
         ),
       ),
     );
   }
 }
