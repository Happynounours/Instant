import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

class notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 108, 187, 228),
            Color.fromARGB(255, 94, 14, 185),
          ],
        )),
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Text(
                  'Notifications'.toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ToggleSwitch(
                              minWidth: 32,
                              minHeight: 28,
                              cornerRadius: 20.0,
                              activeBgColors: [
                                [Colors.black],
                                [Colors.green]
                              ],
                              activeBgColor: [Colors.green],
                              inactiveBgColor: Colors.white,
                              initialLabelIndex: 1,
                              totalSwitches: 2,
                              borderColor: [Colors.white],
                              radiusStyle: true,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                'Toutes les Notifications',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ToggleSwitch(
                              minWidth: 32,
                              minHeight: 28,
                              cornerRadius: 20.0,
                              activeBgColors: [
                                [Colors.black],
                                [Colors.green]
                              ],
                              activeBgColor: [Colors.green],
                              inactiveBgColor: Colors.white,
                              initialLabelIndex: 1,
                              totalSwitches: 2,
                              borderColor: [Colors.white],
                              radiusStyle: true,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                'Likes',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
