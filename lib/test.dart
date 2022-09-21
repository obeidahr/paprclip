import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Test extends StatelessWidget {
const Test({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Linear Percent Indicators"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new LinearPercentIndicator(
                width: 170.0,
                animation: true,
                animationDuration: 1000,
                lineHeight: 40.0,
                // leading: new Text("left content"),
                // trailing: new Text("right content"),
                percent: 0.5,
                //center: Text("30.0%"),
                linearStrokeCap: LinearStrokeCap.butt,
                progressColor: Colors.blue,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}