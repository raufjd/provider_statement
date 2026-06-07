import 'dart:async';

import 'package:flutter/material.dart';

class WhyProvider extends StatefulWidget {
  const WhyProvider({super.key});

  @override
  State<WhyProvider> createState() => _WhyProviderState();
}

class _WhyProviderState extends State<WhyProvider> {
  int count = 0 ;
  void initState(){
    super.initState();

    Timer.periodic(
        Duration(seconds: 1),(timer){
          count++;
          setState(() {
          });

    });
  }
  @override
  Widget build(BuildContext context) {
    print('build' + count.toString());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Why Provider"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                        DateTime.now().hour.toString() + ":" +
                        DateTime.now().minute.toString() + ":" +
                        DateTime.now().second.toString(),
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
              Center(
                child: Text(count.toString() ,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.black
                  ),),
              ),
            ],
          ),
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
