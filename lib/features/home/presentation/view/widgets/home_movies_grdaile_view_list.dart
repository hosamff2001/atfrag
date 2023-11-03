import 'package:atfrag/features/home/presentation/cubit/main_manger_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/custom/custom_image.dart';

class HomeMoviesGrdaileViewList extends StatelessWidget {
  const HomeMoviesGrdaileViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.34,
        width: MediaQuery.sizeOf(context).width * 0.94,
        child: BlocBuilder<MainMangerCubit, MainMangerState>(
          builder: (context, state) {
            return GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10,
              children: List.generate(6, (index) {
                int randoNumber = 0;
                if (state is MainMangerChangeGrdaileMoviesIndex) {
                  randoNumber = state.rondomnumbers[index];
                } else {
                  randoNumber =
                      MainMangerCubit.getobject(context).randomNumbers[index];
                }
                return GridTile(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: CustomImage(
                      image: "assets/image/movies/movie$randoNumber.png"),
                ));
              }),
            );
          },
        ),
      ),
    );
  }
}
