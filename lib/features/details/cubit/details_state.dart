part of 'details_cubit.dart';

@immutable
sealed class DetailsCubitState {}

final class DetailsInitial extends DetailsCubitState {}

final class ChangeDetailsObjectIndex extends DetailsCubitState {}
