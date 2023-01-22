import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Parttwo extends StatelessWidget {
  const Parttwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
        width: MediaQuery.of(context).size.width * 0.80,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Search Your item",
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                prefixIcon: Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.grey,
                )),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(right: 15),
        height: MediaQuery.of(context).size.height * 0.085,
        width: MediaQuery.of(context).size.width * 0.12,
        decoration: BoxDecoration(
            color: Colors.black45, borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: IconButton(
          onPressed: () {},
          icon: Icon(
            size: 30,
            Icons.swap_horiz_sharp,
            color: Colors.black,
          ),
        )),
      )
    ]));
  }
}
