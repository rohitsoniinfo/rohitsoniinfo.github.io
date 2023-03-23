import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';
class myButton extends StatelessWidget {
  final String butttonTitle;
  final Color buttonTextColor;
  final Color buttonBackGroundColor;
  //double width=1280;
final VoidCallback func;
  myButton({required this.butttonTitle, this.buttonTextColor=Colors.black, this.buttonBackGroundColor=Colors.white, required this.func});
  @override
  Widget build(BuildContext context) {
     double width=MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.all(0.015625*width),
      child: OutlinedButton(
        onPressed: func,
        style:ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(
            color: Color(0xffE2BF54),
          )
        ),
        child: Text(
          butttonTitle,
          style: TextStyle(
            fontSize: 0.015625*width,
            color: buttonTextColor,
          ),
        ),
      ),
    );
  }
}

//ButtonStyle(
//           maximumSize: MaterialStateProperty.resolveWith((states) => Size.new(0.09375*MediaQuery.of(context).size.width,0.142857*MediaQuery.of(context).size.height)),
//           shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30),),
//           ),
//           backgroundColor: MaterialStateProperty.resolveWith((states) => buttonBackGroundColor),
//           overlayColor: MaterialStateProperty.resolveWith((states) => kselectedButtonBackgroundColor),
//         ),