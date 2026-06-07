import 'package:flutter/material.dart';

class StatefulWidgetScreen extends StatefulWidget {
  const StatefulWidgetScreen({super.key});

  @override
  State<StatefulWidgetScreen> createState() => _StatefulWidgetScreenState();
}

class _StatefulWidgetScreenState extends State<StatefulWidgetScreen> {
  int count = 0 ;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white70,
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text("Provider Management"),
          ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(DateTime.now().toString()),
        Container(
          child: Center(
            child: Text(count.toString() ,
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.black
            ),),
          ),
        )
      ],
    ),  
          floatingActionButton: FloatingActionButton(
            onPressed: (){

            setState(() {

              count++;
            });
              },
            child:const Icon(
              Icons.add ,
              size: 40,
              color: Colors.yellowAccent,
             // blendMode: BlendMode.lighten,
            ),
            backgroundColor: Colors.indigo,
          ),
    ),
    );
  }
}
