import 'package:atfrag/features/home/presentation/cubit/main_manger_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constancs.dart';
import '../../../../../core/utliz/stayles.dart';

class HomeTopView extends StatelessWidget {
  const HomeTopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: BlocBuilder<MainMangerCubit, MainMangerState>(
        builder: (context, state) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "What Do You Want To Watch To Day ? ",
                    style: Styles.textStyle20,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Hero(
                  tag: "search/filed",
                  child: InkWell(
                    onTap: () {
                      MainMangerCubit.getobject(context).changeIndex(1);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(10)),
                      height: MediaQuery.sizeOf(context).height * 0.06,
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Search",
                            style:
                                Styles.textStyle14.copyWith(color: hidecolor),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.5,
                          ),
                          const Icon(
                            Icons.search,
                            color: hidecolor,
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          );
        },
      ),
    );
  }
}
