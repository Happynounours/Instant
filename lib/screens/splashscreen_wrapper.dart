import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Home/home.dart';
import '../login_register/authenticate.dart';
import '../models/user.dart';

class SplashScreenWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AppUser?>(context);
    if (user == null) {
      return AuthenticateScreen();
    } else {
      return Home();
    }
  }
}
