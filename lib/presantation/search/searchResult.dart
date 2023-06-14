import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/sreach/search/sreach_bloc_bloc.dart';
import 'package:netflix_clone/core/Constant.dart';
import 'package:netflix_clone/presantation/widget/title.dart';


class searchResult extends StatelessWidget {
  const searchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          siH20,
          const title(titles: 'Movies & TV'),
          siH20,
          BlocBuilder<SreachBlocBloc, SreachBlocState>(
            builder: (context, state) {
              return Expanded(
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1 / 1.4,
                  children: List.generate(20, (index) {
                    final movie = state.searchResultList[index];
                    return mainCard(
                        imgUrlre: movie
                            .posterImgBaseUrl); //imageappandedUrl == imageBaseUrl
                  }),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class mainCard extends StatelessWidget {
  final String imgUrlre;
  const mainCard({Key? key, required this.imgUrlre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        image: DecorationImage(
          image: NetworkImage(imgUrlre),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
