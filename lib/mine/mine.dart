import 'package:flutter/material.dart';
import 'package:xiaote_flutter/mine/MinCenterCountView.dart';
import 'package:xiaote_flutter/mine/MineBottomItem.dart';

class MineFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MineState();
  }
}

class _MineState extends State<MineFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(top: 38.0, left: 20, right: 20, bottom: 10),
      color: Colors.grey.shade200,
      child: ListView(
        children: [
          Row(
            children: [
              Container(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      border: Border.all(color: Colors.red, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(150)),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F2cc32978fc60c45b2c17679027ab6a7795d4ba824d53f-CZvSuE_fw658&refer=http%3A%2F%2Fhbimg.b0.upaiyun.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671602619&t=a2eab7d20ea5cde26dd848791fb9ead1'),
                          fit: BoxFit.cover)),
                ),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Text(
                      "gaggagagagagaggagagagagaggagagaga",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                      maxLines: 2,
                    ),
                    Text(
                      "gaggagagaga",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          overflow: TextOverflow.ellipsis),
                      maxLines: 2,
                    ),
                  ],
                ),
              )),
            ],
          ),
          MineCenterCountView(),
          MineBottomItemState("gagaga", Icons.mobile_friendly,onTap: (){

          },),
          MineBottomItemState("gagaga", Icons.mobile_friendly),
          MineBottomItemState("gagaga", Icons.mobile_friendly),
          MineBottomItemState("gagaga", Icons.mobile_friendly),
          MineBottomItemState("gagaga", Icons.mobile_friendly),
          MineBottomItemState("gagaga", Icons.mobile_friendly),
          MineBottomItemState("gagaga", Icons.mobile_friendly),
          MineBottomItemState("gagaga", Icons.mobile_friendly),
          MineBottomItemState("gagaga", Icons.mobile_friendly),
          MineBottomItemState("gagaga", Icons.mobile_friendly),
          MineBottomItemState("gagaga", Icons.mobile_friendly),
        ],
      ),
    );
  }
}
