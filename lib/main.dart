import 'package:flutter/material.dart';
import 'package:instant/connexion/login.dart';
import 'package:instant/profil/Profil.dart';
import 'package:instant/publier_image/publier_image.dart';
import 'Home/home.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (_) => Login(),
          Home.routeName: (_) => Home(),
          PublierImage.routeName: (_) => PublierImage(),
        },
    );
    // MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Scaffold(
    //     body: Container(
    //     height: double.infinity,
    //       decoration: const BoxDecoration(
    //           gradient: LinearGradient(

    //           begin: Alignment.topLeft,
    //           end: Alignment.bottomRight,
    //           colors: [
    //             Color.fromARGB(255, 108, 187, 228),
    //             Color.fromARGB(255, 94, 14, 185),
    //           ],

    //         )),

    //         // child: Home(),
    //         child: PublierImage(),
    //         // child: Profil(),
    //       ),
    //   ),
    // );
  }
}
