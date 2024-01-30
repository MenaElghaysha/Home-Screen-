import 'package:final_intermediate/screens/login_screen.dart';
import 'package:final_intermediate/screens/splash_2.dart';
import 'package:flutter/material.dart';

class Splash_1 extends StatelessWidget {
  const Splash_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff704f38),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Splash_2()));
        },
        child: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://www.logolynx.com/images/logolynx/a6/a671ef222a6e136f8fe7fd9cfc97e57b.png",
                width: MediaQuery.sizeOf(context).width - 150,
              )
            ],
          ),
        )),
      ),
    );
  }
}
