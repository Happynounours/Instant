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
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Image.asset(
              'assets/InstantW.png',
              height: 50,
            ),
          ),
              TextButton.icon(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  label: Text('logout', style: TextStyle(color: Colors.white)),
                  onPressed: () async {
                    await _auth.signOut();
                  }
              )
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
