import 'package:flutter/material.dart';

import 'home_movies_grdaile_view_list.dart';
import 'home_movies_grdaile_view_title.dart';

class HomeMoviesGrdaileView extends StatelessWidget {
  const HomeMoviesGrdaileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeMoviesGrdaileViewTitle(),
        HomeMoviesGrdaileViewList(),
      ],
    );
  }
}