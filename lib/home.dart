import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(25, 20, 25, 8),
            child: Column(
              children: [
                _profile(),
                SizedBox(
                  height: 20,
                ),
                _resumeYoga(),
                SizedBox(
                  height: 25,
                ),
                _search(),
                SizedBox(
                  height: 25,
                ),
                _popularYoga()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _resumeYoga() {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFFFDF1E3), borderRadius: BorderRadius.circular(20)),
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20, 28, 20, 28),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Weekly Routine",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "120",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Text("min"),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'left of last week',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7.0)),
                child: Text("Resume Yoga"),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _search() {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search Yoga",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }

  Widget _popularYoga() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Yoga",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
              Text(
                "See all",
                style: TextStyle(color: Colors.orange),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 25, 15, 25),
            decoration: BoxDecoration(
                color: Color(0xFFFDF1E3),
                borderRadius: BorderRadius.circular(20)),
            width: Get.width * 0.75,
            height: Get.height / 2,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Functional\nexertion",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 15, 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.play_arrow),
                          Text(
                            "Play 45 min",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _profile() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Sitharaj",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Text(
                "Welcome back!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              )
            ],
          ),
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: Color(0xFFFDF1E3),
                child: Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
