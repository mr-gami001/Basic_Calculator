


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../pages/home.dart';
import 'equal.dart';

var temp = '0';
var last = '0';
var exit = '0';

void numeric(var value) async {
  temp = upper.text;
  if(value == "AC" || value =='=' || value =='/' || value == '*' || value == '-' || value =='+'){

    if(last == '0'){
      mai.text = upper.text;
      upper.text = '0';
      last = value;
      print("first process");
    }
    else if(last != '0'){
      if(last == '+'){
        upper.text ='0';
        var ans = add(temp, mai.text);
        mai.text = ans;
        print("Add ::"+ans);
        print("temp :  "+temp);
        last = value;
      }
      else if(last == '-'){
        upper.text ='0';
        var ans = minus(mai.text, temp);
        mai.text = ans;
        print("minus ::"+ans);
        print("min - temp :  "+temp);
        last = value;
      }
      else if(last == '*'){
        upper.text ='0';
        var ans = multiply(mai.text, temp);
        mai.text = ans;
        print("multiply ::"+ans);
        print("mul - temp :  "+temp);
        last = value;
      }
      else if(last == '/'){
        upper.text ='0';
        var ans = division(mai.text, temp);
        mai.text = ans;
        print("devide ::"+ans);
        print("div - temp :  "+temp);
        last = value;
      }
      else if(value == 'AC'){
        if(exit == '='){
          exit = '0';
          last = '0';
        }
        else {
          upper.text = '0';
          mai.text = '0';
          temp = '0';
          last = '0';
        }
      }
      if(last == '='){
        if(value != 'AC'){
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        }
      }
      if(value == '='){
        // upper.text = '0';
        // last = '0';
        // mai.text = await upper.text;
        print('route :::' +temp);
          last = value;
          upper.text='AC';
          exit = last;



      }
    }
  }
  else{
    if(upper.text == '0'){
        upper.text = value;
    }else{
      upper.text = upper.text+'$value';
      temp = upper.text;
      print(temp);
    }
  }
}




