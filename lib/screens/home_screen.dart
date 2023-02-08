import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project7/screens/drawer.dart';
import 'package:project7/screens/product_screen.dart';
import 'package:project7/utils/functions_constant.dart';
import 'package:project7/utils/images_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffF5F5F5),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30, left: 10),
                    child: Image(
                        width: 386,
                        height: 195,
                        image: AssetImage(Images.homeBanner)),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 24, left: 40),
                      width: 281,
                      height: 46,
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xff004A61),
                            ),
                            suffixIcon: Icon(CupertinoIcons.qrcode_viewfinder),
                            hintText: "Search",
                            hintStyle: GoogleFonts.philosopher(
                                fontSize: 18, color: Color(0xff181725)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffE2E2E2)),
                            )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24, left: 10),
                      width: 42,
                      height: 46,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.1)),
                      child: Icon(Icons.filter_list),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                customFunctions.customAppbar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
