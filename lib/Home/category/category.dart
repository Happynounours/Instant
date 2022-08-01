import 'package:flutter/material.dart';

class category extends StatefulWidget {
  @override
  _categoryState createState() => _categoryState();
}

class _categoryState extends State<category> {
  List<String> widgetList = [
    'assets/Jeux.jpg',
    'assets/Nature.jpg',
    'assets/nourriture.jpg',
    'assets/Nature.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GridView.count(
          crossAxisCount: 3,
          childAspectRatio: (100 / 160),
          controller: ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: widgetList.map((String value) {
            return Container(
              width: 120,
              height: 160,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                    image: AssetImage(value), fit: BoxFit.cover),
              ),
              child: const Text(
                'aze',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            );
          }).toList(),
        ),
      ],
    );

    // Column(
    //     children: <Widget>[
    //   Container(
    //     width: 120,
    //     height: 160,
    //     child: Card(
    //       clipBehavior: Clip.antiAliasWithSaveLayer,
    //       child: Column(
    //         children: [
    //           SizedBox(
    //             width: 335,
    //             height: 110,
    //             child: Image.asset(
    //               'assets/Nature.jpg',
    //               fit: BoxFit.fill,
    //             ),
    //           ),
    //           Column(children: [Text('Title')])
    //         ],
    //       ),
    //     ),
    //   ),
    // ]);
  }
}
