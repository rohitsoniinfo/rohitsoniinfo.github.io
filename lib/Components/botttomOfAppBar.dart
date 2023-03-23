import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';
import 'myButton.dart';
import 'package:portfolio/Screens/AboutScreen.dart';
import 'package:portfolio/Screens/ContactsScreen.dart';
import 'package:portfolio/Screens/EducationScreen.dart';
import 'package:portfolio/Screens/projectsScreen.dart';

class bottomOfAppBar extends StatefulWidget {
  const bottomOfAppBar({Key? key}) : super(key: key);
  @override
  State<bottomOfAppBar> createState() => _bottomOfAppBarState();
}

class _bottomOfAppBarState extends State<bottomOfAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          myButton(
            butttonTitle: 'About',
            buttonTextColor: kselectedButtonTextColor,
            buttonBackGroundColor: kselectedButtonBackgroundColor,
            func: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const aboutScreen(),
                ),
              );
            },
          ),
          myButton(
            butttonTitle: 'Education',
            buttonTextColor: kunSelectedButtonTextColor,
            buttonBackGroundColor: kunSelectedButtonBackgroundColor,
            func: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const educationScreen(),
                ),
              );
            },
          ),
          myButton(
            butttonTitle: 'Projects',
            buttonTextColor: kunSelectedButtonTextColor,
            buttonBackGroundColor: kunSelectedButtonBackgroundColor,
            func: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const projectsScreen(),
                ),
              );
            },
          ),
          myButton(
            butttonTitle: 'Contacts',
            buttonTextColor: kunSelectedButtonTextColor,
            buttonBackGroundColor: kunSelectedButtonBackgroundColor,
            func: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const contactScreen(),
                ),
              );
            },
          ),
          SizedBox(
            width: 0.05468*MediaQuery.of(context).size.width,
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 0.39062*MediaQuery.of(context).size.width,
            height: 3,
            color: Colors.black,
            // constraints: BoxConstraints(
            //   minHeight: 1,
            //   minWidth: double.infinity,
            // ),
          )
        ],
      ),
    );
  }
}
