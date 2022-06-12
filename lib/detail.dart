import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          decoration: BoxDecoration(color: Colors.orange),
                          height: Get.width / 1.4,
                          child: Stack(
                            children: [],
                          )),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Functional exertion",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("3 Functional Yoga")
                          ],
                        ),
                      ),
                      _yogaLevel(),
                      Container(
                        padding: EdgeInsets.fromLTRB(25, 20, 25, 20),
                        margin: EdgeInsets.fromLTRB(80, 25, 80, 25),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(60)),
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            "Start Sessions",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              _header()
            ],
          ),
        ),
      ),
    );
  }

  Widget _yogaLevel() {
    return Container(
      child: Column(
        children: [
          _yogaLevelItem("Beginner  Pose", "20 min exercise"),
          _yogaLevelItem("Intermediate Pose", "40 min exercise"),
          _yogaLevelItem("Advance Pose", "120 min exercise"),
        ],
      ),
    );
  }

  Widget _yogaLevelItem(String title, String desc) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              SizedBox(
                width: 13,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    desc,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.deepOrangeAccent,
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Widget _header() {
    return Container(
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
