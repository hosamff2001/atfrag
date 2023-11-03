import 'package:flutter/material.dart';

import '../../../../core/custom/custom_image.dart';
import '../../../../core/utliz/stayles.dart';

class WishListDetails extends StatelessWidget {
  const WishListDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Text(
          "Wish List",
          style: Styles.textStyle28,
        ),
        const SizedBox(height: 10),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 2,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(7),
                  child: CustomImage(
                    image: "assets/image/movies/movie${index + 8}.png",
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Movie Name",
                      style: Styles.textStyle20,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_border,
                          color: Colors.amber,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "7.5",
                          style:
                              Styles.textStyle14.copyWith(color: Colors.amber),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.local_movies_outlined,
                          color: Colors.red,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Action",
                          style: Styles.textStyle14,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          color: Colors.blueGrey,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "2021",
                          style: Styles.textStyle14,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.green[400],
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "2h 30m",
                          style: Styles.textStyle14,
                        )
                      ],
                    )
                  ],
                ))
              ],
            );
          },
        ),
      ],
    );
  }
}
