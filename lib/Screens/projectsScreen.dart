import 'dart:core';
import 'package:flutter/material.dart';
import 'package:portfolio/Components/myButton.dart';
import 'package:portfolio/Components/projectDetails.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/Screens/EducationScreen.dart';
import 'package:portfolio/Screens/ContactsScreen.dart';
import 'package:portfolio/Components/bottomSheet.dart';
import 'package:portfolio/Screens/AboutScreen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/Components/websiteIconAndLinkButtonInRow.dart';
import 'package:url_launcher/url_launcher.dart';

class projectsScreen extends StatefulWidget {
  const projectsScreen({Key? key}) : super(key: key);
  @override
  State<projectsScreen> createState() => _projectsScreenState();
}

bool state = false;
_launchURL() async {
  Uri _url = Uri.parse('widget.projectLink');
  if (await launchUrl(_url)) {
  } else {
    throw 'Could not launch $_url';
  }
}

class _projectsScreenState extends State<projectsScreen> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomSheet: bottomSheet(),
          appBar: AppBar(
            backgroundColor: const Color(0xff534C3A),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child:width>768?
                SingleChildScrollView(
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
                        width: 70/1280*width,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 500/1280*width,
                        height: 1,
                        color: Color(0xffE2BF54),
                        // constraints: BoxConstraints(
                        //   minHeight: 1,
                        //   minWidth: double.infinity,
                        // ),
                      )
                    ],
                  ),
                ) :
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/');
                        },
                        icon:Icon(
                          Icons.info ,
                          color: kunSelectedButtonTextColor,
                        )),
                    IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/education');
                        },
                        icon:Icon(
                          Icons.school,
                          color: kunSelectedButtonTextColor,
                        )),
                    IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/project');
                        },
                        icon:Icon(
                          Icons.work,
                          color: kselectedButtonTextColor,
                        )),
                    IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/contact');
                        },
                        icon:Icon(
                          Icons.contact_phone,
                          color: kunSelectedButtonTextColor,
                        ))
                  ],
                ),
              ),
            ),
          ),
          backgroundColor: Color(0xffD4C4E9),
          body: Container(
            width: double.infinity,
            color: const Color(0xff534C3A),
            child: SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      projectDetails(
                        projectImage: 'assets/images/MyImage/weatherapp.jpeg',
                        projectName: 'Weather App',
                        projectDescription:
                            'This is a simple weather app which shares the weather of a city. It can also share the weather of particular city and current location weather.',
                        technicalDescription:
                            'Flutter, Dart, Openweathermap api',
                        projectLink:
                            'https://github.com/rohitsoniinfo/Weather-App',
                      ),
                    ],
                  ),
                  projectDetails(
                    projectImage: 'assets/images/MyImage/BMICalculator.jpeg',
                    projectName: 'BMI Calculator',
                    projectDescription:
                    'This is a BMI Calculator app which shares the BMI of body. It takes height, weight etc. as an input and gives the bmi in output on different screen.',
                    technicalDescription:
                    'Flutter, Dart',
                    projectLink:
                    'https://github.com/rohitsoniinfo/Weather-App',
                  ),
                  Container(
                    width: 600/1280*width,
                    //height: 650,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 197, 186, 82),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 600/1280*width,
                              height: 400,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/MyImage/linuxImage.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'Wifi Hacking Script',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              color: Colors.yellow,
                              width: double.infinity,
                              child: const Text(
                                'This project is bash script. It automates all the task of Wifi Hacking. it is the only script you need to crack wifi password.',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Technology Used',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              color: Colors.yellow,
                              width: double.infinity,
                              child: const Text(
                                'Bash Script, Aircrack-ng, Kali Linux.',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText("If You Wanna Look At My Projects,",
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 30,
                          ),
                          speed: const Duration(milliseconds: 100)),
                      WavyAnimatedText('Please Head Over To My GitHub',
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 30,
                          ),
                          speed: Duration(milliseconds: 100)),
                    ],
                  ),
                  SizedBox(
                    width: 200,
                    //height: 200,
                    child: actualPortfolioSiteButton(
                      image: const AssetImage(
                          'assets/images/portfolioImageIcons/github1.png'),
                      siteName: 'Github',
                      siteLink: 'https://github.com/rohitsoniinfo',
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
