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
            padding: const EdgeInsets.fromLTRB(0, 35, 180, 5),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Information",
                style:  TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),),
          
                   SizedBox(
                            height: 3,
                          ),
            
                ]),
          ),

       Container(  
        width: 370,  
        height: 170,  
        padding: const EdgeInsets.fromLTRB(30, 2, 5, 5),  
        child: Card(  
          shape: RoundedRectangleBorder(  
            borderRadius: BorderRadius.circular(15.0),  
          ),  
          color: Colors.white,  
          elevation: 1,  
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisSize: MainAxisSize.min,  
            children: <Widget>[  
              ListTile(
                leading: 
                // Icon(Icons.face, size: 60),  
                Image.asset('assets/profileimage.png'),

                title: const Text(  
                  'M. Df',  
                  style: TextStyle(fontSize: 18.0)  
                ), 
              

                subtitle: const Text(  
                  'Md@gmail.com\nNo.15 uti stret off ovi palaca jak state',  
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey
                  )  
                ),  
              ),  


        ]


      )
    )
    )
    ])
    );
  }
}