import 'package:flutter/material.dart';

class changepassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 75),
            child: Icon(
              Icons.lock_reset,
              color: Colors.white,
              size: 200.0,
            ),
          ),
          Text(
            'Changer de mot de passe',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 35),
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
            padding: EdgeInsets.only(left: 35, right: 35, bottom: 35),
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
            child: Text('Valider'),
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 81, 81, 81),
                fixedSize: Size(200, 45),
                textStyle: TextStyle(
                  fontSize: 20,
                )),
          ),
        ],
      ),
    );
  }
}
