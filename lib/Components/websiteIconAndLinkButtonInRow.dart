import 'package:flutter/material.dart';
import 'dart:html' as html;
class actualPortfolioSiteButton extends StatelessWidget {
  actualPortfolioSiteButton({required this.image,required this.siteName,required this.siteLink});
  final AssetImage image;
  final String siteName;
  final String siteLink;



  @override
  Widget build(BuildContext context) {
    double scwWdth=MediaQuery.of(context).size.width;
    double scHeight=MediaQuery.of(context).size.height;
    return Padding(
      padding:  EdgeInsets.all(10/1280*scwWdth),
      child: Row(
        children: [
          Container(
            width: 50/1280*scwWdth,
            height: 50/700*scHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: image,
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(20/1280*scwWdth,0,0,0),
            child: TextButton(
              onPressed: (){
                html.window.open(siteLink,"_blank");
              },
              child: Text(
                siteName,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30/1280*scwWdth,
                ),
              ),
              style: ButtonStyle(
                elevation: MaterialStateProperty.resolveWith((states) => 20),
                backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                overlayColor: MaterialStateProperty.resolveWith((states) => Colors.grey)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
