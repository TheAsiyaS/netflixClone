import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/Downlods/downlodsbloc_bloc.dart';
import 'package:netflix_clone/core/Constant.dart';
import 'package:netflix_clone/core/color/colors.dart';
import 'package:netflix_clone/presantation/widget/appBarWidget.dart';

class downloads extends StatelessWidget {
  const downloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    BlocProvider.of<DownlodsblocBloc>(context)
        .add(const downloadEvent.getDownloadImage());
    // });
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: appBarWidget(title: 'Downloads')),
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                const SizedBox(
                  height: 45,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
                const Text('Start Downloads',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Indroducing Downloads for You',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text(
                '''
            We'll download a personalised selection of
                  movies and shows for you,so there's
                      something to watch on your 
                                              device.''',
                style: TextStyle(color: subtextcolor, fontSize: 15),
              ),
            ),
            BlocBuilder<DownlodsblocBloc, downloadState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return SizedBox(
                    width: size.width,
                    height: size.width,
                    child: const Center(
                        child: CircularProgressIndicator(
                      color: Colors.white,
                      backgroundColor: Colors.grey,
                      strokeWidth: 2,
                    )),
                  );
                } else if (state.downlodsImgList.isEmpty) {
                  return SizedBox(
                    width: size.width,
                    height: size.width,
                    child: const Center(
                        child: CircularProgressIndicator(
                      color: Colors.white,
                      backgroundColor: Colors.grey,
                      strokeWidth: 2,
                    )),
                  );
                } else {
                  return Column(
                    children: [
                      SizedBox(
                        width: size.width,
                        height: size.width,
                        // color: Colors.amber,
                        child: state.isLoading
                            ? const Center(
                                child: CircularProgressIndicator(
                                backgroundColor: greyColor,
                              ))
                            : Stack(
                                alignment: Alignment.center,
                                children: [
                                  const Center(
                                    child: CircleAvatar(
                                      radius: 155,
                                      backgroundColor:
                                          Color.fromARGB(255, 131, 131, 131),
                                    ),
                                  ),
                                  dowloadImageWidget(
                                    imageurl:
                                        '$imgBaseUrl${state.downlodsImgList[0].posterPath}',
                                    size: Size(
                                        size.width * 0.5, size.width * 0.5),
                                    margine: const EdgeInsets.only(
                                        left: 170, bottom: 10),
                                    angle: 20,
                                  ),
                                  dowloadImageWidget(
                                    imageurl:
                                        '$imgBaseUrl${state.downlodsImgList[1].posterPath}',
                                    size: Size(
                                        size.width * 0.5, size.width * 0.5),
                                    margine: const EdgeInsets.only(
                                        right: 170, bottom: 14),
                                    angle: -20,
                                  ),
                                  dowloadImageWidget(
                                      imageurl:
                                          '$imgBaseUrl${state.downlodsImgList[2].posterPath}',
                                      size: Size(
                                          size.width * 0.45, size.width * 0.6),
                                      margine: const EdgeInsets.only(top: 20))
                                ],
                              ),
                      ),
                    ],
                  );
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
                color: const Color.fromARGB(255, 20, 97, 160),
                child: const Text('Set Up'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
              child: MaterialButton(
                onPressed: () {},
                color: Colors.white,
                child: const Text(
                  'See What you can Download',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class dowloadImageWidget extends StatelessWidget {
  const dowloadImageWidget(
      {Key? key,
      required this.imageurl,
      required this.size,
      this.angle = 0,
      required this.margine})
      : super(key: key);
  final String imageurl;
  final Size size;
  final double angle;
  final EdgeInsets margine;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margine,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: NetworkImage(imageurl), fit: BoxFit.cover)),
      ),
    );
  }
}