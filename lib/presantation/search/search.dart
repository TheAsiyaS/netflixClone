import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/sreach/search/sreach_bloc_bloc.dart';
import 'package:netflix_clone/presantation/search/searchIdeal.dart';
import 'package:netflix_clone/presantation/search/searchResult.dart';


class search extends StatelessWidget {
  const search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SreachBlocBloc>(context)
          .add(const SreachBlocEvent.searchTime());
    });
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: const Color.fromARGB(255, 77, 76, 76),
              style: const TextStyle(color: Color.fromARGB(255, 219, 219, 219)),
              onSubmitted: (value) {
                BlocProvider.of<SreachBlocBloc>(context)
                    .add(SreachBlocEvent.searchResTym(mviNmeQurrey: value));
              },
            ),

            // searchIdeal()
            Expanded(child: BlocBuilder<SreachBlocBloc, SreachBlocState>(
              builder: (context, state) {
                if (state.searchResultList.isEmpty) {
                  log('EMPTY');
                  // log('${state.searchResultList}');
                  return const searchIdeal();
                } else {
                  return const searchResult();
                }
              },
            )),
          ],
        ),
      )),
    );
  }
}
