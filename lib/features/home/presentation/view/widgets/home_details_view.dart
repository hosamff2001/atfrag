import 'package:flutter/material.dart';

import 'home_movies_grdaile_view.dart';
import 'home_movies_show_view.dart';
import 'home_top_view.dart';

class HomeDetails extends StatelessWidget {
  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeTopView(),
        SizedBox(
          height: 10,
        ),
        HomeMoviesShow(),
        HomeMoviesGrdaileView(),
      ],
    );
  }
}
