import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../services/authentification.dart';

class selectparametre extends StatelessWidget {
 static String routeName = '/settings';
   final AuthenticationService _auth = AuthenticationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: Text("PARAMETRES"),
        ),
        leading: IconButton(onPressed: () {Navigator.pop(context);},
        icon: Icon(Icons.arrow_back
        
        ),),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 108, 187, 228),
            Color.fromARGB(255, 94, 14, 185),
          ],
        )),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,

                  elevation: 0
                ),
                onPressed: (() {
                  
                }), 
                icon: FaIcon(FontAwesomeIcons.bell,
                      size: 32, color: Colors.white), 
                      label: Text('Notifications',
                      style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  color: Colors.white))),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,

                  elevation: 0
                ),
                onPressed: (() {
                  
                }), 
                icon: FaIcon(FontAwesomeIcons.circleQuestion,
                                    size: 32, color: Colors.white), 
                      label: Text('Support',
                      style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  color: Colors.white))),
                    
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,

                  elevation: 0
                ),
                onPressed: (() {
                  
                }), 
                icon: FaIcon(FontAwesomeIcons.circleInfo,
                                    size: 32, color: Colors.white), 
                      label: Text('Infos',
                      style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  color: Colors.white))),
                    
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,

                  elevation: 0
                ),
                onPressed: (() {
          FirebaseAuth.instance.signOut().then((value) {
                                    print('Déconnexion');
                                  });        
                }), 
                icon: FaIcon(
                                    FontAwesomeIcons.arrowRightFromBracket,
                                    size: 32,
                                    color: Colors.white), 
                      label: Text('Déconnexion',
                      style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  color: Colors.white))),
                   
                               
                          ],
                        ),
                      ),
                       ),
        );
     
  }
}
