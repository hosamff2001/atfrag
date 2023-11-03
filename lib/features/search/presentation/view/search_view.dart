import 'package:atfrag/core/utliz/stayles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/custom/custom_image.dart';
import '../cubit/search_cubit_cubit.dart';

class SearchDetails extends StatelessWidget {
  const SearchDetails({super.key});
  border() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Colors.red),
      );
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: BlocBuilder<SearchCubit, SearchCubitState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.sizeOf(context).height * 0.1),
                  child: Align(
                      alignment: Alignment.center,
                      child: Hero(
                          tag: "search/filed",
                          child: SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.08,
                            width: MediaQuery.sizeOf(context).width * 0.92,
                            child: TextFormField(
                              onChanged: (value) {
                                SearchCubit.get(context).searched();
                              },
                              controller:
                                  SearchCubit.get(context).searchController,
                              autocorrect: true,
                              cursorColor: Colors.red,
                              decoration: InputDecoration(
                                  disabledBorder: border(),
                                  enabledBorder: border(),
                                  focusedBorder: border(),
                                  border: border(),
                                  hintStyle: Styles.textStyle16.copyWith(
                                      color: Colors.grey.withOpacity(0.5)),
                                  hintText:
                                      "Let Me Help you to find a Movie 😊🍿"),
                            ),
                          ))),
                ),
                const SizedBox(
                  height: 20,
                ),
                !SearchCubit.get(context).isSearched
                    ? Column(
                        children: [
                          Lottie.asset(
                            "assets/animations/search.json",
                            width: MediaQuery.sizeOf(context).width * 0.92,
                            height: MediaQuery.sizeOf(context).height * 0.5,
                          ),
                          Text(
                            "Let Search For Movies and Series \n😉🤯",
                            style: Styles.textStyle20,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          )
                        ],
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: 2,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(7),
                                child: CustomImage(
                                  image:
                                      "assets/image/movies/movie${index + 8}.png",
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
                                        style: Styles.textStyle14
                                            .copyWith(color: Colors.amber),
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
                      )
              ],
            ),
          );
        },
      ),
    );
  }
}
