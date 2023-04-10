// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Flutter Demo Home Page'),
        // ),
        body: Center(
          child: Stack(
            clipBehavior: Clip.none,
            // mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment(1.6, -1.1),
                child: CircleAvatar(
                  radius: 100.0,
                ),
              ),

              Center(
                child: Container(
                  height: 120.0,
                  width: 250.0,
                  color: Colors.red,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        // alignment: Alignment(1.0, -1.9),
                        top: -10,
                        left: 50,
                        child: CircleAvatar(
                          radius: 50.0,
                        ),
                      ),
                    ],
                  ),
                ),
              )
              // Padding(
              //     padding: const EdgeInsets.all(25.0),
              //     child: Text('Some TExt')),
              // Text('Some TExt'),
              // Container(
              //   height: 40.0,
              //   width: 120.0,
              //   color: Colors.red,
              // )

              // Container(
              //   height: 200.0,
              //   width: 250.0,
              //   color: Colors.green,

              // ),

              // Image(image: AssetImage('assets/images/fruit.png')),

              // Container(
              //   height: 60.0,
              //   width: 250.0,
              //   decoration: BoxDecoration(
              //     color: Colors.black,
              //     borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(30.0),
              //         bottomRight: Radius.circular(30.0)),
              //   ),
              //   child: Center(
              //       child: Text(
              //     'Go to',
              //     style: TextStyle(fontSize: 25.0, color: Colors.white),
              //   )),
              // )

              // Padding(
              //   padding: const EdgeInsets.only(left: 12.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         'Some Text',
              //         style: TextStyle(fontSize: 25.0),
              //       ),
              //       Icon(Icons.favorite)
              //     ],
              //   ),
              // )

              // Container(

              //   height: 270,
              //   width: 600,
              //  decoration: BoxDecoration(
              //   gradient: Gradient(colors: [

              //   ])
              //  ),
              //   child: Text(
              //     'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o',
              //     style: TextStyle(fontSize: 24.0),
              //     overflow: TextOverflow.fade,
              //     textAlign: TextAlign.justify,
              //   ),
              // )

              // Text(
              //   'You have ',
              //   style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              // ),
              // Text('0'),
              // Row(
              //   children: [
              //     Text('Some Text'),
              //     Text('0'),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp2 extends StatefulWidget {
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  String name = 'Shoaib';

  void checkIfWidgetMouted() {
    if (mounted) {}
  }

  void changeName(String userName) {
    log('BEFOR NAME IS:: $name');

    setState(() {
      name = userName;
    });

    log('AFTER CHANGING NAME:: $name');
  }

  @override
  void initState() {
    super.initState();
    log('INIT STATE');
    if (mounted) {
      log('WIDGET IS MOUTED');
    }
    //
  }

  @override
  void dispose() {
    super.dispose();
    log('DISPOSE CALLED');
  }

  @override
  Widget build(BuildContext context) {
    log('BUILD FUNCTION');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo Home Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 40.0),
              ),
              TextButton(
                  onPressed: () {
                    log('Pressed');
                    changeName('Tauseef');
                  },
                  child: Text('Change Name')),
            ],
          ),
        ),
      ),
    );
  }
}
