import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Page")),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 200,
                height: 200,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 1,
                        blurRadius: 50,
                        offset: Offset(0, 30), // changes position of shadow
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/image.jpeg"),

                )
                ),


              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30),
              child:  Text("Mahdi Bagheri",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),

            Padding(padding: EdgeInsets.only(top: 10),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email_outlined,color: Colors.black54,),
                  SizedBox(width: 10,),
                  Text("bagheri.almas@gmail.com"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
