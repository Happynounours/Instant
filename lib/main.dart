import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instant/inscription/register.dart';
import 'package:instant/screens/splashscreen_wrapper.dart';
import 'package:instant/services/authentification.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return StreamProvider<AppUser?>.value(
      value: AuthenticationService().user,
      initialData: null,
      child: MaterialApp(
        home: SplashScreenWrapper(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      routes: {
          register.routeName:(_) => register(),
      },
      ),

    );
  }
}
