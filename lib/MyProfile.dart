// ignore_for_file: file_names
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Profile',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
          
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body:
      Column(
        children : [
          Container(
            padding: const EdgeInsets.all(40),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Information",
                style:  TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),),
          
                   SizedBox(
                            height: 6,
                          ),
            
                ]),
          ),

        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Container (
              margin: const EdgeInsets.all(5),
              height: 100,
              width: 200,
              color: Colors.white,
            ),
        ),


        ]


      )
    );
  }
}