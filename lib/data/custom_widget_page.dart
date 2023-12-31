import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

mystylepoppins(double size,[Color ? clr,FontWeight?fw]){
  return GoogleFonts.poppins(
    fontSize: size,
    color: clr,
    fontWeight: fw,
  );
}
mystyleroboto(double size,[Color ? clr,FontWeight?fw]){
  return GoogleFonts.roboto(
    fontSize: size,
    color: clr,
    fontWeight: fw,
  );
}

class CountainerModel{
  int ? hight;
  String ? color;
  CountainerModel({this.hight,this.color});
}


const Color textClrLight=Color(0xffFFFFFF);
const Color textClrDart=Color(0xffA7A9AC);
const Color textClrteal=Color(0xff006747);