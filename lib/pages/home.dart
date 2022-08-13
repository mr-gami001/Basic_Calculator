import 'package:calculator/services/service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
TextEditingController upper = TextEditingController();
TextEditingController mai = TextEditingController();
BuildContext context = context;


class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    upper.text = '0';
    mai.text = '0';

    var first = ['1','2','3','+'];
    var second = ['4','5','6','-'];
    var third = ['7','8','9','*'];
    var fourth = ['AC','0','=','/'];



    @override
    void dispose(){
      super.dispose();
      temp = '0';
    }

    return Scaffold(
      appBar: AppBar(title: Text("Calculator"),centerTitle: true,),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [


              Container(
                height: height*0.56,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                      child: TextField(controller: upper,textAlign: TextAlign.end,enabled:false,decoration: InputDecoration(border: InputBorder.none),style: TextStyle(fontSize: 120),),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                      child: TextField(controller: mai,textAlign: TextAlign.end,enabled:false,decoration: InputDecoration(border: InputBorder.none),style: TextStyle(color: Colors.black12,fontSize: 50),),
                    ),
                  ],
                ),
              ),
              Row(children: [
                for(var item in first)Container(
                  color: Colors.black,
                  width: width*0.22,
                  margin: EdgeInsets.all(5),
                  child: FlatButton(onPressed: (){ numeric(item);}, child: Text(item.toString(),style: TextStyle(color: Colors.white),),),)
              ],),Row(children: [
                for(var item in second)Container(
                  color: Colors.black,
                  width: width*0.22,
                  margin: EdgeInsets.all(5),
                  child: FlatButton(onPressed: (){numeric(item);}, child: Text(item.toString(),style: TextStyle(color: Colors.white),),),)

              ],),Row(children: [
                for(var item in third)Container(
                  color: Colors.black,
                  width: width*0.22,
                  margin: EdgeInsets.all(5),
                  child: FlatButton(onPressed: (){numeric(item);}, child: Text(item.toString(),style: TextStyle(color: Colors.white),),),)

              ],),Row(children: [
                for(var item in fourth)Container(
                  color: Colors.black,
                  width: width*0.22,
                  margin: EdgeInsets.all(5),
                  child: FlatButton(onPressed: (){numeric(item);}, child: Text(item.toString(),style: TextStyle(color: Colors.white),),),)

              ],)
            ],
          ),
        ),
      ),
    );
  }
}
