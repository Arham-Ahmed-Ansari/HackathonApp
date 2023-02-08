import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project7/screens/drawer.dart';
import 'package:project7/utils/images_constant.dart';
import 'package:project7/utils/functions_constant.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // backgroundColor: Color(0xff9CE5CB),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          Container(
            height: 74,
            color: Color(0xff9CE5CB),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18, left: 18),
                  child: Image(image: AssetImage(Images.loginLogo)),
                ),
                customFunctions.customText(
                    const EdgeInsets.only(top: 19, left: 30),
                    "PLANTIFY",
                    FontWeight.w700,
                    20.0,
                    Color(0xff002140)),
                Padding(
                  padding: const EdgeInsets.only(top: 18, left: 120),
                  child: Icon(CupertinoIcons.bell),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18, left: 20),
                  child: InkWell(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => DrawerPage())));
                      }),
                      child: Icon(Icons.menu)),
                )
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                width: 450,
                height: 408,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage(Images.productRectangle))),
              ),
              customFunctions.customText(EdgeInsets.only(top: 12, left: 36),
                  "Air Purifier", FontWeight.w600, 18.0, Color(0xff002140)),
              Padding(
                padding: const EdgeInsets.only(left: 140, top: 12),
                child: Image(image: AssetImage(Images.productSteps)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 267, top: 12),
                child: Image(image: AssetImage(Images.productRating)),
              ),
              customFunctions.customText(
                  EdgeInsets.only(top: 44, left: 36, right: 36),
                  "Watermelon Peperomia",
                  FontWeight.w700,
                  38.0,
                  Color(0xff002140)),
              customFunctions.customText(
                  EdgeInsets.only(top: 151, left: 36, right: 36),
                  "Price",
                  FontWeight.w700,
                  14.0,
                  Color(0xff002140).withOpacity(0.6)),
              customFunctions.customText(
                  EdgeInsets.only(top: 173, left: 36, right: 36),
                  "dollor:350",
                  FontWeight.w700,
                  16.0,
                  Color(0xff002140)),
              customFunctions.customText(
                  EdgeInsets.only(top: 210, left: 36, right: 36),
                  "Size",
                  FontWeight.w700,
                  14.0,
                  Color(0xff002140).withOpacity(0.6)),
              customFunctions.customText(
                  EdgeInsets.only(top: 232, left: 36, right: 36),
                  "5” h",
                  FontWeight.w700,
                  16.0,
                  Color(0xff002140)),
              Positioned(
                top: 140,
                left: 142,
                child: Image(
                  image: AssetImage(Images.productFlower),
                  width: 227,
                  height: 270,
                ),
              ),
              Positioned(
                top: 279,
                left: 25,
                child: Image(
                  image: AssetImage(Images.productCart),
                ),
              ),
              Positioned(
                top: 279,
                left: 100,
                child: Image(
                  image: AssetImage(Images.productfavirote),
                ),
              ),
            ],
          ),
        ])));
  }
}
