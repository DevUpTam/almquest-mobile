import 'package:almquest/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            Image.asset(
              "assets/hero.png",
              height: 300,
            ),
            const SizedBox(height: 40),
            const Text(
              "Help us make the World a Better Place",
              style: TextStyle(
                color: kTextColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "AlmQuest brings to you the opportunity to be the one to donate food or, be the one to get in touch with such donors and distribute the food where its needed.",
              style: TextStyle(
                color: kLightTextColor,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 58, 114, 235),
              ),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "JOIN US",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100),
            const SizedBox(
              width: double.infinity,
              child: Text(
                "About Us",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 14),
            const SizedBox(
              width: double.infinity,
              child: Text(
                "Here on AlmQuest we bring two groups of people together - The ones who have excess food they can donate and the ones who have the opportunity and the scope to distribute that food to the under-priviledged and the ones in need.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kTextColor,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 58, 114, 235),
              ),
              onPressed: () {},
              icon: const Icon(Icons.light_mode_outlined),
              label: const Padding(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Text(
                  "Check Out Some More",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100),
            SizedBox(
              width: double.infinity,
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: "Join Us In ",
                      style: TextStyle(
                        color: kTextColor,
                      ),
                    ),
                    TextSpan(
                      text: "Our Quest",
                      style: TextStyle(
                        color: Color.fromARGB(255, 58, 114, 235),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const SizedBox(
              width: double.infinity,
              child: Text(
                "We provide this platform for bringing two kinds of people or organisation alike together who can fulfil each other's needs.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kLightTextColor,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/donate.png",
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: kLightTextColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 10,
                      color: kBackgroundColor,
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: const [
                            Text(
                              "Join us as a Donor Now!",
                              style: TextStyle(
                                color: kTextColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "You can be an Individual or an Organisation or a Food Chain. Take the first steps.",
                              style: TextStyle(
                                color: kTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/distribute.png",
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: kLightTextColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 10,
                      color: kBackgroundColor,
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: const [
                            Text(
                              "Join us as a Distributor Now!",
                              style: TextStyle(
                                color: kTextColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "You can be an Individual or a Social Service Group or a NGO. Take the first steps.",
                              style: TextStyle(
                                color: kTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            const SizedBox(height: 20),
            const Text(
              "Explore Our Awesome Features",
              style: TextStyle(
                color: kTextColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                "https://images.pexels.com/photos/6995212/pexels-photo-6995212.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                height: 300,
              ),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: kLightTextColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 10,
                      color: kBackgroundColor,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: const [
                            ListTile(
                              contentPadding: EdgeInsets.all(20),
                              leading: Icon(CupertinoIcons.person_fill,
                                  color: Color.fromARGB(255, 58, 114, 235),
                                  size: 30),
                              title: Text(
                                "Donate on the go",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              subtitle: Text(
                                  "No matter where you are, you can always donate meals in any quantity you wish. We pair you up with the best Distributor for you.",
                                  style: TextStyle(
                                    color: Color.fromARGB(220, 224, 224, 224),
                                  )),
                              // SizedBox(height: 5),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: kLightTextColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 10,
                      color: kBackgroundColor,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: const [
                            ListTile(
                              contentPadding: EdgeInsets.all(20),
                              leading: Icon(
                                CupertinoIcons
                                    .arrow_right_arrow_left_square_fill,
                                color: Color.fromARGB(255, 58, 114, 235),
                                size: 30,
                              ),
                              title: Text(
                                "Efficient Exchange",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              subtitle: Text(
                                "Whether you are a donor or a distributor, we chose the best place for your exchange. We regard your convenience the most and provide you with the best directions to exchange point.",
                                style: TextStyle(
                                  color: Color.fromARGB(220, 224, 224, 224),
                                ),
                              ),
                              // SizedBox(height: 5),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: kLightTextColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 10,
                      color: kBackgroundColor,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: const [
                            ListTile(
                              contentPadding: EdgeInsets.all(20),
                              leading: Icon(CupertinoIcons.car_fill,
                                  color: Color.fromARGB(255, 58, 114, 235),
                                  size: 30),
                              title: Text(
                                "See Where Your Package Goes",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              subtitle: Text(
                                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident ab nulla quod dignissimos vel non corrupti doloribus voluptatum eveniet",
                                style: TextStyle(
                                  color: Color.fromARGB(220, 224, 224, 224),
                                ),
                              ),
                              // SizedBox(height: 5),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}