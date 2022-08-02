import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';


class PublierImage extends StatefulWidget {
  @override
  State<PublierImage> createState() => _PublierImageState();
}

class _PublierImageState extends State<PublierImage> {

File? _image;
Future getImage(ImageSource source) async {
  final image = await ImagePicker().pickImage(source: source);
  if(image == null) return;

  final imageTemporary = File(image.path);

  setState(() {
    this._image = imageTemporary;
  });
}

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 100, right: 100, left: 100),
            child: Image.asset('assets/InstantW.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
                      child: _image != null ? Column(
                        children: [
                          Image.file(_image!,
                      height: 250,
                      width: 250,
                      fit: BoxFit.cover,),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 200,
                        alignment: Alignment.center,
                        child:TextField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          labelText: "Titre",
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ) ,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        
                        alignment: Alignment.center,
                        child:TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          labelText: "Description",
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ) ,
                      )
                      
                        ],
                      )
                      
                        : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(Icons.camera_alt_outlined),
                              onPressed: () => getImage(ImageSource.camera),
                              ),
                              Text('Appareil photo')
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(Icons.insert_photo_outlined),
                              onPressed: () => getImage(ImageSource.gallery),
                              ),
                              Text('Gallery')
                        ],
                      ),
                          
                    ],
                  ),
                ),
              ],
            ),
                    ),
            
            
            
          ),
        ],
      ),
    );
  }
}
