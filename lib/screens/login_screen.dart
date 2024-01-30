import 'package:final_intermediate/API/get_users.dart';
import 'package:final_intermediate/provider/check_user.dart';
import 'package:final_intermediate/screens/home.dart';
import 'package:final_intermediate/screens/profile_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 400,
              child: Image.asset(
                "assets/Tablet login-amico.png",
                width: MediaQuery.sizeOf(context).width,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                        labelText: 'Enter Email',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  const SizedBox(height: 30),
                  TextField(
                    controller: passController,
                    decoration: const InputDecoration(
                      labelText: 'Enter Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ],
              ),
            ),
            //const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xff0e375f)),
                  minimumSize: MaterialStatePropertyAll(
                      Size(MediaQuery.sizeOf(context).width - 50, 50))),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                // getuser(context, emailController.text, passController.text);
              },
              child: const Text(
                'Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
