import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class support extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 70.0, bottom: 50),
            child: Text(
              'Support'.toUpperCase(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
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
                  contentPadding: EdgeInsets.only(left: 10),
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
                  contentPadding: EdgeInsets.only(left: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Sujet',
                ),
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 10,
            ),
            child: TextField(
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.newline,
              minLines: 10,
              maxLines: 10,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 4, color: Colors.deepPurpleAccent),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(left: 10, top: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Description',
              ),
              style: TextStyle(fontSize: 25),
            ),
            // TextField(
            //
            //   keyboardType: TextInputType.multiline,
            //   textInputAction: TextInputAction.newline,
            //   minLines: 1,
            //   maxLines: 10,
            // ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Envoyé'),
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
