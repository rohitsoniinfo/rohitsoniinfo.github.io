import 'package:flutter/material.dart';
class bottomSheet extends StatelessWidget {
  const bottomSheet({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Color(0xff534C3A),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
            )
          ]
      ),

      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 1,
            width: 0.5468*MediaQuery.of(context).size.width,
            color: Color(0xffE2BF54),
          ),
          OutlinedButton(
              style:OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Color(0xffE2BF54),
                  ),
                shape: StadiumBorder(),
              ),
              onPressed: () {
                double width = MediaQuery.of(context).size.width;
                double height = MediaQuery.of(context).size.height;
                double size = MediaQuery.of(context).size.aspectRatio;
                print(width);
                print(height);
              },
              child: Text(
                'portfolio 2023-24',
                style: TextStyle(
                  color: Color(0xffE2BF54),
                ),
              ))
        ],
      ),
    );
  }
}

//ButtonStyle(
//                 shape: MaterialStateProperty.resolveWith((states) =>
//                     RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(50))),
//                 backgroundColor: MaterialStateProperty.resolveWith(
//                         (states) => Colors.white),
//                 overlayColor: MaterialStateProperty.resolveWith((states) => Colors.grey)
//               )