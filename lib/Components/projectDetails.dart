import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';
import 'package:device_frame/device_frame.dart';
import 'package:url_launcher/url_launcher.dart';
class projectDetails extends StatefulWidget {
  projectDetails({required this.projectName, required this.projectDescription,required this.technicalDescription,required this.projectImage,required this.projectLink});
  final String projectName;
  final String projectDescription;
  final String technicalDescription;
  final String projectImage;
  final String projectLink;
  @override
  State<projectDetails> createState() => _projectDetailsState();
}
class _projectDetailsState extends State<projectDetails> {
  _launchURL() async {
    Uri _url = Uri.parse(widget.projectLink);
    if (await launchUrl(_url)) {
    } else {
      throw 'Could not launch $_url';
    }
  }
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(10),
      width: 500/1280*width,
      height: 400,
      decoration: BoxDecoration(
        color: kselectedButtonTextColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 10,
            top: 15,
            bottom: 15,
            child: DeviceFrame(
              device: DeviceInfo.genericPhone(
                platform: TargetPlatform.android,
                name: 'Medium',
                id: 'medium',
                screenSize:  Size(500/1280*width, 900),
                safeAreas: const EdgeInsets.only(
                  left: 0.0,
                  top: 0.0,
                  right: 0.0,
                  bottom: 0.0,
                ),
                rotatedSafeAreas: const EdgeInsets.only(
                  left: 0.0,
                  top: 0.0,
                  right: 0.0,
                  bottom: 0.0,
                ),
              ),
              isFrameVisible: true,
              orientation: Orientation.portrait,
              screen: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.red,
                    image:  DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                           widget.projectImage,
                        )
                    )
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  widget.projectName,
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
                width: 270/1280*width,
                child: Text(
                  widget.projectDescription,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                width: 270/1280*width,
                child: Text(
                  widget.technicalDescription,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'view project.',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = _launchURL,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
