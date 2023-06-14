import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix_clone/application/hotAndNew/hot_and_new_bloc.dart';
import 'package:netflix_clone/core/color/colors.dart';

import '../../core/Constant.dart';

class commingSoon extends StatelessWidget {
  const commingSoon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const HotAndNewEvent.commingsoon());
    });
    Size size = MediaQuery.of(context).size;
    return RefreshIndicator(
      onRefresh: () async{   
        return BlocProvider.of<HotAndNewBloc>(context)
          .add(const HotAndNewEvent.commingsoon());
          
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
            return Column(
              children: [
                Center(
                    child: Row(
                  children: const [
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
          } else if (state.everyOneisWatchlist.isEmpty) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
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
          } else if (state.everyOneisWatchlist.isNotEmpty) {
            return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final movie = state.comingsoonlist[index];
                  // print(movie.firstAirDate);
                  final date = DateTime.parse(movie.firstAirDate!);
                  final formateddate = DateFormat.yMMMd('en_US').format(date);
                //  print(formateddate);
                  return Column(
                    children: [
                      siH20,
                      commingSoonBody(
                        size: size,  
                        day: movie.firstAirDate!.split('-')[1],    
                        id: movie.id.toString(),
                        description:
                            movie.overview ?? 'Unable find description!!...',
                        month: formateddate .split(' ').first.toUpperCase(), 
                            // formateddate.split(' ').first.substring(0,3)
                        movieName: movie.originalTitle ?? "No Name",
                        posterPath: '$imgBaseUrl${movie.posterPath}',
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 30,
                  );
                },
                itemCount: state.comingsoonlist.length);
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}

class commingSoonBody extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String movieName;
  final String description;
  const commingSoonBody({
    Key? key,
    required this.size,
    required this.id,
    required this.month,
    required this.day,
    required this.posterPath,
    required this.movieName,
    required this.description,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          height: 460,
          child: Column(
            children: [
              siH20,
              Text(
                month,
                style: const TextStyle(fontSize: 18, color: greyColor),
              ),
              Text(
                day,
                style: const TextStyle(
                    fontSize: 28,
                    letterSpacing: 4,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 40,
          height: 480,
          // color: Colors.indigo,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Stack(children: [
                  Container(
                    width: double.infinity,
                    height: 220,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(posterPath), fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(left: 300, top: 170, child: volume_off)
                ]),
              ),
              siH20,
              Row(
                children: [
                  Expanded(
                    child: Text(
                      movieName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const icon_text(
                    icon: Icon(Icons.notifications_none),
                    subtititle: 'Remind Me',
                  ),
                  siW20,
                  const icon_text(
                    icon: Icon(Icons.info_outline),
                    subtititle: 'Info',
                  )
                ],
              ),
              siH20,
              Text(
                'Cooming on $day $month',
                style: const TextStyle(color: greyColor),
              ),
              Container(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: NetworkImage(netfliximage))),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: Text(
                  movieName,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Text(
                description,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: greyColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class icon_text extends StatelessWidget {
  const icon_text({Key? key, required this.icon, required this.subtititle})
      : super(key: key);
  final Icon icon;
  final String subtititle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () {}, icon: icon),
        Text(
          subtititle,
          style: const TextStyle(color: greyColor),
        )
      ],
    );
  }
}
