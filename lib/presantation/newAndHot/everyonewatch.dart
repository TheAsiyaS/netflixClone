import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/core/Constant.dart';
import 'package:netflix_clone/presantation/fastLaugh/widget/videoListItem.dart';
import '../../application/hotAndNew/hot_and_new_bloc.dart';
import '../../core/color/colors.dart';

class everyonewatch extends StatelessWidget {
  const everyonewatch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {  
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const HotAndNewEvent.everyonewatching());
    });
    return RefreshIndicator(
      onRefresh: () async{
          return BlocProvider.of<HotAndNewBloc>(context)
          .add(const HotAndNewEvent.everyonewatching());
      },
      color: const Color.fromARGB(255, 209, 200, 200),   
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.white,
              backgroundColor: Colors.grey,
              strokeWidth: 2,
            ));
          } else if (state.iserror) {
            return const Column(
              children: [
                Center(
                    child: Row(
                  children:  [
                    CircularProgressIndicator(
                      color: Colors.white,
                      backgroundColor: Colors.grey,
                      strokeWidth: 2,
                    ),
                    Text('ERROR!!..'),
                  ],
                )),
              ],
            );
          } else if (state.comingsoonlist.isEmpty) {
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Center(child: Text('Empty List..\n')),
                Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    backgroundColor: Colors.grey,
                    strokeWidth: 2,
                  ),
                ),
              ],
            );
          } else if (state.comingsoonlist.isNotEmpty) {
            return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final tv = state.everyOneisWatchlist[index];
            
                  return everyonewatchbody(
                      posterPath: '$imgBaseUrl${tv.posterPath}',
                      movieName: tv.originalName ?? "No Name",
                      description: tv.overview ?? "Unable to find discription");
                },
                separatorBuilder: (context, index) {
                  return const SizedBox();
                },
                itemCount: state.everyOneisWatchlist.length);
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}

class everyonewatchbody extends StatelessWidget {
  final String posterPath;
  final String movieName;
  final String description;
  const everyonewatchbody({
    Key? key,
    required this.posterPath,
    required this.movieName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 440,
            //color: Colors.pink,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movieName,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  description,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,   
                  style: const TextStyle(color: greyColor),
                ),
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Container(
                      width: double.infinity,
                      height: 220,
                      decoration: BoxDecoration(
                        image: DecorationImage(   
                            image: NetworkImage(posterPath), fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Positioned(left: 330, top: 170, child: volume_off)
                ]),
              const  Row(
                  children:  [
                    Spacer(),
                    stckItem(
                      icon: Icon(Icons.send),
                      subtitile: 'Share',
                    ),
                    stckItem(
                      icon: Icon(Icons.add),
                      subtitile: 'Add',
                    ),
                    stckItem(
                      icon: Icon(
                        Icons.play_arrow,
                        size: 40,
                      ),
                      subtitile: 'Play',
                    ),
                    siW20
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
