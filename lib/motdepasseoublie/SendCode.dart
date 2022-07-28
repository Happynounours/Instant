import 'package:flutter/material.dart';

class SendCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child :Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 100, right: 100, top: 75),
          child: Icon(
            Icons.mark_email_read_outlined,
            color: Colors.white,
            size: 200.0,
          ),
        ),
        Text(
          'Entrez le code de sécurité',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 50, right: 50),
          child: Text(
            'Merci de vérifier dans vos e-mails que vous avez reçu un message avec votre code. Celui-ci est composé de 6 chiffres.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 25,),
          child: SizedBox(
            width: 100,
            height: 50,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 4, color: Colors.deepPurpleAccent),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(top: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Code',
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
