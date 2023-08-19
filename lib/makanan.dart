import 'package:flutter/material.dart';

class Makanan extends StatefulWidget {
  const Makanan({super.key});

  @override
  State<Makanan> createState() => _MakananState();
}

class _MakananState extends State<Makanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        children: [
         Center(
          child: Container (
            margin: const EdgeInsets.all(5),
            height: MediaQuery.of(context).size.height * 0.45,
            width: MediaQuery.of(context).size.height * 0.45,
            child : 
            Image.asset('assets/makanan.png')
          ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Veggie tomato mix",
                style:  TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),),
          
                   SizedBox(
                            height: 6,
                          ),
          
                Text("Rp.16.900,00",
                style:  TextStyle(
                color: Color(0xffFF460A),
                fontSize: 22,
                fontWeight: FontWeight.bold)),
            
                ]),
          ),
           Expanded(
             child: ListView(
              children: [
                ListView(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 30),
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  children: const [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Delivery info",
                        style:  TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),),
                        Text("Delivered Between monday aug and thursday 20 from 8pm to 9:32 pm",
                        style:  TextStyle(
                        color: Colors.grey,
                        fontSize: 15)),

                        SizedBox(
                          height: 40,
                        ),

                         Text("Return policy",
                        style:  TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),),
                        Text("All our foods are double checked before leaving our stores. So by any case you found a broken food please contact our hotline immediately",
                        style:  TextStyle(
                        color: Colors.grey,
                        fontSize: 15)),
                      ],
                    ),
                  ],
                ),
               
          Container(
            height: 100,
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 35),
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffFF460A),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 16,
                ),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              
            ),
            onPressed: () {},
            child: const Text('Add to Cart'),
                  ),
          ),


             
              ] ),
           )
    ]
    )
    
    );
  }
}