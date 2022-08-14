import 'package:bmi_calculator/widgets/reausable_card.dart';
import 'package:flutter/material.dart';

import '../widgets/custome_button.dart';

class Result extends StatelessWidget {
  final double result;
  final String comment;
  const Result({required this.result, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 12),
             child: Text(
               'Your result',
               
               style: TextStyle(fontSize: 24, ),
             ),
           ),
           Expanded(child: ReasubleCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text('Result ${result.toStringAsFixed(1)}')),
                    Center(child: Text('you are $comment' )),
                  ],
                ),


           ),) ,

            CustomeButton(onPressed: (){
              Navigator.pop(context);
            }, title: 'Recalculate',), 
        ],
      )
    );
  }
}
