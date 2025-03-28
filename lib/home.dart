import 'package:flutter/material.dart';
import 'package:lab2/ComputerWidget.dart';
class Home extends StatelessWidget{
  const Home({super.key});
//@override annotation is used to indicate that a method in a subclass is intentionally overriding a method in its superclass.
// showing explicitly that build is overriding a method from StatelessWidget (the superclass).
@override
// The context object is information about the location that this widget is in inside the application 
Widget build(BuildContext context){
  return Row(
    mainAxisAlignment:MainAxisAlignment.center,
    crossAxisAlignment:CrossAxisAlignment.center,
    children: [
    Container(
    width: 200,
    height: 200,
    color: Colors.blue,
    padding: EdgeInsets.all(20), 
    child:ComputerWidget(),
  )
  ]); 
  
}
}

