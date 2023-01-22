import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Fourpart extends StatelessWidget {
  String photo;
  String name;
  Fourpart(this.photo, this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: MediaQuery.of(context).size.height * 0.220,
      width: MediaQuery.of(context).size.width * 0.350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.amber.shade100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            photo,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "$name",
            style: textfctn(20, Colors.black45, FontWeight.bold),
          ),
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
