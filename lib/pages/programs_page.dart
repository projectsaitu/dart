import 'package:flutter/material.dart';
import 'animators_page.dart';
import 'shows_page.dart';
import 'masterclasses_page.dart';

class ProgramsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Программы'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Аниматоры'),
              Tab(text: 'Шоу'),
              Tab(text: 'Мастерклассы'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AnimatorsPage(),
            ShowsPage(),
            MasterclassesPage(),
          ],
        ),
      ),
    );
  }
}
