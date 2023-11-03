part of 'main_manger_cubit.dart';

@immutable
sealed class MainMangerState {}

final class MainMangerInitial extends MainMangerState {}

final class MainMangerChangeIndex extends MainMangerState {}

final class MainMangerChangeGrdaileMoviesIndex extends MainMangerState {
  final List<int> rondomnumbers;

  MainMangerChangeGrdaileMoviesIndex({required this.rondomnumbers});
}

final class MainMangerChangeMovies extends MainMangerState {}

final class ChangeGraidViewMoviesRandomNumber extends MainMangerState {}
