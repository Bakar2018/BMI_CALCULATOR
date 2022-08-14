import 'package:flutter/material.dart';

class iconContent extends StatelessWidget {
  
  final IconData icon;
  final String title;
  const iconContent({
    
   
  required this.icon, required this.title});


  @override
  Widget build(BuildContext context) {
    return Column(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Icon(icon, size: 80, ),
       Text(title,style: TextStyle(fontSize: 20)) 

      

      ],
    );
  }
}

