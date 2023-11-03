import 'package:atfrag/core/custom/custom_image.dart';
import 'package:atfrag/core/utliz/stayles.dart';
import 'package:atfrag/features/details/cubit/details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constancs.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bookmark,
                    color: Colors.white,
                  ),
                ))
          ],
          title: const Center(
            child: Text("Detail"),
          )),
      body: BlocProvider(
        create: (context) => DetailsCubit(),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/image/movies/movie10.png",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.4,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(37, 40, 54, 0.32),
                          borderRadius: BorderRadius.circular(8)),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 241, 149, 12),
                          ),
                          Text("8.5",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 241, 149, 12),
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 60,
                    child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(4),
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        child: IconButton(
                          icon: const Icon(
                            Icons.play_arrow,
                            color: Colors.red,
                            size: 32,
                          ),
                          onPressed: () {},
                        )),
                  ),
                  Positioned(
                    left: 0,
                    bottom: -10,
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        margin: const EdgeInsets.all(4),
                        padding: const EdgeInsets.all(4),
                        child: const CustomImage(
                            image: "assets/image/movies/movie0.png")),
                  ),
                  Positioned(
                    right: 0,
                    bottom: -15,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.67,
                      child: Text(
                        "Spiderman No Way Home",
                        maxLines: 2,
                        style: Styles.textStyle20.copyWith(fontSize: 24),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                ),
                const SizedBox(
                  width: 15,
                  height: 20,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
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
                ),
                const SizedBox(
                  width: 15,
                  height: 20,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
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
            SizedBox(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.05,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: BlocBuilder<DetailsCubit, DetailsCubitState>(
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DetailsSubject(context, "Overview", 0),
                        const SizedBox(
                          width: 10,
                        ),
                        DetailsSubject(context, "Reviews", 1),
                        const SizedBox(
                          width: 10,
                        ),
                        DetailsSubject(context, "Cast", 2),
                      ],
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.24,
              child: BlocBuilder<DetailsCubit, DetailsCubitState>(
                builder: (context, state) {
                  return DetailsCubit.get(context).showdetails[
                      DetailsCubit.get(context).detailsobjectindex];
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
