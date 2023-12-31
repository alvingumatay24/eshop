// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
 final String titleappbar;
  final void Function()? onPressedSearch;
  final void Function(String)? onChanged;
  final TextEditingController mycontroller;
  const CustomAppBar({super.key, required this.titleappbar,  this.onPressedSearch, this.onChanged, required this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return    Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(child: TextFormField(
                      controller: mycontroller,
                      onChanged: onChanged,
                      decoration: InputDecoration(
                      prefixIcon: IconButton(icon: Icon(Icons.search), onPressed: onPressedSearch),
                      hintText: titleappbar,
                      hintStyle: TextStyle(fontSize: 18),
                      border: OutlineInputBorder(
                       borderSide: BorderSide.none,
                       borderRadius: BorderRadius.circular(10)
                      ),
                      filled: true,
                      fillColor: Colors.grey[200]
                    ),
                  )),
                  SizedBox(width: 10),
              
                ],
              ),
            );
  }
}