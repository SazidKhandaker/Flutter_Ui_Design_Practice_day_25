import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ThirePart extends StatelessWidget {
  String type1;
  String type2;
  ThirePart(this.type1, this.type2);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$type1",
            style: textfctn(22, Colors.black, FontWeight.bold),
          ),
          Text(
            "$type2",
            style: textfctn(18, Colors.yellow.shade700),
          )
        ],
      ),
    );
  }

  textfctn(double size, Color clr, [FontWeight? fw]) {
    return TextStyle(
      fontSize: size,
      color: clr,
      fontWeight: fw,
    );
  }
}
