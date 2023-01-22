import 'package:day25/ModelFile/modeclasstwo.dart';
import 'package:day25/ModelFile/modelclass.dart';
import 'package:day25/Sideview/firstpart.dart';
import 'package:day25/Sideview/fourtpart.dart';
import 'package:day25/Sideview/parttwo.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'Sideview/thiredpart.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var modelclassobject = Modeclass.getdata();

  var Modelclassobject2 = Modelclasstwo.getdatafromlist();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            backgroundColor: Colors.black38,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                  backgroundColor: Colors.black38),
              BottomNavigationBarItem(
                  icon: Icon(Icons.handyman_outlined),
                  label: "Auctions",
                  backgroundColor: Colors.black38),
              BottomNavigationBarItem(
                  icon: Icon(Icons.heart_broken_rounded),
                  label: "Saved",
                  backgroundColor: Colors.black38),
              BottomNavigationBarItem(
                  icon: Icon(Icons.circle_outlined),
                  label: "My Bids",
                  backgroundColor: Colors.black38),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "My profile",
                  backgroundColor: Colors.black38),
            ]),
        body: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            //First part
            Firstpart(),
            //2nd part
            Parttwo(),
            //3rd part Categories See All
            ThirePart("Categories", "See All"),
            //4th part
            Container(
              height: MediaQuery.of(context).size.height * 0.250,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: modelclassobject.length,
                  itemBuilder: ((context, index) {
                    return Fourpart(modelclassobject[index].photo,
                        modelclassobject[index].name);
                  })),
            ),
            //Five part
            ThirePart("Trending Auctions", "See All"),

            //  part6
            GridView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: Modelclassobject2.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 2, crossAxisSpacing: 2, crossAxisCount: 2),
                itemBuilder: ((context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                    height: MediaQuery.of(context).size.height * 0.300,
                    width: MediaQuery.of(context).size.width * 0.300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Container(
                              width: double.infinity,
                              color: Colors.amber.shade700,
                              child: Stack(
                                children: [
                                  Positioned(
                                      right: 0,
                                      child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              if (Modelclassobject2[index]
                                                      .isclick ==
                                                  false) {
                                                Modelclassobject2[index]
                                                    .isclick = true;
                                              } else {
                                                Modelclassobject2[index]
                                                    .isclick = false;
                                              }
                                            });
                                          },
                                          icon: Icon(
                                            Icons.heart_broken_sharp,
                                            size: 30,
                                            color: Modelclassobject2[index]
                                                        .isclick ==
                                                    true
                                                ? Colors.red
                                                : Colors.white,
                                          ))),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Image.network(
                                      Modelclassobject2[index].photo,
                                      fit: BoxFit.cover,
                                      height: 100,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Container(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${Modelclassobject2[index].name}",
                                  style: textfctn(
                                      17, Colors.black, FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Current Bid",
                                          style: textfctn(
                                              16, Colors.grey, FontWeight.bold),
                                        ),
                                        Text(
                                          "\$ ${Modelclassobject2[index].price}",
                                          style: textfctn(14, Colors.orange,
                                              FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Container(
                                      height: 58,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: Text(
                                          "Buy Now",
                                          style: textfctn(16, Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )))
                      ],
                    ),
                  );
                })),
          ],
        ),
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
