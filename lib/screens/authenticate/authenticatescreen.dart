import 'package:flutter/material.dart';
import 'package:instant/common/constants.dart';
import 'package:instant/inscription/register.dart';
import 'package:instant/services/authentification.dart';
import '../../common/loading.dart';

class AuthenticateScreen extends StatefulWidget {
  @override
  State<AuthenticateScreen> createState() => _AuthenticateScreenState();
}

class _AuthenticateScreenState extends State<AuthenticateScreen> {
  final AuthenticationService _auth = AuthenticationService();
  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false;
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  bool showSignIn = true;
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void toggleView() {
    setState(() {
      _formKey.currentState?.reset();
      error = '';
      emailController.text = '';
      nameController.text = '';
      passwordController.text = '';
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.blueGrey,
              elevation: 0.0,
              title: Text(showSignIn ? 'Sign in' : 'Register'),
              actions: <Widget>[
                TextButton.icon(
                  icon: Icon(Icons.person),
                  label: Text(showSignIn ? 'Sign In' : 'Register',
                      style: TextStyle(color: Colors.white)),
                  onPressed: () => toggleView(),
                )
              ],
            ),
            body: Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [



                    TextFormField(
                      controller: emailController,
                      decoration:
                          textInputDecoration.copyWith(hintText: 'email'),
                      validator: (value) => value == null || value.isEmpty
                          ? "Enter an email"
                          : null,
                    ),



                    SizedBox(height: 10),
                    TextFormField(
                      controller: passwordController,
                      decoration:
                          textInputDecoration.copyWith(hintText: 'password'),
                      validator: (value) => value != null && value.length < 6
                          ? "Enter a password with at least 6 characters"
                          : null,
                    ),


                    SizedBox(height: 10),
                    ElevatedButton(
                      child: Text(
                        showSignIn ? "sign In" "sign In" : "Register",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState?.validate() == true) {
                          setState(() => loading = false);
                          var password = passwordController.value.text;
                          var email = emailController.value.text;
                          dynamic result = showSignIn
                              ? await _auth.signInWithEmailAndPassword(
                                  email, password)
                              : await _auth.registerWithEmailAndPassword(
                                  email, password);
                          if (result == null) {
                            setState(() {
                              loading = false;
                              error = 'Please supply a valid email';
                            });
                          }
                        }
                      },
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      error,
                      style: TextStyle(color: Colors.red, fontSize: 15.0),
                    )
                  ],
                ),
              ),
            ),
          );
  }
}
