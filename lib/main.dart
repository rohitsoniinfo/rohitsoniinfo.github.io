import 'package:flutter/material.dart';
import 'package:portfolio/Screens/AboutScreen.dart';

void main() {
  runApp(const MyApp());
}
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       darkTheme: ThemeData(
//       ),
//       debugShowCheckedModeBanner: false,
//       home:  MyHomePage(),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}
