import 'package:flutter/material.dart';
import 'package:portfolio/Screens/AboutScreen.dart';
import '../constant.dart';
import '../Components/myButton.dart';
import 'package:portfolio/Screens/EducationScreen.dart';
import 'package:portfolio/Screens/projectsScreen.dart';
import 'package:portfolio/custom_icons.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'dart:html' as html;
import 'package:portfolio/Components/bottomSheet.dart';
import 'package:portfolio/Components/BigContainerForDesign.dart';
import 'package:portfolio/Components/websiteIconAndLinkButtonInRow.dart';
bool state=false;
class contactScreen extends StatefulWidget {
  const contactScreen({Key? key}) : super(key: key);

  @override
  State<contactScreen> createState() => _contactScreenState();
}

class _contactScreenState extends State<contactScreen> {
  @override
  Widget build(BuildContext context) {
    double scwWdth=MediaQuery.of(context).size.width;
    double scHeight=MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomSheet: bottomSheet(),
          appBar: AppBar(
            backgroundColor: Color(0xff534C3A),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Padding(
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
                        buttonTextColor: kselectedButtonTextColor,
                        buttonBackGroundColor: kselectedButtonBackgroundColor,
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
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: Container(
            width: double.infinity,
            color: Color(0xff534C3A),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  bigContainerForDesign(
                  color:Color(0xffE2BF54), //Colors.yellow,//Color(0x93A53CC7),
                  itemsWidget:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      actualPortfolioSiteButton(
                        image: AssetImage('assets/images/portfolioImageIcons/linkedin.png'),
                        siteLink: 'https://www.linkedin.com/in/rohitsoni18/',
                        siteName: 'Linkedin',
                      ),
                      actualPortfolioSiteButton(
                          image: AssetImage('assets/images/portfolioImageIcons/github1.png'),
                          siteName: 'Github',
                          siteLink: 'https://github.com/rohitsoniinfo'
                      ),
                      actualPortfolioSiteButton(
                          image: AssetImage('assets/images/portfolioImageIcons/gfg.png'),
                          siteName: 'GeeksForGeeks',
                          siteLink: 'https://auth.geeksforgeeks.org/user/rohitsoni181001'
                      ),
                      actualPortfolioSiteButton(
                          image: AssetImage('assets/images/portfolioImageIcons/leetcode.png'),
                          siteName: 'Leetcode',
                          siteLink: 'https://leetcode.com/rohitsoni181001/'
                      ),
                      actualPortfolioSiteButton(
                          image: AssetImage('assets/images/portfolioImageIcons/stackoverflow.png'),
                          siteName: 'StackOverFlow',
                          siteLink: 'https://stackoverflow.com/users/17956879/rohit-soni'
                      ),
                    ],
                  ),
                    ),
                  bigContainerForDesign(
                      color: Color(0xffE2BF54),
                      itemsWidget: Column(
                        children: [
                          //facebook
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Custom.facebook,
                                  color: Colors.blue,
                                  size: 30/1280*scwWdth,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'rohitsoniinfotech',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30/1280*scwWdth,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //instagram
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Custom.instagram,
                                  color: Colors.red,
                                  size: 30/1280*scwWdth,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '__rohitsoni',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30/1280*scwWdth,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //twitter
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Custom.twitter,
                                  color: Colors.blue,
                                  size: 30/1280*scwWdth,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'rohitsoniinfo',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30/1280*scwWdth,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          //linkedin
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Custom.linkedin,
                                  color: Colors.blue,
                                  size: 30/1280*scwWdth,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'rohitsoni18',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30/1280*scwWdth,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //mail
                        ],
                      ),
                  ),
                  bigContainerForDesign(
                    color: Color(0xffE2BF54),
                    itemsWidget:  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black
                                )
                            ),
                            focusColor: Colors.red,
                            hoverColor: Colors.yellowAccent,
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            hintText: 'Enter Your Name Here.',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black
                                )
                            ),
                            focusColor: Colors.red,
                            hoverColor: Colors.yellowAccent,
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Colors.black,
                            ),
                            hintText: 'Enter Your Mail Here.',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          maxLines: 5,
                          minLines: 1,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black
                                )
                            ),
                            focusColor: Colors.red,
                            hoverColor: Colors.yellowAccent,

                            prefixIcon: Icon(
                              Icons.message,
                              color: Colors.black,
                            ),
                            hintText: 'Enter Your Message Here. Feel free to ask anything.',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: AnimatedButton(
                          height: 35,
                          width: 150,
                          text: 'SEND',
                          isReverse: true,
                          selectedTextColor: Colors.white,
                          transitionType: TransitionType.TOP_TO_BOTTOM,
                          //textStyle:,
                          selectedBackgroundColor: Colors.black54,
                          backgroundColor: Color(0xffE2BF54),
                          borderColor: Colors.white,
                          borderRadius: 50,
                          borderWidth: 2,
                          onPress: () {  },
                        ),
                      ),
                    ],
                  ),
                  ),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ),
        backgroundColor: Color(0xffD4C4E9),
      ),
    );
  }
}
//Color(0x93A53CC7)
