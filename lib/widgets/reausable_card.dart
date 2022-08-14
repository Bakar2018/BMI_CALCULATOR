import 'package:flutter/material.dart';

class ReasubleCard extends StatelessWidget {
  final bool selected;
  final Function()? onPressed;

  final Widget? child;

  ReasubleCard({this.child, this.selected = false, this.onPressed});

 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: child,
    
       decoration: BoxDecoration(
         color: selected == true ? Color(0xFF3F5B91): Color(0xFF212D49),
         borderRadius: BorderRadius.circular(10)
       ),
       margin: EdgeInsets.all(10),
        
      ),
    );
  }
}
