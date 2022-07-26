import 'package:flutter/material.dart';
import 'package:instant/Home/selectCatAll.dart';

import '../services/authentification.dart';

class Home extends StatelessWidget {
  final AuthenticationService _auth = AuthenticationService();

  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
            icon:Icon(Icons.settings),
          )
        ],
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Image.asset(
              'assets/InstantW.png',
              height: 50,
            ),
          ),
              
        ]),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 108, 187, 228),
            Color.fromARGB(255, 94, 14, 185),
          ],
        )),
        child: selectCatAll(),
      ),
    );
  }
}
