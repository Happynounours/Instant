import 'package:flutter/material.dart';
import '../../models/user.dart';
import 'package:provider/provider.dart';

class categorymap extends StatefulWidget {
  @override
  _categorymapState createState() => _categorymapState();
}

class _categorymapState extends State<categorymap> {
  @override
  Widget build(BuildContext context) {
    final users = Provider.of<List<AppUserData>>(context);
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return GridView.count(
            crossAxisCount: 3,
            childAspectRatio: (100 / 160),
            controller: ScrollController(keepScrollOffset: false),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              UserTile(users[index]),
            ],
          );
        });
  }
}

class UserTile extends StatelessWidget {
  final AppUserData user;

  UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
        child: Container(
          width: 120,
          height: 160,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            image: DecorationImage(
                image: AssetImage('assets/Jeux.jpg'), fit: BoxFit.cover),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          width: 200,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8)),
            color: Colors.white,
          ),
          child: Text(
            user.name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    ]);
  }
}
