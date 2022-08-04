import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Profil extends StatefulWidget {

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(

          onPressed: (() {}),
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          FaIcon(FontAwesomeIcons.heart),
        ],
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
    ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child:  Text("Hello",),
                )
              ],
            ),
          ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.add_a_photo, color: Colors.white,), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.white,), label: "")
            ],
          ),
    );
  }
}