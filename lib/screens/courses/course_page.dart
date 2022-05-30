import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:course_ed_tech/core/widgets/card_widget.dart';
import 'package:course_ed_tech/cubit/courses_cubit/courses_cubit.dart';
import 'package:course_ed_tech/cubit/courses_cubit/courses_state.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  CoursePage({Key? key}) : super(key: key);

  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => CoursesCubit(_searchController, context),
      child: BlocConsumer<CoursesCubit, CoursesState>(
        listener: (context, state) {},
        builder: (context, state) {
          return _buildScaffold(context);
        },
      ),
    );
  }

  _buildScaffold(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparentColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: ListTile(
          contentPadding: EdgeInsets.symmetric(
              horizontal: getWidth(0.0), vertical: getHeight(0.0)),
          title: Container(
            alignment: Alignment.centerLeft,
            child: SubtitlesTextWidget(subtitle: "Hello"),
          ),
          subtitle: Container(
            alignment: Alignment.centerLeft,
            child: TitleTextWidget(
              title: "Juana Antonieta",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: getWidth(20.0)),
            child: Container(
              margin: EdgeInsets.only(top: getHeight(10.0)),
              width: getWidth(60.0),
              height: getWidth(60.0),
              child: IconButton(
                icon: SvgPicture.asset(AppIcons.notification),
                iconSize: getWidth(30.0),
                onPressed: () {
                  debugPrint("bosildi");
                },
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getWidth(16.0), vertical: getHeight(12.0)),
          child: Column(
            children: [
              MyTextFormField(
                textInputType: TextInputType.name,
                thisControllers: _searchController,
                icon: SvgPicture.asset(AppIcons.search),
                onPress: () {
                  context.read<CoursesCubit>().hideKeyboard(context);
                },
                obscureText: false,
                hingText: "Search",
              ),
              SizedBox(
                width: getWidth(325.0),
                height: getHeight(50.0),
                child: Row(
                  children: [
                    SizedBox(
                        child: SubtitlesTextWidget(subtitle: "Category :")),
                    SizedBox(
                      width: getWidth(260.0),
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getWidth(4.0),
                                vertical: getHeight(5.0)),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                width: getWidth(60.0),
                                height: getHeight(30.0),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(getWidth(20.0)),
                                  color: Colors.blue,
                                ),
                                child: TextWidget(
                                    text: "#CSS",
                                    fontSize: getWidth(12.0),
                                    textColor: AppColors.whiteColor),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getHeight(500.0),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: getHeight(10.0)),
                      child: GestureDetector(
                        onTap: () {
                          debugPrint("ONTAB");
                          Navigator.pushNamed(context, "/courseView");
                        },
                        child: const CardWidget(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
