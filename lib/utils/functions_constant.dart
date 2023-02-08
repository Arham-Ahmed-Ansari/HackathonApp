import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customFunctions {
  static customText(edgeInset, text, weight, size, customColor,
      [customitalic]) {
    return Padding(
      padding: edgeInset,
      child: Text(text,
          style: GoogleFonts.philosopher(
              fontWeight: weight,
              fontSize: size,
              color: customColor,
              fontStyle: customitalic)),
    );
  }

  static customAppbar() {
    return BottomAppBar(
      color: Color(0xffF5F5F5),
      child: TabBar(
        isScrollable: true,
        indicatorColor: Color(0xff0D986A),
        indicatorSize: TabBarIndicatorSize.label,
        overlayColor: MaterialStateProperty.all(Color(0xffF5F5F5)),
        tabs: [
          Tab(
            child: Text(
              "Top Pick",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0D986A)),
            ),
          ),
          Tab(
            child: Text(
              "Indoor",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0D986A)),
            ),
          ),
          Tab(
            child: Text(
              "Outdoor",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0D986A)),
            ),
          ),
          Tab(
            child: Text(
              "Seed",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0D986A)),
            ),
          ),
          Tab(
            child: Text(
              "planter",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0D986A)),
            ),
          )
        ],
      ),
    );
  }

  static customCard(cardImage, flowerImage) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 19, top: 30, bottom: 10),
          child: Image(image: AssetImage(cardImage)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 220),
          child: Image(image: AssetImage(flowerImage)),
        )
      ],
    );
  }
}
