import 'package:atfrag/features/details/view/widgets/overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view/widgets/cast.dart';
import '../view/widgets/reviews.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsCubitState> {
  DetailsCubit() : super(DetailsInitial());
  static DetailsCubit get(context) => BlocProvider.of(context);
  int detailsobjectindex = 0;
  List<Widget> showdetails = [const OverView(), const ReViews(), const Cast()];
  void setDetailsObjectIndex(int index) {
    detailsobjectindex = index;
    emit(ChangeDetailsObjectIndex());
  }
}
