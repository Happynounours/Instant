import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import '../../common/loading.dart';
import '../services/authentification.dart';

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
  final passwordController = TextEditingController();
  bool showSignIn = true;
  bool _obscureText = true;

  File? _image;
  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;

    final imageTemporary = File(image.path);

    setState(() {
      this._image = imageTemporary;
    });
  }

  void takePhoto() {
  showDialog(context: context,
   builder: (context) {
    return SimpleDialog(
      backgroundColor: Color.fromARGB(255, 94, 14, 185),
      children: [
        Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Que voulez-vous faire ?', 
                        style: TextStyle(
                          color: Colors.white
                        ) ,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 108, 187, 228)
                      ),
                      onPressed: () => getImage(ImageSource.gallery),
                       child: Text(
                        "Choisir une photo",
                       ),
                       ),
                       SizedBox(
                        height: 20,
                       ),
                        ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 108, 187, 228)
                      ),
                      onPressed: () => getImage(ImageSource.camera),
                       child: Text(
                        "Prendre une photo",
                       ),
                       ),
                          ],
                        )
                        
                      ],
                    ),
      ],
    );
   });
}


  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void toggleView() {
    setState(() {
      _formKey.currentState?.reset();
      error = '';
      emailController.text = '';
      passwordController.text = '';
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
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
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0, left: 10),
                      child: Row(
                        children: [
                          showSignIn
                              ? Container()
                              :
                          IconButton(
                                  icon: FaIcon(FontAwesomeIcons.arrowLeft,
                                      size: 35, color: Colors.white),
                                  onPressed: () => toggleView()
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Image.asset('assets/InstantW.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35,
                              right: 35,
                            ),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: <Widget>[
                                  showSignIn
                                      ? Container()
                                      : Padding(
                                    padding:  EdgeInsets.symmetric(
                                              vertical: 14),
                                          child: 
                                          Positioned(
                                              bottom: 0,
                                              right: 25,
                                              child:  
                                              Container(
                      child: _image != null ? Image.file(_image!,
                      height: 250,
                      width: 250,
                      fit: BoxFit.cover,) :
                                              RawMaterialButton(
                                                onPressed:
                                                  takePhoto,
                                                elevation: 0.0,
                                                fillColor: Color(0xFFF5F6F9),
                                                child: Icon(
                                                  Icons.camera_alt_outlined,
                                                  color: Colors.blue,
                                                  size: 50,

                                                ),
                                                padding: EdgeInsets.all(15.0),
                                                shape: CircleBorder(),
                                              )
                                          ),
                                      )),
                                  showSignIn
                                      ? Container()
                                      : Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 12),
                                          child: TextFormField(
                                            validator: (value) =>
                                                value == null || value.isEmpty
                                                    ? "Pseudo Obligatoire "
                                                    : null,
                                            decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 4,
                                                    color: Colors
                                                        .deepPurpleAccent),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white,
                                              contentPadding:
                                                  EdgeInsets.only(left: 20),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              hintText: 'Pseudo',
                                            ),
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ),
                                  showSignIn ? SizedBox(height: 50.0):
                                  Container(),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12),
                                    child: TextFormField(
                                      controller: emailController,
                                      validator: (value) =>
                                          value == null || value.isEmpty
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
                                        contentPadding:
                                            EdgeInsets.only(left: 20),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        hintText: 'Email',
                                      ),
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  TextFormField(
                                    obscureText: _obscureText,
                                    controller: passwordController,
                                    validator: (value) => value != null &&
                                            value.length < 6
                                        ? "Enter a password with at least 6 characters"
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
                                      hintText: 'Mot de passe',
                                      suffixIcon: IconButton(
                                        icon: Icon(_obscureText
                                            ? Icons.visibility
                                            : Icons.visibility_off),
                                        onPressed: () {
                                          setState(() {
                                            _obscureText = !_obscureText;
                                          });
                                        },
                                      ),
                                    ),
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(height: 15.0),
                                  ElevatedButton(
                                    child: Text(
                                      showSignIn
                                          ? "Se connecter"
                                          : "Inscription",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 81, 81, 81),
                                        fixedSize: const Size(320, 35),
                                        textStyle: TextStyle(
                                          fontSize: 16,
                                        )),
                                    onPressed: () async {
                                      if (_formKey.currentState?.validate() ==
                                          true) {
                                        setState(() => loading = true);
                                        var password =
                                            passwordController.value.text;
                                        var email = emailController.value.text;

                                        dynamic result = showSignIn
                                            ? await _auth
                                                .signInWithEmailAndPassword(
                                                    email, password)
                                            : await _auth
                                                .registerWithEmailAndPassword(
                                                    email, password);
                                        if (result == null) {
                                          setState(() {
                                            loading = false;
                                            error =
                                                'Please supply a valid email';
                                          });
                                        }
                                      }
                                    },
                                  ),
                                  showSignIn
                                      ? Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              IconButton(
                                                  icon: FaIcon(
                                                      FontAwesomeIcons.google,
                                                      size: 35,
                                                      color: Colors.white),
                                                  onPressed: () {}),
                                              IconButton(
                                                  icon: FaIcon(
                                                    showSignIn
                                                        ? FontAwesomeIcons
                                                            .facebook
                                                        : null,
                                                    size: 35,
                                                    color: Colors.white,
                                                  ),
                                                  onPressed: () {}),
                                            ],
                                          ),
                                        )
                                      : Container(),
                                  showSignIn
                                      ? ElevatedButton(
                                          child: Text('Créer un compte',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          onPressed: () => toggleView(),
                                          style: ElevatedButton.styleFrom(
                                              primary: Color.fromARGB(
                                                  255, 81, 81, 81),
                                              fixedSize: const Size(320, 35),
                                              textStyle: TextStyle(
                                                fontSize: 16,
                                              )),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
