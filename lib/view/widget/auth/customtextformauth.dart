// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
   
    final String hintText;
    final String labeltext;
    final IconData iconData;
    final TextEditingController? mycontroller;
    final String? Function(String?) valid;
    final bool isNumber;
    final bool?  obscureText;
    final void Function()? onTapIcon; 
    
  const CustomTextFormAuth({Key? key, 
  required this.hintText, 
  required this.labeltext, 
   required this.mycontroller, 
  required this.iconData, required this.valid, required this.isNumber, this.obscureText, this.onTapIcon, }) 
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextFormField(
        keyboardType: isNumber ? TextInputType.numberWithOptions(decimal: true): TextInputType.text,
        validator: valid,
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false ? false : true, 
        decoration: InputDecoration(
               hintText: hintText,
               hintStyle: TextStyle(fontSize: 14),
               floatingLabelBehavior: FloatingLabelBehavior.always,
               contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30,),
               label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(labeltext)),
                suffixIcon: InkWell(child: Icon(iconData), onTap: onTapIcon,),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))           
        ),
      ),
    );
  }
}