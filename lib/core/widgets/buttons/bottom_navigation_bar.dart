import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:course_ed_tech/cubit/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => BottomNavigationBarCubit(),
      child: BlocBuilder<BottomNavigationBarCubit, BottomNavigationBarState>(
        builder: (context, state) {
          return Scaffold(
            body: context.watch<BottomNavigationBarCubit>().pagesOfBottomNavBar[
                context
                    .watch<BottomNavigationBarCubit>()
                    .pageIndexOfBottomNavigationBar],
            bottomNavigationBar: BottomNavigationBar(
              unselectedItemColor: AppColors.defaultIconColor,
              selectedItemColor: AppColors.redColor,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.course,
                    color: context
                                .watch<BottomNavigationBarCubit>()
                                .pageIndexOfBottomNavigationBar ==
                            0
                        ? AppColors.redColor
                        : AppColors.defaultIconColor,
                  ),
                  label: "Courses",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.profile, color: context
                      .watch<BottomNavigationBarCubit>()
                      .pageIndexOfBottomNavigationBar ==
                      1
                      ? AppColors.redColor
                      : AppColors.defaultIconColor,),
                  label: "Profile",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.settings, color: context
                      .watch<BottomNavigationBarCubit>()
                      .pageIndexOfBottomNavigationBar ==
                      2
                      ? AppColors.redColor
                      : AppColors.defaultIconColor,),
                  label: "Settings",

                ),
              ],
              onTap: (int indexOfBottomNavigationBar) {
                context
                    .read<BottomNavigationBarCubit>()
                    .changePageOfBottomNavigationBar(
                        indexOfBottomNavigationBar);
              },
              currentIndex: context
                  .watch<BottomNavigationBarCubit>()
                  .pageIndexOfBottomNavigationBar,
            ),
          );
        },
      ),
    );
  }
}
