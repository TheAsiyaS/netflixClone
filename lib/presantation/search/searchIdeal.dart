
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/sreach/search/sreach_bloc_bloc.dart';
import 'package:netflix_clone/core/Constant.dart';
import 'package:netflix_clone/presantation/widget/title.dart';



class searchIdeal extends StatelessWidget {
  const searchIdeal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        siH20,
        const title(titles: 'Top Searches'),
        siH20,
        Expanded(
          child: BlocBuilder<SreachBlocBloc, SreachBlocState>(
            builder: (context, state) {
              if (state.idellist.isEmpty) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: Colors.white,
                  backgroundColor: Colors.grey,
                  strokeWidth: 2,
                ));
              } else if (state.idellist.isNotEmpty) {
                return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      final mvi = state.idellist[index];

                      return topSearchItems(
                          mviName: mvi.Title ?? "No Name",
                          imgUrl: '$imgBaseUrl${mvi.posterPath}');
                    }),
                    separatorBuilder: (ctx, index) {
                      return const Divider(
                        height: 20,
                      );
                    },
                    itemCount: state.idellist.length);
              } else if (state.isError) {
                return const Center(child: Text('Error!!..'));
              } else if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return const Text('data');
              }
            },
          ),
        )
      ],
    );
  }
}

class topSearchItems extends StatelessWidget {
  final String mviName;
  final String imgUrl;
  const topSearchItems({Key? key, required this.mviName, required this.imgUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizewidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Container(
          width: sizewidth * 0.38,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image:
                DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            mviName,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: sizewidth * 0.187,
        ),
        IconButton(
          onPressed: () {},
          icon: palyIcon,
          iconSize: 50,
        ),
      ],
    );
  }
}
