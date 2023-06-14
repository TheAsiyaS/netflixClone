
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/color/colors.dart';
import 'package:video_player/video_player.dart';


class videoPlayerScreen extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isplaying) onstatechanged;
  const videoPlayerScreen(
      {Key? key, required this.videoUrl, required this.onstatechanged})
      : super(key: key);

  @override
  State<videoPlayerScreen> createState() => _videoPlayerScreenState();
}

class _videoPlayerScreenState extends State<videoPlayerScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.network(widget.videoUrl);
    _controller.initialize().then((value) {
      setState(() {
        _controller.play();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller))
          : const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                backgroundColor: greyColor,
                color: whitecolor,
              ),
            ),
    );
  }
}
