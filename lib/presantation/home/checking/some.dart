import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/failers/mainFailure.dart';
import 'package:netflix_clone/domain/downloads/model/mdlDownloads.dart';
import 'package:netflix_clone/presantation/home/checking/class.dart';

class some extends StatelessWidget {
  const some({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('some'),
      ),
      body: SafeArea(
          child: FutureBuilder<Either<mainFailure, List<DownloadsModl>>>(
              future: ClassName().dataChecking(),
              builder: (context, AsyncSnapshot<Either<mainFailure, List<DownloadsModl>>> snapshot) {
                if (snapshot.data==List<DownloadsModl>) {
                  log('${snapshot.data!}');
                }
              //log('${snapshot.data![1].Title}');
                return Column(
                  children: [
                    const Text('Touch to see image'),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.abc))
                  ], 
                );
              })), 
    ); 
  }
}
