import 'package:flutter/material.dart';

import 'text_grdaile.dart';

class HomeMoviesGrdaileViewTitle extends StatelessWidget {
  const HomeMoviesGrdaileViewTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.05,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            TextGrdaile(
              text: "Now playing",
              id: 0,
            ),
            Spacer(),
            TextGrdaile(
              text: "Upcoming",
              id: 1,
            ),
            Spacer(),
            TextGrdaile(
              text: "Popular Movies",
              id: 2,
            ),
            Spacer(),
            TextGrdaile(
              text: "Top rated",
              id: 3,
            )
          ],
        ),
      ),
    );
  }
}
