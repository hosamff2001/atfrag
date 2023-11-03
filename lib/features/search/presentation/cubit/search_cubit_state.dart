part of 'search_cubit_cubit.dart';

@immutable
sealed class SearchCubitState {}

final class SearchCubitInitial extends SearchCubitState {}
final class SearchCubitNotSearched extends SearchCubitState {}
final class SearchCubitSearched extends SearchCubitState {}
