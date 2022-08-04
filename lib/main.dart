import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instant/Home/home.dart';
import 'package:instant/inscription/register.dart';
import 'package:instant/parametres/selectparametre.dart';
import 'package:instant/screens/splashscreen_wrapper.dart';
import 'package:instant/services/authentification.dart';
import 'package:provider/provider.dart';
import 'Home/home.dart';
import 'connexion/login.dart';
import 'models/user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return StreamProvider<AppUser?>.value(
      value: AuthenticationService().user,
      initialData: null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreenWrapper(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      routes: {
        Home.routeName: (_) => Home(),
        register.routeName:(_) => register(),
        selectparametre.routeName: (_) => selectparametre(),
        Login.routeName: (_) => Login(),  

      },
      ),

    );
  }
}
