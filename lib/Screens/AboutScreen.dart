import 'package:flutter/material.dart';
import 'package:portfolio/Screens/EducationScreen.dart';
import 'package:portfolio/Screens/projectsScreen.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/Components/myButton.dart';
import 'package:portfolio/Screens/ContactsScreen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/Components/bottomSheet.dart';
import 'package:device_frame/device_frame.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context)=>  aboutScreen(),
        '/project': (context)=> projectsScreen(),
        '/education': (context)=> educationScreen(),
        '/contact': (context)=> contactScreen(),
      },
    );
  }
}


class aboutScreen extends StatefulWidget {
  const aboutScreen({Key? key}) : super(key: key);
  @override
  State<aboutScreen> createState() => _aboutScreenState();
}
class _aboutScreenState extends State<aboutScreen> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.width;
    return Scaffold(
      bottomSheet: bottomSheet(),
      appBar: AppBar(
        backgroundColor: Color(0xff534C3A),//Colors.black54,//Colors.grey,//Color(0xffD4C4E9),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: width>768? SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  myButton(
                    butttonTitle: 'About',
                    buttonTextColor: Color(0xffE2BF54),//selectedButtonTextColor,
                    buttonBackGroundColor: Color(0xff474644),//Colors.black,//kselectedButtonBackgroundColor,
                    func: () {
                      Navigator.pushNamed(context, '/about');
                    },
                  ),
                  myButton(
                    butttonTitle: 'Education',
                    buttonTextColor: kunSelectedButtonTextColor,
                    buttonBackGroundColor: kunSelectedButtonBackgroundColor,
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
                    width: 70,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 0.3906*width,
                    height: 1,
                    color: Color(0xffE2BF54),
                  )
                ],
              ),
            ):  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){}, icon:Icon(
                  Icons.info ,
                  color: kselectedButtonTextColor,
                )),
                IconButton(onPressed: (){}, icon:Icon(
                  Icons.school,
                  color: kunSelectedButtonTextColor,
                )),
                IconButton(onPressed: (){}, icon:Icon(
                  Icons.work,
                  color: kunSelectedButtonTextColor,
                )),
                IconButton(onPressed: (){}, icon:Icon(
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
          //primary: true,
          controller: ScrollController(
            initialScrollOffset: 20,
          ),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(Colors.black54, BlendMode.color),
                      filterQuality: FilterQuality.low,
                      image: NetworkImage('https://avatars.githubusercontent.com/u/92707347?v=4')
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(10.0),
                child: Text(
                  'Hey There! Rohit Soni here.',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    fontSize: 40,
                    color: Color(0xffE2BF54),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: AnimatedTextKit(
                    pause: Duration(milliseconds: 10),
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TyperAnimatedText(
                        'I am an engineering student, I am passionate about Technology. I like creating new stuffs. I am good at problem solving.  \n 🔭 I’m currently working on my personal project \n 🌱 I’m currently learning Flutter, \n 💬 Ask me about Linux, Cyber Security, Flutter, Android Development.',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ]),
              ),
              SizedBox.fromSize(size: Size(0,100),)
            ],
          ),
        ),
      ),
    );
  }
}