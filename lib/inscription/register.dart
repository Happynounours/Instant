import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../services/authentification.dart';

class register extends StatefulWidget {
  static String routeName = '/register';
  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final AuthenticationService _auth = AuthenticationService();
  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool showSignIn = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        // child: Home(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image.asset('assets/InstantW.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Positioned(
                    bottom: 0,
                    left: -25,
                    child: RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Color(0xFFF5F6F9),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.blue,
                      ),
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 10,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 4, color: Colors.deepPurpleAccent),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.only(left: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Pseudo',
                  ),
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 10,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        validator: (value) => value == null || value.isEmpty
                            ? "Enter an email"
                            : null,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 4, color: Colors.deepPurpleAccent),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(left: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          hintText: 'Email',
                        ),
                        style: TextStyle(fontSize: 25),
                      ),
                      TextFormField(
                        controller: passwordController,
                        validator: (value) => value != null && value.length < 6
                            ? "Enter a password with at least 6 characters"
                            : null,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 4, color: Colors.deepPurpleAccent),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(left: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          hintText: 'Mot de passe',
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.remove_red_eye),
                          ),
                        ),
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState?.validate() == true) {
                    setState(() => loading = false);
                    var password = passwordController.value.text;
                    var email = emailController.value.text;
                    dynamic result = await _auth.registerWithEmailAndPassword(
                        email, password);
                    if (result == null) {
                      setState(() {
                        loading = false;
                        error = 'Please supply a valid email';
                      });
                    }
                  }
                },
                child: Text('S\'inscrire'),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 81, 81, 81),
                    fixedSize: const Size(320, 35),
                    textStyle: TextStyle(
                      fontSize: 16,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
