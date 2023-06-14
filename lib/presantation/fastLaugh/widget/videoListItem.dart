

import 'package:flutter/material.dart';
import 'package:netflix_clone/application/fastLaugh/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflix_clone/core/Constant.dart';
import 'package:netflix_clone/domain/downloads/model/mdlDownloads.dart';
import 'package:netflix_clone/presantation/fastLaugh/videoPlayScreen.dart';
import 'package:share_plus/share_plus.dart';


class videolistItemInhertedwidget extends InheritedWidget {
  final Widget widget;
  final DownloadsModl movieData;

  const videolistItemInhertedwidget(
      {super.key, required this.widget, required this.movieData})
      : super(child: widget);

  @override
  bool updateShouldNotify(covariant videolistItemInhertedwidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static videolistItemInhertedwidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<videolistItemInhertedwidget>();
  }
}

class videoListItem extends StatelessWidget {
  const videoListItem({
    Key? key,
    required this.itemIndex,
  }) : super(key: key);
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    final posterpath =
        videolistItemInhertedwidget.of(context)?.movieData.posterPath;
    return Stack(
      children: [
        videoPlayerScreen(
            videoUrl: videoUrls[itemIndex % videoUrls.length],
            onstatechanged: (bool) {}),
        Positioned(
          left: 5,
          right: 0,
          bottom: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [volume_off],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Align(
            alignment: Alignment.topRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('$imgBaseUrl$posterpath'),
                ),
                siH20,
                const stckItem(
                  icon: Icon(Icons.add),
                  subtitile: 'My List',
                ),
                siH20,
                ValueListenableBuilder(
                    valueListenable: videoIdNotifier,
                    builder:
                        (BuildContext context, Set<int> value, Widget? child) {
                      final index = itemIndex;
                      if (value.contains(index)) {
                        return GestureDetector(
                          onTap: () {
                            videoIdNotifier.value.remove(index);
                            videoIdNotifier.notifyListeners();
                          },
                          child: const stckItem(
                            icon: Icon(Icons.favorite),
                            subtitile: 'Liked',
                          ),
                        );
                      }
                      return GestureDetector(
                        onTap: () {
                          videoIdNotifier.value.add(index);
                          videoIdNotifier.notifyListeners();
                        },
                        child: const stckItem(
                          icon: Icon(Icons.favorite_outline_outlined),
                          subtitile: 'Like',
                        ),
                      );
                    }),
                const stckItem(
                  icon: Icon(Icons.send_outlined),
                  subtitile: 'Share',
                ),
                siH20,
                const stckItem(
                  icon: Icon(
                    Icons.play_arrow,
                    size: 40,
                  ),
                  subtitile: 'Play',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class stckItem extends StatelessWidget {
  const stckItem(
      {Key? key, required this.icon, required this.subtitile, this.size})
      : super(key: key);
  final Icon icon;
  final String subtitile;
  final Size? size;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () async {
              if (subtitile == 'Share') {
           
                final movieName =
                    videolistItemInhertedwidget.of(context)?.movieData.Title;
                if (movieName == null) {
                  return;
                } else {
                  await Share.share(movieName);
                  
                }
              }
            },
            icon: icon),
        Text(subtitile)
      ],
    );
  }
}
