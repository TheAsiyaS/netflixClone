//COOMON FEATURED FILES ARE SEEN HERE
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/Constant.dart';


class appBarWidget extends StatelessWidget {
  const appBarWidget({Key? key, required this.title}) : super(key: key);
  final title;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Text('$title', style: styleWs),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.cast_outlined)),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}
