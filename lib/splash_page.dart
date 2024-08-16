import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/bottom_page.dart';
import 'package:untitled/home_page.dart';

class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
        return Navigation();
      }));
    });
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset("assets/images/splash.png",fit: BoxFit.fill,),
      ),
    );
  }
}
