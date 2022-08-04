import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../services/authentification.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              padding: const EdgeInsets.only(top: 75),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 35, right: 35, bottom: 20),
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
                                          width: 4,
                                          color: Colors.deepPurpleAccent),
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
                                      borderSide:
                                      BorderSide(width: 4, color: Colors.deepPurpleAccent),
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
                            )),
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(
            //     horizontal: 35,
            //   ),
            //   child: SizedBox(
            //     height: 50,
            //
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(right: 50, top: 10, bottom: 30),
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  child: Text(
                    "Mot de passe oublié",
                  ),
                ),
              ),
            ),

            Text(
              error,
              style: TextStyle(color: Colors.red, fontSize: 18.0),
            ),




            ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState?.validate() == true) {
                  setState(() => loading = false);
                  var password = passwordController.value.text;
                  var email = emailController.value.text;
                  dynamic result =await _auth.signInWithEmailAndPassword(
                      email, password);
                  if (result == null) {
                    setState(() {
                      loading = false;
                      error = 'Please supply a valid email';
                    });
                  }
                }
              },
              child: Text('Se connecter'),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 81, 81, 81),
                  fixedSize: const Size(320, 35),
                  textStyle: TextStyle(
                    fontSize: 16,
                  )),
            ),



            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.google,
                          size: 35, color: Colors.white),
                      onPressed: () {}),
                  IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.facebook,
                        size: 35,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text('Créer un nouveau compte'),
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
    ));
  }
}
