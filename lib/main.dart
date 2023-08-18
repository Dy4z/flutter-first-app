import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future main() async {

  WidgetsFlutterBinding.ensureInitialized();
  
  // ignore: deprecated_member_use
  FlutterNativeSplash.removeAfter(initialization);
  runApp(const MyApp());


}

Future initialization(BuildContext? context) async {

  await Future.delayed(const Duration(seconds: 1));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nunito'
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // This widget is the home page of your application. It is stateful, meaning
  @override
  Widget build (BuildContext context) {
    return Scaffold (
      backgroundColor: const Color.fromARGB(255, 236, 232, 232),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 232, 232),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu),
            color: Colors.black87,
          onPressed: () {},
        ),
       
        actions: [
          IconButton(
          onPressed: () {},
          icon: const Icon(Icons.trolley),
          color: const Color.fromARGB(210, 226, 214, 214),)
        ],
      ),

  body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                // decoration: const BoxDecoration(
                //     color: Color.fromARGB(255, 236, 232, 232),
                //     borderRadius:
                //         BorderRadius.vertical(bottom: Radius.circular(30))),
                padding: const EdgeInsets.fromLTRB(30, 20, 20, 0),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Delicious\nfood for you',
                      style: TextStyle(color: Colors.black87,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                    ),
                    // search
                    // SizedBox(
                    //   height: 5,
                    // ),
                   
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Container(
                    //   padding: const EdgeInsets.all(5),
                    //   decoration: BoxDecoration(
                    //       color: const Color.fromRGBO(244, 243, 243, 1),
                    //       borderRadius: BorderRadius.circular(15)),
                    //   child: const TextField(
                    //     decoration: InputDecoration(
                    //         border: InputBorder.none,
                    //         prefixIcon: Icon(
                    //           Icons.search,
                    //           color: Colors.black87,
                    //         ),
                    //         hintText: "Search you're looking for",
                    //         hintStyle:
                    //             TextStyle(color: Colors.grey, fontSize: 15)),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 0, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(
                        bottom: 5
                      ),
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(
                          color: Color.fromRGBO(228, 74, 27, 1),
                          width: 3.0,
                        ))
                      ),
                      child: const Text(
                        'Foods',
                        style:
                            TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(228, 74, 27, 1)),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 220,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          promoCard('assets/makanan.png'),
                          promoCard('assets/makanan.png'),
                        ],
                        
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                
                Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(
                        bottom: 5
                      ),
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(
                          color: Color.fromRGBO(228, 74, 27, 1),
                          width: 3.0,
                        ))
                      ),
                      child: const Text(
                        'Drinks',
                        style:
                            TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(228, 74, 27, 1)),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 220,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          promoCard2('assets/minuman2.png'),
                          promoCard2('assets/minuman3.png'),
                        ],
                      ),
                      
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              
              //break

            //  SizedBox(
            //    height: 200,
            //    child: ListView(
            //      scrollDirection: Axis.horizontal,
            //      children: [
            //           Center(
            //             child: AspectRatio(
            //               aspectRatio:1.5 / 3,
            //             child: Container(
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(20),
            //             image: const DecorationImage(
            //             fit: BoxFit.cover,
            //                image: AssetImage('assets/makanan.png')),
            //                   gradient: LinearGradient(
            //                     begin: Alignment.bottomRight,
            //                       stops: const [
            //                         0.3,
            //                         0.9
            //                       ],
            //                       colors: [
            //                         Colors.black.withOpacity(.8),
            //                         Colors.black.withOpacity(.2)
            //                       ]),
            //                 ),
            //                 child: const Align(
            //                   alignment: Alignment.bottomLeft,
            //                   child: Padding(
            //                     padding: EdgeInsets.all(15.0),
            //                     child: Text(
            //                       'Veggie tomato mix',
            //                       style:
            //                           TextStyle(color: Colors.white, fontSize: 20),
            //                     ),
            //                   ),
            //                 ),
                                 
            //             ),
                        
                        
            //             ),
            //    )],
            //    ),
            //  ),

             

                ],
          ),
        ),
      ]),
    )
    )
    );
  }

  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: const EdgeInsets.only(right: 30.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover,
          image: AssetImage(image)),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight,
              stops: const [
                0.0,
                0.9
              ], 
              colors: [
                Colors.white.withOpacity(.8),
                Colors.white.withOpacity(.0)
              ]),
            //   boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(.6),
            //     blurRadius: 20.0,
            //     offset: const Offset(5, 5)
            //   )
            // ],
              
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Veggie tomato mix ',
                      style:
                          TextStyle(color: Colors.black,fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                    'Rp.16.900.000',
                    style:
                          TextStyle(color: Color.fromARGB(255, 211, 27, 27),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                          
                          )
                  ],
                ),
              ),
                        
              
        ),
      ),
    );
  }
Widget promoCard2(image) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: const EdgeInsets.only(right: 30.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover,
          image: AssetImage(image)),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight,
              stops: const [
                0.5,
                0.9
              ], 
              colors: [
                Colors.white.withOpacity(.8),
                Colors.white.withOpacity(.0)
              ]),
            //   boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(.6),
            //     blurRadius: 20.0,
            //     offset: const Offset(5, 5)
            //   )
            // ],
              
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Tea ',
                      style:
                          TextStyle(color: Colors.black,fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                    'Rp.8.000,00',
                    style:
                          TextStyle(color: Color.fromARGB(255, 211, 27, 27),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                          )
                  ],
                ),
              ),
                        
              
        ),
      ),
    );
  }
}



