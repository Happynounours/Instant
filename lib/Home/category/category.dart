import 'package:flutter/material.dart';
import 'package:instant/Home/category/categorymap.dart';
import 'package:provider/provider.dart';

import '../../common/loading.dart';
import '../../models/user.dart';
import '../../services/database.dart';

class category extends StatefulWidget {
  @override
  _categoryState createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AppUser?>(context);
    if (user == null) throw Exception("user not found");
    final database = DatabaseService(user.uid);
    return StreamProvider<List<AppUserData>>.value(
      initialData: [],
      value: database.users,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:
        categorymap(),
       ),
    );
  }
  }

