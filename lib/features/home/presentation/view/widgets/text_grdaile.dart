
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utliz/stayles.dart';
import '../../cubit/main_manger_cubit.dart';

class TextGrdaile extends StatelessWidget {
  const TextGrdaile({super.key, required this.text, required this.id});
  final String text;

  final int id;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainMangerCubit, MainMangerState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            MainMangerCubit.getobject(context).changeGrdaileMoviesIndex(id);
          },
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.05,
            child: Column(
              children: [
                Text(text,
                    textAlign: TextAlign.center,
                    style: Styles.textStyle14.copyWith(
                      color: MainMangerCubit.getobject(context)
                                  .grdailemoviesindex ==
                              id
                          ? Colors.red
                          : Colors.white,
                    )),
                const SizedBox(
                  height: 4,
                ),
                MainMangerCubit.getobject(context).grdailemoviesindex == id
                    ? SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.08,
                        height: MediaQuery.sizeOf(context).height * 0.002,
                        child: const Divider(
                          thickness: 2,
                          color: Colors.red,
                        ),
                      )
                    : Container()
              ],
            ),
          ),
        );
      },
    );
  }
}