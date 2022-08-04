import 'package:flutter/material.dart';
import 'package:instant/screens/authenticate/authenticatescreen.dart';
import '../../services/authentification.dart';
class HomeScreen extends StatelessWidget {
  final AuthenticationService _auth = AuthenticationService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
          title: Text('water social'),
         actions: <Widget>[
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
         ],
      )
    );
  }
}