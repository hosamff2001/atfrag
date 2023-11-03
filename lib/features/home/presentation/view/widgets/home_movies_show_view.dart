import 'package:atfrag/core/custom/custom_image.dart';
import 'package:atfrag/features/details/view/details_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeMoviesShow extends StatelessWidget {
  const HomeMoviesShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.29,
      child: ListView.builder(
        itemCount: 2,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            width: MediaQuery.sizeOf(context).width * 0.4,
            height: MediaQuery.sizeOf(context).height * 0.1,
            child: Stack(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const DetailsView();
                        },
                      ));
                    },
                    child: CustomImage(
                        image: "assets/image/movies/movie$index.png")),
                Positioned(
                  bottom: 0,
                  left: 5,
                  child: Text((index + 1).toString(),
                      style: TextStyle(
                        fontSize: 96,
                        fontFamily: GoogleFonts.montserrat().fontFamily,
                        color: const Color.fromARGB(255, 163, 16, 16),
                        fontWeight: FontWeight.w600,
                      )),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
