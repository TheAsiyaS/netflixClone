import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const styleWs = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 30,
);
const styleS = TextStyle(
  fontWeight: FontWeight.w900,
);
const subtextcolor = Colors.grey;

const siH20 = SizedBox(
  height: 20,
);
const siW20 = SizedBox(
  width: 20,
);
const palyIcon = Icon(Icons.play_circle_outline_sharp);
final volume_off = CircleAvatar(
    child: IconButton(onPressed: () {}, icon: const Icon(Icons.volume_off)));

const imgBaseUrl = 'https://image.tmdb.org/t/p/w500';
const chindrellaimg =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRUoD0q6JOF-2HK1B5ctTSTSZT6pYcaHY9og&usqp=CAU';
const netfliximage =
    'https://static.wikia.nocookie.net/control_z/images/1/1f/Netflix.png/revision/latest?cb=20200422135101';
