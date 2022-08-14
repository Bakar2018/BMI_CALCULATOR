import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {

  final Function() onPressed;
  final String? title;

  const CustomeButton({Key? key, required this.onPressed, this.title}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {

    
   

    return  RawMaterialButton(onPressed: onPressed,

           
           child: Text(title ?? 'Calculate', style: TextStyle(color: Colors.white, fontSize: 28),),

           fillColor:Color(0xFFDCA05F),
           constraints: BoxConstraints.tightFor(
            width: double.infinity,
            height: 56,
           ),
           
           );
    
  }
}