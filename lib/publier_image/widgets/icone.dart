import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';




class Icone extends StatefulWidget {

  @override
  State<Icone> createState() => _IconeState();
}

class _IconeState extends State<Icone> {

  File? _image;
  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;

    final imageTemporary = File(image.path);

    setState(() {
      this._image = imageTemporary;
    });
  }

  String dropdownvalue = 'Categories';  
 
  // List of items in our dropdown menu
  var items = [   
    'Categories',
    'Nature',
    'Illustrations',
    'Musique',
    'Animaux',
    'Jeux',
    'Espace',
    'Voitures',
    'Dessins animés',
    'Fun',
    'Cinéma/Séries',
    'Nourriture',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child:           SingleChildScrollView(
                       child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 100, right: 100, left: 100),
                child: Image.asset('assets/InstantW.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: _image != null
                      ? Column(
                          children: [
                            Image.file(
                              _image!,
                              height: 250,
                              width: 250,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 200,
                              alignment: Alignment.center,
                              child: TextField(
                                maxLines: 1,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 15)),
                                  labelText: "Titre",
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: TextField(
                                maxLines: 5,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 15)),
                                  labelText: "Description",
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(10)
              ),
              child: DropdownButtonHideUnderline(
                child:DropdownButton(
              // Initial Value
              value: dropdownvalue,
               
              // Down Arrow Icon
              icon: Icon(Icons.keyboard_arrow_down, color: Colors.black,),   
               
              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items,
                  style: TextStyle(
                    color: Colors.black,

                  ),),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),)
              
            ),
            SizedBox(
              height: 20,
            ),
            // ElevatedButton(
            //   onPressed: (() {
            //     Navigator.pushNamed(context, Login.routeName);
            //   }),
            //    child: Text("Publier",
            //    style: TextStyle(
            //     color: Colors.black
            //    ),),
            //    style: ElevatedButton.styleFrom(
            //       primary: Colors.white,
            //       ),),
                          ],
                        )
                      : Column(
                          children: [
                            Text(
                              "Publier une image",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                ElevatedButton(
                                  onPressed: (() =>
                                      getImage(ImageSource.camera)),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      elevation: 0),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.camera_alt_outlined,
                                        size: 80,
                                      ),
                                      Text(
                                        "Appareil photo",
                                        style: TextStyle(fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: (() =>
                                      getImage(ImageSource.gallery)),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      elevation: 0),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.image_outlined,
                                        size: 80,
                                      ),
                                      Text(
                                        "Gallery",
                                        style: TextStyle(fontSize: 20),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                ),
              ),
            ],
      ),
    ),
          );
  }
}