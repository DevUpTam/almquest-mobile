import 'dart:convert';
import 'package:almquest/screens/screens.dart';
import 'package:almquest/widgets/navigation_drawer.dart';
import 'package:almquest/widgets/popup_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:almquest/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'package:getwidget/getwidget.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class Features extends StatefulWidget {
  @override
  _FeatureState createState() => _FeatureState();
}

class _FeatureState extends State<Features> {
  bool isLoggedIn = false;
  SharedPreferences? prefs;
  String userImg = "";

  void signIn() async {
    final googleUser = await GoogleSignIn().signIn();
    if (googleUser != null) {
      final body = {"email": googleUser.email};
      final res = await http.post(
        Uri.parse("https://almquest-server.onrender.com/api/checkExist"),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(body),
      );

      final data = jsonDecode(res.body);
      if (data["isRegistered"]) {
        final regUser = {
          "name": googleUser.displayName,
          "email": googleUser.email,
          "picture": googleUser.photoUrl ?? "",
          "userType": data["userType"],
          "id": data["id"],
        };
        prefs!.setString("reg_user", jsonEncode(regUser));
        userImg = googleUser.photoUrl ?? "";
        isLoggedIn = true;
        setState(() {});
      } else {
        final data = {
          "name": googleUser.displayName,
          "email": googleUser.email,
          "photo": googleUser.photoUrl,
        };
        prefs!.setString("temp_user", jsonEncode(data));
        Get.to(() => Register());
      }
    } else {
      await GoogleSignIn().signOut();
    }
  }

  void initVars() async {
    prefs = await SharedPreferences.getInstance();
    final userStr = prefs!.getString("reg_user");
    if (userStr != null) {
      final user = jsonDecode(userStr);
      userImg = user["picture"];
      isLoggedIn = true;
    } else {
      await GoogleSignIn().signOut();
      isLoggedIn = false;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    initVars();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "Donate on the Go",
      "Efficient Exchange",
      "See where your package goes",
    ];
    // List of Gfcards
    final List<Widget> gfcards = [
      GFCard(
        boxFit: BoxFit.fill,
        titlePosition: GFPosition.start,
        color: kBackgroundColor,
        elevation: 20,
        image: Image.network(
          'https://images.pexels.com/photos/4662948/pexels-photo-4662948.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          fit: BoxFit.cover,
        ),
        showImage: true,
      ),
      GFCard(
        boxFit: BoxFit.fill,
        titlePosition: GFPosition.start,
        color: kBackgroundColor,
        elevation: 20,
        image: Image.network(
          'https://images.pexels.com/photos/4662948/pexels-photo-4662948.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          fit: BoxFit.cover,
        ),
        showImage: true,
      ),
      GFCard(
        boxFit: BoxFit.fill,
        titlePosition: GFPosition.start,
        color: kBackgroundColor,
        elevation: 20,
        image: Image.network(
          'https://images.pexels.com/photos/4662948/pexels-photo-4662948.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          fit: BoxFit.cover,
        ),
        showImage: true,
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: VerticalCardPager(
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 5,
          ),
          titles: titles,
          images: gfcards,
          onPageChanged: (page) {},
          align: ALIGN.CENTER,
          onSelectedItem: (index) {},
        ),
      ),
    );
  }
}
