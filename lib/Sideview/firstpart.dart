import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Firstpart extends StatelessWidget {
  const Firstpart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hey Marvin",
                style: textfctn(20, Colors.black, FontWeight.bold),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Let's Make A Bid !",
                style: textfctn(18, Colors.grey.shade500),
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                right: 2,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                      color: Colors.redAccent, shape: BoxShape.circle),
                ),
              ),
              Icon(
                Icons.notifications,
                color: Colors.orange,
                size: 30,
              )
            ],
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
