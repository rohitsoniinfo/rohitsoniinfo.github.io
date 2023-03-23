import 'package:flutter/material.dart';
//Color(0x93A53CC7)
class bigContainerForDesign extends StatelessWidget {
  bigContainerForDesign({required this.color,required this.itemsWidget,this.width=500,this.height=400});
  final Color color;
  final Widget itemsWidget;
  final double width;
  final double height;


  @override
  Widget build(BuildContext context) {
    double scwWdth=MediaQuery.of(context).size.width;
    double scHeight=MediaQuery.of(context).size.height;
    return AnimatedContainer(
      margin: EdgeInsets.all(20),
      width: width/1280*scwWdth,
      height: height/700*scHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color,
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
      child: itemsWidget,
    );
  }
}
