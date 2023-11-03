import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_cubit_state.dart';

class SearchCubit extends Cubit<SearchCubitState> {
  SearchCubit() : super(SearchCubitInitial());
  TextEditingController searchController = TextEditingController();
  static SearchCubit get(context) => BlocProvider.of<SearchCubit>(context);

  bool isSearched = false;
  void searched(){
    isSearched = searchController.text == "" ? false : true;
    emit(SearchCubitSearched());
  }
}
