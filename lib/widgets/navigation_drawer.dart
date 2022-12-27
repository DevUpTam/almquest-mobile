import 'package:almquest/screens/homescreens/features.dart';
import 'package:almquest/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:almquest/screens/homescreens/features.dart';
import 'dart:convert';
import 'package:almquest/screens/screens.dart';
import 'package:almquest/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/navigation_drawer.dart';
import '../widgets/popup_menu.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kBackgroundColor,
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: SingleChildScrollView(
          child: Wrap(
            runSpacing: 14,
            children: [
              ListTile(
                onTap: () {
                  Get.to(() => Home());
                },
                leading: const Icon(
                  CupertinoIcons.question_circle,
                  color: kTextColor,
                ),
                title: const Text(
                  "Home",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 14,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                },
                leading: const Icon(
                  CupertinoIcons.question_circle,
                  color: kTextColor,
                ),
                title: const Text(
                  "About AlmQuest",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 14,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                },
                leading: const Icon(
                  CupertinoIcons.person_2_alt,
                  color: kTextColor,
                ),
                title: const Text(
                  "Our Team",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 14,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                },
                leading: const Icon(
                  Icons.feedback_outlined,
                  color: kTextColor,
                ),
                title: const Text(
                  "Feedback",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 14,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Get.to(() => Features());
                },
                leading: const Icon(
                  CupertinoIcons.scope,
                  color: kTextColor,
                ),
                title: const Text(
                  "Features",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
