import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statement/provider/example_one_provider.dart';

class ExampleOneScreen extends StatefulWidget {
  const ExampleOneScreen({super.key});

  @override
  State<ExampleOneScreen> createState() => _ExampleOneScreen();
}

class _ExampleOneScreen extends State<ExampleOneScreen> {
  double value = 1.0;
  @override
  Widget build(BuildContext context) {
  //  final provider = Provider.of<ExampleOneProvider>(context , listen: false);
    return  Scaffold(
      appBar: AppBar(
        title: Text("Example One" ,
          style: TextStyle(
          fontSize: 30,
            fontWeight: FontWeight.bold
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(builder: (context , value , child){
            return Slider(
                min: 0,
                max: 1,
                value:value.value ,
                onChanged: (val){
                  value.setValue(val);

                }
            );
          }
          ),

            Consumer<ExampleOneProvider>(builder: (context, value, child) {
             return Row(
                  children: [
                    Expanded(
    child: Container(
    color: Colors.green.withValues(
    alpha: value.value,
    ),
    ),
    ),
    Expanded(
    child: Container(
    color: Colors.red.withValues(
    alpha: value.value,
    ),
    ),
    ),
    ],
    );
    },
    )
        ],
      ),
    );
  }
}
