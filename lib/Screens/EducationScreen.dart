import 'package:flutter/material.dart';
import 'package:portfolio/Components/myButton.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/Screens/projectsScreen.dart';
import 'package:portfolio/Screens/ContactsScreen.dart';
import 'package:portfolio/Screens/AboutScreen.dart';
import 'package:portfolio/Components/BigContainerForDesign.dart';
import 'package:portfolio/Components/bottomSheet.dart';
class educationScreen extends StatefulWidget {
  const educationScreen({Key? key}) : super(key: key);

  @override
  State<educationScreen> createState() => _educationScreenState();
}

class _educationScreenState extends State<educationScreen> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;//1280
    double height=MediaQuery.of(context).size.height;//700
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomSheet: bottomSheet(),
          appBar: AppBar(
            backgroundColor: Color(0xff534C3A),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child:  Padding(
                padding:  EdgeInsets.fromLTRB(20/1280*width, 20/1280*width, 0, 0),
                child: width>768?
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
                          Navigator.pushNamed(context, '/');
                        },
                      ),
                      myButton(
                        butttonTitle: 'Education',
                        buttonTextColor: kselectedButtonTextColor,
                        buttonBackGroundColor: kselectedButtonBackgroundColor,
                        func: () {
                          Navigator.pushNamed(context, '/education');
                        },
                      ),
                      myButton(
                        butttonTitle: 'Projects',
                        buttonTextColor: kunSelectedButtonTextColor,
                        buttonBackGroundColor: kunSelectedButtonBackgroundColor,
                        func: () {
                          Navigator.pushNamed(context, '/project');
                        },
                      ),
                      myButton(
                        butttonTitle: 'Contacts',
                        buttonTextColor: kunSelectedButtonTextColor,
                        buttonBackGroundColor: kunSelectedButtonBackgroundColor,
                        func: () {
                          Navigator.pushNamed(context, '/contact');
                        },
                      ),
                      SizedBox(
                        width: 70/1280*width,
                      ),
                      Container(
                        margin: EdgeInsets.all(10/1280*width),
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
                ):
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
                      color: kselectedButtonTextColor,
                    )),
                    IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/project');
                        },
                        icon:Icon(
                      Icons.work,
                      color: kunSelectedButtonTextColor,
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
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xff534C3A),
            child: SingleChildScrollView(
              child: width>768?
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  bigContainerForDesign(
                    height: 200,
                    color: Color(0xffE2BF54),
                    itemsWidget: Column(
                        children: [
                          Text(
                            'College',
                            style:  TextStyle(
                              color: Colors.black,
                              fontSize: 40/1280*width,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 60/1280*width,
                                height: 60/700*height,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/educationlogo/college.jpg')
                                    )
                                ),
                              ),
                              Text(
                                'Lakshmi Narain College \n of Technology Bhopal',
                                //maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                //softWrap: true,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35/1280*width,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                ),
                              )
                            ],
                          ),
                          Text(
                            'Year 2021-2025',
                            style:  TextStyle(
                              color: Colors.black,
                              fontSize: 25/1280*width,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ]
                    )
                    ),
                  bigContainerForDesign(
                    height: 170,
                    color: Color(0xffE2BF54),
                    itemsWidget: Column(
                      children: [
                        Text(
                          'School',
                          style:  TextStyle(
                            color: Colors.black,
                            fontSize: 40/1280*width,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 60/1280*width,
                              height: 60,
                              decoration: BoxDecoration(
                                //shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/educationlogo/school.jpg')
                                  )
                              ),
                            ),
                            Text(
                              'Saraswati Vidhya Mandir',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35/1280*width,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Year 2006-2020',
                          style:  TextStyle(
                            color: Colors.black,
                            fontSize: 25/1280*width,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ]
                  ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ) :
              Column(
                children: [
              AnimatedContainer(
              margin: EdgeInsets.all(20),
              //width: double.infinity,
              //height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kselectedButtonTextColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                  ),
                ],
              ),
              // Define how long the animation should take.
              duration: const Duration(seconds: 10),
              // Provide an optional curve to make the animation feel smoother.
              curve: Curves.bounceIn,
              child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        //shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/educationlogo/school.jpg')
                          )
                      ),
                    ),
                    Text(
                      'School : Saraswati Vidhya Mandir',
                      style: TextStyle(
                        color: Colors.white,
                        //fontSize: 35/1280*width,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      'Year 2006-2020',
                      style:  TextStyle(
                        color: Colors.black,
                        //fontSize: 25/1280*width,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ]
              ),
            ),
                  AnimatedContainer(
                    margin: EdgeInsets.all(20),
                    //width: double.infinity,
                    //height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kselectedButtonTextColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    // Define how long the animation should take.
                    duration: const Duration(seconds: 10),
                    // Provide an optional curve to make the animation feel smoother.
                    curve: Curves.bounceIn,
                    child: Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/educationlogo/college.jpg')
                                )
                            ),
                          ),
                          Text(
                            'College : Lakshmi Narain College  of Technology Bhopal',
                            //maxLines: 3,
                            //overflow: TextOverflow.ellipsis,
                            //softWrap: true,
                            style: TextStyle(
                              color: Colors.white,
                              //fontSize: 35/1280*width,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Text(
                            'Year 2021-2025',
                            style:  TextStyle(
                              color: Colors.black,
                              //fontSize: 25/1280*width,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ]
                    ),
                  ),
                SizedBox(
                  height: 60,
                ),
              ],
              ),
            ),
          ),
        backgroundColor: Color(0xffD4C4E9),
      ),
    );
  }
}
