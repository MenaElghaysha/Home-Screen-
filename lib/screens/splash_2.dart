import 'package:final_intermediate/screens/login_screen.dart';
import 'package:final_intermediate/screens/splash3.dart';
import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class Splash_2 extends StatelessWidget {
  const Splash_2({super.key});

  @override
  Widget build(BuildContext context) {
    String t = loremIpsum(
      words: 6,
    );
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 400,
                child: Image.asset(
                  "assets/Add to Cart-cuate.png",
                  width: MediaQuery.sizeOf(context).width,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 100,
                child: Text(
                  "$t",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0e375f)),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff0e375f)),
                      minimumSize: MaterialStatePropertyAll(
                          Size(MediaQuery.sizeOf(context).width - 50, 50))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Splash_3()));
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
