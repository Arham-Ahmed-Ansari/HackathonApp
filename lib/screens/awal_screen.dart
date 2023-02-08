import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project7/screens/login_screen.dart';
import 'package:project7/utils/functions_constant.dart';
import 'package:project7/utils/images_constant.dart';

class AwalScreen extends StatelessWidget {
  const AwalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            children: [
              Image(image: AssetImage(Images.splashRectangle)),
              Image(image: AssetImage(Images.splashVector)),
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 75, right: 73),
                child: Image(image: AssetImage(Images.splashLogo)),
              ),
              customFunctions.customText(
                  const EdgeInsets.only(top: 290, left: 80),
                  "PLANTIFY",
                  FontWeight.w700,
                  50.0,
                  Color(0xffF5F5F5)),
            ],
          ),
          customFunctions.customText(
              const EdgeInsets.only(top: 16, left: 24, right: 180),
              "GET READY BE HIGYENIC",
              FontWeight.w700,
              26.0,
              Color(0xff0D986A)),
          customFunctions.customText(
              const EdgeInsets.only(top: 30, left: 24, right: 10),
              "Jelajahi AiLearn untuk menambah kemampuanmu dalam mengoperasikan Adobe Illustrator",
              FontWeight.w700,
              16.0,
              Color(0xff0D986A)),
          Padding(
            padding: const EdgeInsets.only(top: 35, left: 25, right: 25),
            child: SizedBox(
                width: 340,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff53B175)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
                    child: Text("Get Started",
                        style: GoogleFonts.philosopher(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        )))),
          ),
        ],
      )),
    );
  }
}
