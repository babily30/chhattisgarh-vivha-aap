import 'package:flutter/material.dart';

class Edits{

// front page edits of text
  static Widget text_frontPage_large(text,{
    Color color = Colors.black,
    double fontSize = 28,
    fontFamily = 'CustomSans',
    FontWeight = FontWeight.w500
  }){
    return Text(text,style: TextStyle(color: color,fontSize: fontSize,fontWeight: FontWeight,fontFamily: fontFamily),);
  }


  static Widget text_frontPage_small(text,{
    Color color = const Color(0xff757575),
    double fontSize = 18,
    fontFamily = 'CustomSans',

  }){
    return Text(text,textAlign: TextAlign.center,style: TextStyle(color: color,fontSize: fontSize,fontFamily: fontFamily),);
  }

  // register page text
  static Widget text_register_large(text,{
    double fontSize = 27,
    fontWeight =FontWeight.w600,
    fontFamily = 'CustomSans'
  }){
    return Text(text,style: TextStyle(fontSize: fontSize,fontWeight: fontWeight,fontFamily: fontFamily),);
  }

  static Widget text_register_small(text,{
    double fontSize = 18,
    Color color = const Color(0xff757575),
    fontWeight =FontWeight.w500,
    fontFamily = 'CustomSans'
  }){
    return Text(text,style: TextStyle(color: color,fontSize: fontSize,fontFamily: fontFamily),);
  }

  // NotificationSetting Text
  static Widget text_notificationSetting_large(text,{
    double fontSize = 25,
    fontWeight = FontWeight.w900,
    fontFamily = 'CustomSans',
  }){
    return Text(text,style: TextStyle(fontSize: fontSize,fontWeight: fontWeight,fontFamily: fontFamily));
  }

  static Widget text_notificationSetting_medium(text,{
    double fontSize = 20,
    fontFamily = 'CustomSans',
  }){
    return Text(text,style: TextStyle(fontSize: fontSize,fontFamily: fontFamily));
  }

  static Widget text_notificationSetting_small(text,{
    Color color = Colors.grey,
    fontFamily = 'CustomSans',
  }){
    return Text(text,style: TextStyle(color: color,fontFamily: fontFamily));
  }

// switches used in notification settings
  static Widget CustomSwitch({
    required bool value,
    required ValueChanged <bool>onChanged,
    double scale = 0.8,
    Color activeTrackColor = Colors.red,
  }){
    return Transform.scale(scale: scale,child: Switch(value: value, onChanged: onChanged,activeTrackColor: activeTrackColor,),);
  }

// advance setting and account
  static Widget text_advance_setting(text,{
    double fontSize = 20,
    fontFamily ='CustomSans',
    fontWeight = FontWeight.bold,
    Color color = Colors.grey
  }){
    return Text(text,style: TextStyle(fontSize: fontSize,fontWeight: fontWeight,color: color,fontFamily: fontFamily),);
}
  static Widget image_advance_setting({
    required String image,
    double width = 10,
    double height = 10,
    Color color = Colors.grey,
    double borderWidth = 20.0, 
  }){
    return Image.asset(image,height: height+borderWidth,width: width+borderWidth,color: color,);
  }

//text of privacy policy
  static Widget text_privacy_policy(text,{
    double fontSize = 19,
    fontFamily ='CustomSans',
    fontWeight = FontWeight.bold,
    Color color = Colors.grey,
    height = 1.7 // give the height between the text lines,
  }){
    return Text(text,style: TextStyle(fontSize: fontSize,fontWeight: fontWeight,color: color,fontFamily: fontFamily,height: height),);
}

 static Widget text_profile_small(text,{
    double fontSize = 18,
    Color color = Colors.grey,
    fontFamily = 'CustomSans'
  }){
    return Text(text,style: TextStyle(color: color,fontSize: fontSize,fontFamily: fontFamily),);
  }

  static Widget text_matchdetails_small(text,{
    double fontSize = 18,
    Color color = const Color(0xff757575),
    fontFamily = 'CustomSans'
  }){
    return Text(text,style: TextStyle(color: color,fontSize: fontSize,fontFamily: fontFamily),);
  }
}