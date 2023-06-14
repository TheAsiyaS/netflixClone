import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/fastLaugh/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflix_clone/core/color/colors.dart';
import 'package:netflix_clone/presantation/fastLaugh/widget/videoListItem.dart';


class fastLaugh extends StatelessWidget {
  const fastLaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context)
          .add(const FastLaughEvent.firstinitial());
    });
    return Scaffold(
      body: SafeArea(
          child: Center(child: BlocBuilder<FastLaughBloc, FastLaughState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
                child: CircularProgressIndicator(
              strokeWidth: 2,
              backgroundColor: greyColor,
              color: whitecolor,
            ));
          } else if (state.iserror) {
            return const Center(child: Text('ERROR!!...'));
          } else if (state.list.isEmpty) {
            return const Center(
                child: Column(
              children: [
                Text('List is empty wait....'),
                CircularProgressIndicator(
                  strokeWidth: 2,
                  backgroundColor: greyColor,
                  color: whitecolor,
                ),
              ],
            ));
          } else {
            return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(
                    state.list.length,
                    (index) => videolistItemInhertedwidget(
                        widget: videoListItem(
                            key: Key(index.toString()), itemIndex: index),
                        movieData: state.list[index])));
          }
        },
      ))),
    );
  }
}
