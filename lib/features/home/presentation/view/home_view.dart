import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:atfrag/features/home/presentation/cubit/main_manger_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../constancs.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainMangerCubit(),
      child: SafeArea(child: BlocBuilder<MainMangerCubit, MainMangerState>(
        builder: (context, state) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (MainMangerCubit.getobject(context).activeIndex == 2) {
                  
                }
              },
              child: const Icon(
                Icons.slow_motion_video_rounded,
                color: Colors.white,
              ),
              //params
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: AnimatedBottomNavigationBar.builder(
              itemCount: MainMangerCubit.getobject(context).icons.length,
              tabBuilder: (index, isActive) {
                return Icon(
                  MainMangerCubit.getobject(context).icons[index],
                  color: isActive ? Colors.red : Colors.white,
                );
              },
              gapLocation: GapLocation.center,
              notchSmoothness: NotchSmoothness.verySmoothEdge,
              leftCornerRadius: 32,
              rightCornerRadius: 32,
              backgroundColor: backgroundcolor,
              elevation: 10,
              blurEffect: true,
              activeIndex: MainMangerCubit.getobject(context).activeIndex,
              onTap: (int index) {
                MainMangerCubit.getobject(context).changeIndex(index);
              },
            ),
            body: MainMangerCubit.getobject(context)
                .screens[MainMangerCubit.getobject(context).activeIndex],
          );
        },
      )),
    );
  }
}
