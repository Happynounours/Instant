import 'package:flutter/material.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';

class allmap extends StatefulWidget {
  const allmap({Key? key}) : super(key: key);

  @override
  State<allmap> createState() => _allmapState();
}

class _allmapState extends State<allmap> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          FullScreenWidget(
            backgroundColor: Colors.black,

            child: SafeArea(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 300,
                      child: Hero(
                        tag: "",
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/pitbullcat.jpg'),

                            ),
                          ),
                        ),

                        ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8)),
                        color: Colors.white,
                      ),
                      child: ListTile(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        )),
                        leading: const CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('assets/pdpluna.jpg'),
                        ),
                        title: const Text('Mon Pitbull'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 4.0),
                              child: Text(
                                'Elle est si jolie avec son harnais <3',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                '#Animaux',
                                style: TextStyle(color: Colors.lightBlue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
