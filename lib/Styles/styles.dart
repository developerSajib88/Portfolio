import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color customGreen = Color(0xff00D27B);
Color lightGreen = Color(0xff00D78A);
Color customBlack = Color(0xff53514F);
Color darkGrey = Color(0xff4D4C4B);
Color customGrey = Color(0xff747270);

TextStyle textStyle1 = GoogleFonts.poppins(
  fontWeight: FontWeight.bold,
  fontSize: 50.0,
  color: customGreen
);

TextStyle textStyle2 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 15.0,
    color: customBlack
);


TextStyle textStyle3 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 20.0,
    color: darkGrey
);



TextStyle textStyle4 = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 18.0,
    color: customGrey
);


TextStyle animatedTextStyle1 = GoogleFonts.poppins(
    color: customBlack,
    fontWeight: FontWeight.w400,
    fontSize: 20.0,
);




TextStyle animtatedTextStyle2 = GoogleFonts.poppins(
  fontWeight: FontWeight.bold,
  fontSize: 30.0,
  color: customGreen,
);