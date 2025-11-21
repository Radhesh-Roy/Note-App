import 'package:flutter/material.dart';

import 'bottombar/bottombar.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  timerFunCall()async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
  }

  @override
  void initState() {
    timerFunCall();
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset("assets/noteapp.png", height: 500, width: 500,)),
    );
  }
}
