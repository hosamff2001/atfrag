import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../about/presentation/view/about_view.dart';
import '../../../search/presentation/view/search_view.dart';
import '../../../wish_list/presentation/view/wish_list_view.dart';
import '../view/widgets/home_details_view.dart';

part 'main_manger_state.dart';

class MainMangerCubit extends Cubit<MainMangerState> {
  MainMangerCubit() : super(MainMangerInitial());
  int activeIndex = 0;
  static getobject(BuildContext context) =>
      BlocProvider.of<MainMangerCubit>(context);
  List<IconData> icons = const [
    Icons.home_filled,
    Icons.search_rounded,
    Icons.bookmark_border,
    Icons.info_outline_rounded
  ];
  void changeIndex(int index) {
    activeIndex = index;
    emit(MainMangerChangeIndex());
  }

  List<Widget> screens = const [
    HomeDetails(),
    SearchDetails(),
    WishListDetails(),
    AboutDetails()
  ];
  List<int> randomNumbers = [2, 3, 4, 5, 6, 7];
  int grdailemoviesindex = 0;
  void changeGrdaileMoviesIndex(int index) {
    grdailemoviesindex = index;
    for (int i = 0; i < 6; i++) {
      randomNumbers[i] = Random().nextInt(8) + 2;
    }
    randomNumbers = randomNumbers.toSet().toList();
    while (randomNumbers.length < 6) {
      for (int i = 0; i < 6 - randomNumbers.length; i++) {
        randomNumbers.add(Random().nextInt(8) + 2);
      }
    }
    emit(MainMangerChangeGrdaileMoviesIndex(rondomnumbers:  randomNumbers));
  }
}
