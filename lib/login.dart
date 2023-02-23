import 'dart:io';

import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:hashemfordevelopment/main.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Color mainColor = Color.fromARGB(255, 3, 45, 80);

  bool changeBool = true;
  IconData changeIcon = Icons.visibility_off;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: NetworkImage("https://scontent-mba1-1.xx.fbcdn.net/v/t39.30808-6/304932243_464728425668559_4146637393274560281_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=cm87UNlsoq4AX9e4tll&_nc_ht=scontent-mba1-1.xx&oh=00_AfDsQwvuTAiX3VKX2HGULEId3ex13iVAJZW60lEF5LmbqA&oe=63FC49FE"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15,right: 15, left: 15),
            child: TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45), 
                  borderSide: BorderSide.none
                  )
                ),
                style: GoogleFonts.robotoMono(
                  fontSize: 18,
                  color:  mainColor,),
            ),
          ),
            Padding(
            padding: const EdgeInsets.only(
              top: 15,right: 15, left: 15, bottom: 15),
            child: TextFormField(
              controller: passwordController,
              obscureText: changeBool,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45), 
                  borderSide: BorderSide.none
                  ),
                  suffix: IconButton(
                    onPressed: (){
                      setState(() {
                        if(changeIcon == Icons.visibility_off)
                        {
                          changeIcon = Icons.visibility;
                          changeBool = false;
                        }
                        else{
                          changeIcon = Icons.visibility_off;
                          changeBool = true;
                        }
                      });
                    },
                    icon: Icon(
                      changeIcon,
                    color: mainColor),)
                ),
                style: GoogleFonts.robotoMono(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color:  mainColor,),
            ),
          ),
          ElevatedButton(
            onPressed: (){
              setState(() {
                
              if(nameController.text == "nayra" &&
              passwordController.text == "123"){
                print("Success");
              }
              else{
                print("Faild");
              }
              });
            },
            child: Text("LOGIN"),)
        ],
      ),
    );
  }
}