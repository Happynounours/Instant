import 'package:flutter/material.dart';

class SendEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 100, right: 100, top: 75),
          child: Icon(
            Icons.mail,
            color: Colors.white,
            size: 200.0,
          ),
        ),
        Text(
          'Trouver votre compte',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25 ,left: 50, right: 50),
          child: Text(
            'Veuillez entrer votre adresse e-mail pour rechercher votre compte.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),

          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 35),
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
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Continuer'),
          style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 81, 81, 81),
              fixedSize: const Size(320, 35),
              textStyle: TextStyle(
                fontSize: 16,
              )),
        ),
      ],
    );
  }
}
