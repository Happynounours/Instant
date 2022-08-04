import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class register extends StatelessWidget {
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
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(top: 20, left: 35, right: 10),
                        child: Container(
                          height: 50,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 4,
                                    color: Colors.deepPurpleAccent,
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                hintText: 'Nom',
                                contentPadding: EdgeInsets.only(top: 10)),
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(top: 20, right: 35, left: 10),
                        child: Container(
                          height: 50,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 4,
                                    color: Colors.deepPurpleAccent,
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                hintText: 'Prénom',
                                contentPadding: EdgeInsets.only(top: 10)),
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 10,
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
                  hintText: 'Email',
                ),
                style: TextStyle(fontSize: 25),
              ),
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
          ElevatedButton(
            onPressed: () {},
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
    );
  }
}
