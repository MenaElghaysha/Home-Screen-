import 'package:final_intermediate/screens/login_screen.dart';
import 'package:final_intermediate/screens/splash1.dart';
import 'package:final_intermediate/screens/splash_2.dart';
import 'package:flutter/material.dart';

class Splash_0 extends StatelessWidget {
  const Splash_0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d4670),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Splash_1()));
        },
        child: SafeArea(
            child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircularProgressIndicator(
              color: Colors.white,
              strokeAlign: BorderSide.strokeAlignInside,
            )
          ]),
        )),
      ),
    );
  }
}
