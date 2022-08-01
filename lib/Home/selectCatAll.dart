import 'package:flutter/material.dart';
import 'package:instant/Home/all/all.dart';
import 'package:instant/Home/category/category.dart';

class selectCatAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 0,
          bottom: TabBar(
            tabs: [
              Text('catégorie'.toUpperCase()),
              Text(
                'tout'.toUpperCase(),
              ),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white38,
            labelStyle: TextStyle(fontSize: 20),
          ),
        ),
        body: TabBarView(
          children: [
            category(),
            all(),
          ],
        ),
      ),
    );
  }
}
