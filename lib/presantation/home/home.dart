import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/home/home_bloc.dart';
import 'package:netflix_clone/core/Constant.dart';
import 'package:netflix_clone/presantation/fastLaugh/widget/videoListItem.dart';
import 'package:netflix_clone/presantation/home/checking/some.dart';
import 'package:netflix_clone/presantation/widget/Cards.dart';
import 'package:netflix_clone/presantation/widget/title.dart';

final ValueNotifier<bool> _direction = ValueNotifier(true);

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.gethomeData());
    });
    return Scaffold(
        body: SafeArea(
            child: ValueListenableBuilder(
      valueListenable: _direction,
      builder: (BuildContext ctx, bol, Widget? _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: ((notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.forward) {
              _direction.value = true;
            } else if (direction == ScrollDirection.reverse) {
              _direction.value = false;
            }
            return true;
          }),
          child: Stack(
            children: [
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                        child: CircularProgressIndicator(
                      color: Colors.white,
                      backgroundColor: Colors.grey,
                      strokeWidth: 2,
                    ));
                  } else if (state.iserror) {
                    return const Column(children: [
                      Center(
                          child: Row(
                        children: [
                          CircularProgressIndicator(
                            color: Colors.white,
                            backgroundColor: Colors.grey,
                            strokeWidth: 2,
                          ),
                          Text('ERROR!!..'),
                        ],
                      ))
                    ]);
                  } else if (state.pastyearlist.isEmpty) {
                    return const Center(
                        child: CircularProgressIndicator(
                      color: Colors.white,
                      backgroundColor: Colors.grey,
                      strokeWidth: 2,
                    ));
                  }
                  final releasepastyaer = state.pastyearlist
                      .map((e) => '$imgBaseUrl${e.posterPath}')
                      .toList();
                  final trending = state.trendinglist
                      .map((e) => '$imgBaseUrl${e.posterPath}')
                      .toList();
                  final tense = state.tenseDramalist
                      .map((e) => '$imgBaseUrl${e.posterPath}')
                      .toList();
                  final southIndian = state.southIndianDramalist
                      .map((e) => '$imgBaseUrl${e.posterPath}')
                      .toList();
                  releasepastyaer.shuffle();
                  trending.shuffle();
                  tense.shuffle();
                  southIndian.shuffle();
                  final top10Tv = state.trendingTvlist
                      .map((tv) => '$imgBaseUrl${tv.posterPath}')
                      .toList();
                  top10Tv.shuffle();
                  return ListView(
                    children: [
                      const topimage(),
                      siH20,
                      const title(titles: 'Realease in the Past Year'),
                      siH20,
                      MainCardsEdition(
                        imageUrllist: releasepastyaer.sublist(0, 10),
                      ),
                      siH20,
                      const title(titles: 'Trending Now'),
                      siH20,
                      MainCardsEdition(
                        imageUrllist: trending.sublist(0, 10),
                      ),
                      siH20,
                      const title(titles: 'Top 10 TV Shows in India Today'),
                      siH20,
                      mainCardEdit(top10Url: top10Tv.sublist(0, 10)),
                      siH20,
                      const title(titles: 'Tense Dramas'),
                      siH20,
                      MainCardsEdition(
                        imageUrllist: tense.sublist(0, 10),
                      ),
                      siH20,
                      const title(titles: 'South Indian Cinema'),
                      siH20,
                      MainCardsEdition(
                        imageUrllist: southIndian.sublist(0, 10),
                      ),
                      siH20,
                    ],
                  );
                },
              ),
              _direction.value == true
                  ? AnimatedContainer(
                      duration: const Duration(microseconds: 500),
                      width: double.infinity,
                      height: 80,
                      color: Colors.black87,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network(
                                netfliximage,
                                width: 50,
                                height: 50,
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.cast_outlined)),
                              Container(
                                height: 30,
                                width: 30,
                                color: Colors.blueGrey,
                              ),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                //SizedBox(width: 20,) ,
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const some()));
                                    },
                                    child: const Text(
                                      'TV Shows',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Movies',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )),
                                DropdownButton<String>(
                                    hint: const Text(
                                      'Categories',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    items: const [
                                      DropdownMenuItem(
                                          child: Text('categories'))
                                    ],
                                    onChanged: (newindex) {})
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  : siH20
            ],
          ),
        );
      },
    )));
  }
}

class topimage extends StatelessWidget {
  const topimage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: 520,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4OcZxiaNjPA4glUQ39u58PgwRUTUn_ZnQhQ&usqp=CAU'),
          fit: BoxFit.cover,
        )),
      ),
      Positioned(
          left: 50,
          bottom: 0,
          child: Row(children: [
            const stckItem(icon: Icon(Icons.add), subtitile: 'My List'),
            const SizedBox(
              width: 50,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.play_arrow),
              label: const Text('Play'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                minimumSize: const Size(50, 35),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            const stckItem(icon: Icon(Icons.info_outline), subtitile: 'Info')
          ])),
    ]);
  }
}

/*
 */
