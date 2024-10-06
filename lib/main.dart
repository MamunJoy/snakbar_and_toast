import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnakBar & ToastBar"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){

          Fluttertoast.showToast(
              msg: "This is Center Short Toast",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );

      // Fluttertoast.showToast(msg: "This is ToastBar",
      //   gravity: ToastGravity.BOTTOM,
      //   toastLength: Toast.LENGTH_SHORT,
      //   fontSize: 10,
      //   textColor: Colors.grey
      // );



    // final snackBar = SnackBar(
    // content: const Text('Yay! A SnackBar!'),
    // action: SnackBarAction(
    // label: 'Undo',
    // onPressed: () async {
    //
    // },
    // ),
    // );
    //
    //
    // Future.delayed(Duration(seconds: 1));
    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
    },
            child: Text("Click Me")

        ),
      ),
    );
  }
}

