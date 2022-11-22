import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MineCenterCountView extends StatefulWidget {
  const MineCenterCountView({super.key});

  @override
  MineCenterCountViewState createState() {
    return MineCenterCountViewState();
  }
}

class MineCenterCountViewState extends State<MineCenterCountView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 100,
      child: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Text(
                "发布",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Text(
                "200",
                style: TextStyle(fontSize: 20, color: Colors.black),
              )
            ],
          )),
          Expanded(
              child: Column(
            children: [
              Text(
                "关注",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Text(
                "200",
                style: TextStyle(fontSize: 20, color: Colors.black),
              )
            ],
          )),
          Expanded(
              child: Column(
            children: [
              Text(
                "获赞",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Text(
                "200",
                style: TextStyle(fontSize: 20, color: Colors.black),
              )
            ],
          )),
          Expanded(
              child: Column(
            children: [
              Text(
                "评论",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Text(
                "200",
                style: TextStyle(fontSize: 20, color: Colors.black),
              )
            ],
          )),
        ],
      ),
    );
  }
}
