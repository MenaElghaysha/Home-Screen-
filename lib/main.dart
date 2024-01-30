import 'package:final_intermediate/provider/check_user.dart';
import 'package:final_intermediate/screens/login_screen.dart';
import 'package:final_intermediate/screens/splash1.dart';
import 'package:final_intermediate/screens/splash_0.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_0(),
    );
  }
}

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<UserProvider>(
        builder: (context, resultProvider, _) {
          return Center(child: Text("Hello, ${resultProvider.result}"));
        },
      ),
    );
  }
}
