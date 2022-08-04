import 'package:flutter/material.dart';
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
  bool _obscureText = true;



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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:100),
                  child: Image.asset('assets/InstantW.png'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
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
                  padding: EdgeInsets.symmetric(vertical: 12),
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
                  padding: EdgeInsets.symmetric(),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(),
                          child:  TextFormField(
                            validator: (value) {
                              if (value != null) {
                                if (value.contains('@')) {
                                  return null;
                                }
                                return 'Enter a Valid Email Address';
                              }
                            },
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
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: TextFormField(
                            obscureText: _obscureText,
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
                                icon:
                                Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                              ),
                            ),
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80.0),
                  child: ElevatedButton(
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
                        Navigator.pushNamed(context, '/home');
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
