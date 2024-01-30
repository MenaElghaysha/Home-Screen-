import 'package:final_intermediate/provider/check_user.dart';
import 'package:final_intermediate/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController ImageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Center(
        child: Column(children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(
                "${Provider.of<UserProvider>(context, listen: false).imageURL}"),
          ),
          const SizedBox(
            height: 15,
          ),
          Consumer<UserProvider>(
            builder: (context, resultProvider, _) {
              return Center(
                  child: Text(
                "${resultProvider.result}",
                style: const TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0e375f)),
              ));
            },
          ),
          const Padding(
            padding:
                EdgeInsets.only(right: 15.0, left: 15, top: 10, bottom: 10),
            child: Divider(
              thickness: 2,
              color: Color(0xff0077c3),
            ),
          ),
          ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              const ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  color: Color(0xff0e375f),
                  size: 30,
                ),
                title: Text(
                  'My Cart',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0e375f)),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff0e375f),
                  size: 25,
                ),
                dense: false,
              ),
              const ListTile(
                leading: Icon(
                  Icons.favorite_border_rounded,
                  color: Color(0xff0e375f),
                  size: 28,
                ),
                title: Text(
                  'Favourites',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0e375f)),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff0e375f),
                  size: 25,
                ),
                dense: false,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                leading: const Icon(
                  Icons.logout_rounded,
                  color: Color(0xFFFF0000),
                  size: 28,
                ),
                title: const Text(
                  'Log Out',
                  style: TextStyle(
                      color: Color(0xFFFF0000),
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFFFF0000),
                  size: 25,
                ),
                dense: false,
              ),
            ],
          ),
        ]),
      ),
    )));
  }
}
