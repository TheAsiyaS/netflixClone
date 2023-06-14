import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/Constant.dart';
import 'package:netflix_clone/presantation/newAndHot/commingSoon.dart';
import 'package:netflix_clone/presantation/newAndHot/everyonewatch.dart';


class newAndHot extends StatelessWidget {
  newAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'New & Hot',
              style: styleWs,
            ),
            backgroundColor: Colors.black,
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.cast_outlined)),
              Padding(
                padding: const EdgeInsets.only(top: 13, bottom: 13),
                child: Container(
                  height: 10,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.blueGrey,
                  ),
                ),
              ), 
            ],
            bottom: TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                tabs: const [
                  Tab(
                    text: '🍿Comming Soon',
                  ),
                  Tab(
                    text: '👀Everyone\'s Watching',
                  )
                ]),
          ),
          body: const TabBarView(children: [commingSoon(), everyonewatch()])),
    );
  }
}
