

import 'package:calculator/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../pages/home.dart';




String add(var n1, var n2){
  int num1 = int.parse(n1);
  int num2 = int.parse(n2);
  return (num1+num2).toString();
}

String minus(var n1, var n2){

  if(n1 == '0' && n2 != '0'){
    return "-"+n2.toString();
  }
  else if(mai.text != '0' ) {
    int num1 = int.parse(n1);
    int num2 = int.parse(n2);
    return (num1 - num2).toString();
  }
  else{
    return n2;
  }
}

String multiply(var n1, var n2){

  if(n1 == '0' || n2 == '0'){
    return '0';
  }
  else if(last != "0" && mai.text != '0') {
    int num1 = int.parse(n1);
    int num2 = int.parse(n2);
    return (num1 * num2).toString();
  }
  else{
    return n2;
  }
}

String division(var n1, var n2){
  try {

      int num1 = int.parse(n1);
      int num2 = int.parse(n2);
      int ans = (num1/num2).round();
      return ans.toString();

  }catch(e){
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    return 'Click AC';

  }
  
}