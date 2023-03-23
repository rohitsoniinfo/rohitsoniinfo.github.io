import 'package:flutter/material.dart';
import 'package:portfolio/Components/BigContainerForDesign.dart';
import 'package:portfolio/Components/myButton.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/Screens/EducationScreen.dart';
import 'package:portfolio/Screens/ContactsScreen.dart';
import 'package:portfolio/Components/bottomSheet.dart';
import 'package:portfolio/Screens/AboutScreen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/Components/websiteIconAndLinkButtonInRow.dart';
class projectsScreen extends StatefulWidget {
  const projectsScreen({Key? key}) : super(key: key);
  @override
  State<projectsScreen> createState() => _projectsScreenState();
}

bool state=false;

class _projectsScreenState extends State<projectsScreen> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomSheet:bottomSheet(),
          appBar: AppBar(
            backgroundColor: Color(0xff534C3A),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child:  Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      myButton(
                        butttonTitle: 'About',
                        buttonTextColor: kunSelectedButtonTextColor,
                        buttonBackGroundColor: kunSelectedButtonBackgroundColor,
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
                        buttonTextColor: kselectedButtonTextColor,
                        buttonBackGroundColor: kselectedButtonBackgroundColor,
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
                        width: 70,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 500,
                        height: 1,
                        color: Color(0xffE2BF54),
                        // constraints: BoxConstraints(
                        //   minHeight: 1,
                        //   minWidth: double.infinity,
                        // ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          backgroundColor: Color(0xffD4C4E9),
          body: Container(
            width: double.infinity,
            color: const Color(0xff534C3A),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                        "If You Wanna Look At My Projects,",
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 30,

                        ),
                        speed: Duration(milliseconds: 100)),
                    WavyAnimatedText('Please Head Over To My GitHub',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 30,
                        ),
                        speed: Duration(milliseconds: 100)),
                  ],
                ),
                Container(
                  width: 200,
                  height: 200,
                  child: actualPortfolioSiteButton(
                    image: AssetImage('assets/images/portfolioImageIcons/github1.png'),
                    siteName: 'Github',
                    siteLink: 'https://github.com/rohitsoniinfo',
                  ),
                )

              ],
            ),
          )),
    );
  }
}
