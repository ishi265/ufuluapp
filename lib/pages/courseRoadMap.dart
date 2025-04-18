import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ufuluapp/widgets/CourseOutline.dart';
import 'package:ufuluapp/widgets/GradesWidget.dart';

class CourseRoadMap extends StatelessWidget {
  const CourseRoadMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_left),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Health Relationships"),
      ),
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Builder(
                builder: (context) {
                  double screenWidth = MediaQuery.of(context).size.width;
                  double tabWidth = screenWidth / 2;
                  double horizontalInset = tabWidth * 0.53;

                  return TabBar(
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                        width: 3,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      insets: EdgeInsets.symmetric(horizontal: horizontalInset),
                    ),
                    labelColor: Theme.of(context).colorScheme.onPrimary,
                    unselectedLabelColor:
                        Theme.of(context).colorScheme.onPrimary,
                    dividerColor: Colors.grey[200],
                    tabs: const [
                      Tab(text: 'Home'),
                      Tab(text: 'Grades'),
                    ],
                  );
                },
              ),
              const Divider(height: 0.001),
              Expanded(
                child: TabBarView(
                  children: [
                    CourseOutlineWidget(),
                    GradesWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
