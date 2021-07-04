import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void moveToNextScreen() async  {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
  }


  @override
  void initState() {
    super.initState();
    moveToNextScreen();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Weather App", style: GoogleFonts.montserrat(
          fontWeight: FontWeight.bold, fontSize: 32
        ),),
      ),
    );
  }
}
