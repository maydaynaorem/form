import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const Form1(),
    );
  }
}
class Form1 extends StatefulWidget {
  const Form1({ Key? key }) : super(key: key);

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  final GlobalKey<FormState>_formkey = GlobalKey<FormState>();

Widget _name(){
  return Padding(
    padding: const EdgeInsets.only(left: 30, right: 30),
    child: TextFormField(
      
       decoration: InputDecoration(
         labelText: "Name"
       ),
       validator: ((value) {
                      if(value == null || value.isEmpty){
                        return "Name is required";
                      }})
     ),
  );

}
Widget _address(){
  return Padding(
    padding: const EdgeInsets.only(left: 30, right: 30),
    child: TextFormField(
       decoration: InputDecoration(
         labelText: "Address"
       ),
        validator: ((value) {
                      if(value == null || value.isEmpty){
                        return "Address is required";
                      }})
     ),
  );
}

Widget _number(){
  return Padding(
    padding: const EdgeInsets.only(left: 30, right: 30),
    child: TextFormField(
       decoration: InputDecoration(
         labelText: "Contact Number"
       ),
        validator: ((value) {
                      if(value == null || value.isEmpty){
                        return "Number is required";
                      }})
     ),
  );
}
Widget _email(){
  return Padding(
    padding: const EdgeInsets.only(left: 30, right: 30),
    child: TextFormField(
       decoration: InputDecoration(
         labelText: "Email"
       ),
        validator: ((value) {
                      if(value == null || value.isEmpty){
                        return "Email is required";
                      }})
     ),
  );
}
Widget _password(){
  return Padding(
    padding: const EdgeInsets.only(left: 30, right: 30),
    child: TextFormField(
       decoration: InputDecoration(
         labelText: "Password"
       ),
        validator: ((value) {
                      if(value == null || value.isEmpty){
                        return "Password is required";
                      }})
     ),
  );
}
Widget _qualification(){
  return Padding(
    padding: const EdgeInsets.only(left: 30, right: 30),
    child: TextFormField(
       decoration: InputDecoration(
         labelText: "Qualification"
       ),
        validator: ((value) {
                      if(value == null || value.isEmpty){
                        return "Qualification is required";
                      }})
     ),
  );
}
Widget _age(){
  return Padding(
    padding: const EdgeInsets.only(left: 30,right: 30),
    child: TextFormField(
       decoration: InputDecoration(
         labelText: "Age"
       ),
        validator: ((value) {
                      if(value == null || value.isEmpty){
                        return "Age is required";
                      }})
     ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form",style: TextStyle(color: Colors.black, fontSize: 25),),
        actions: [Icon(Icons.abc_sharp)],
      ),
      body:Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Center(child: Text("APPLICATION FORM")),
       Form(
        key: _formkey,
        child:
      Column(
      
        children: [
               _name(),
               _address(),
               _number(),
               _email(),
               _password(),
               _qualification(),
               _age(),
              
            ],
          ),
    ),
      ElevatedButton(onPressed: () =>{
            if(_formkey.currentState!.validate())
            {}
          } , child: Text("Submit"))],),

      );   
        
  }
}
