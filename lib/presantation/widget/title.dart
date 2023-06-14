import 'package:flutter/cupertino.dart';

class title extends StatelessWidget {
  const title({Key? key, required this.titles}) : super(key: key);
  final String titles;
  @override
  Widget build(BuildContext context) {
    return Text(
      titles,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
    );
  }
}
