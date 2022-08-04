import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instant/Home/home.dart';
import 'package:instant/connexion/login.dart';
import 'package:instant/publier_image/widgets/icone.dart';

class PublierImage extends StatefulWidget {

  static String routeName = '/publierimage';

  @override
  State<PublierImage> createState() => _PublierImageState();
}

class _PublierImageState extends State<PublierImage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (() {            
          }),
           icon: Icon(Icons.arrow_back)),
      ),
      body: Icone()

      
      
    );
    
    
  }
}
