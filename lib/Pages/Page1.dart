import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['Home', 'Work', 'Park','Drive','Bike'];
    final List<String> date = <String>['2020', '2021', '2021','2022','2022'];
    final List<Color> colorCodes = <Color>[Colors.greenAccent,Colors.lightBlueAccent,Colors.orangeAccent,Colors.pinkAccent,Colors.amberAccent,];
    final List<IconData> icons = <IconData>[Icons.home,Icons.work,Icons.park,Icons.directions_car_sharp,Icons.directions_bike];



    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body:
      ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Container(
                height: 70,
                color: colorCodes[index],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(icons[index]),
                            SizedBox(width: 10,),
                            Text('Entry ${entries[index]}'),
                            
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(date[index]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
      )
    );
  }
}
