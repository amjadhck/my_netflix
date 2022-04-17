// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_netflix/application/search/search_bloc.dart';
import 'package:my_netflix/core/colors.dart';
import 'package:my_netflix/core/constans.dart';
import 'package:my_netflix/presentation/widgets/search_idle_widget.dart';
import 'package:my_netflix/presentation/widgets/search_result_widget.dart';

import '../../application/downloads/downloads_bloc.dart';
import '../../domain/debounce/debounce.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  final _debouncer = Debouncer(milliseconds: 1000);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(SearchEvent.initialize());
    });
    //Timer? _debounce;
    // @override
    // void dispose() {
    //   _debounce?.cancel();
    //   //super.dispose();
    // }
    // _onSearchChanged(String query) {
    //   if (query.isEmpty) {
    //     return;
    //   }
    //   if (_debounce?.isActive ?? false) {
    //     _debounce?.cancel();
    //   }
    //   _debounce = Timer(const Duration(milliseconds: 1000), () {
    //     BlocProvider.of<SearchBloc>(context)
    //         .add(SearchEvent.searchMovie(movieQuery: query));
    //   });
    // }

    // BlocProvider.of<SearchBloc>(context).add(SearchEvent.initialize());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: kgrey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: kgrey,
                ),
                style: TextStyle(color: kwhite),
                backgroundColor: kgrey.withOpacity(0.4),
                onChanged: (value) {
                  _debouncer.run(() {
                    if (value.isEmpty) {
                      return;
                    }
                    BlocProvider.of<SearchBloc>(context)
                        .add(SearchEvent.searchMovie(movieQuery: value));
                  });
                },
              ),
              kheight,
              Expanded(child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state.searchResultData.isEmpty) {
                    return SearchIdleWidget();
                  } else {
                    return SearchReslultWidget();
                  }
                },
              )),
              //Expanded(child: SearchReslultWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
