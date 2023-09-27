import 'package:flutter/cupertino.dart';

class Size{



  static double v(BuildContext context, double vertical){
    return (MediaQuery.of(context).size.height/932)*vertical;
  }
  static double h(BuildContext context, double horizontal){
    return (MediaQuery.of(context).size.width/430)*horizontal;
  }


}