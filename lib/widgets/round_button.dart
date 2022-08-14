import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RoundedButton extends StatelessWidget {
  
  final IconData iconData;
  final Function()? onPressed;

  RoundedButton({required this.iconData, this.onPressed});




  @override
  Widget build(BuildContext context) {

    return RawMaterialButton(onPressed: onPressed,
    // ignore: sort_child_properties_last
    child: Icon(iconData, size: 40),
    fillColor: Colors.grey,
    shape: CircleBorder(),
    constraints: BoxConstraints.tightFor(
      width: 56,
      height: 56,
    ),
    
    );
    
  }
}