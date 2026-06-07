import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  
   int x =0 ;
  @override
  Widget build(BuildContext context) {
    print("build");
    return SafeArea(
        child:  Scaffold(
          appBar: AppBar(
            title: Text("Provider State Management"),
            backgroundColor: Colors.teal,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Text(x.toString() ,style: TextStyle(fontSize: 30),),
                ),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: (){
                // x++;
                print(x++);
          },
          child: Icon(Icons.add),
          ),
        ),
    );
  }
}
