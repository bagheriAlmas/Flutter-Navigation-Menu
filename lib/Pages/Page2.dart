import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notification Page")),
      body: Center(
          child: ElevatedButton(
            child: Text("Click"),
            onPressed: (){
              var snackBar = SnackBar(content: Text('This is Notification Page'));

              ScaffoldMessenger.of(context).showSnackBar(snackBar);

            },
          )
      ),
    );
  }
}
