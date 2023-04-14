import 'package:flutter/material.dart';
import 'package:password_storage/screens/login.dart';
import 'package:password_storage/services/auth_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  AuthService auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [

          InkWell(
            onTap: () {
              auth.logout();
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Padding(

              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Text(
                "Logout",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Center(
          child: Text(
            "Secret Page\n\n",
            style: TextStyle(
                color: Colors.white.withOpacity(0.1),
                fontSize: 60,
                fontWeight: FontWeight.w900),
          )),
    );
  }
}
