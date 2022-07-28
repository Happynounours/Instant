import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  child: SizedBox(
                    height: 50,
                    child: TextField(
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
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 35,
            ),
            child: SizedBox(
              height: 50,
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
                  hintText: 'Mot de passe',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove_red_eye),
                  ),
                ),
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
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
          ElevatedButton(
            onPressed: () {},
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
            onPressed: () {},
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
    );
  }
}
