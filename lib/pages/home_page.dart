import 'package:flutter/material.dart';
import 'package:tamofoodapp/components/my_current_location.dart';
import 'package:tamofoodapp/components/my_description_box.dart';
import 'package:tamofoodapp/components/my_drawer.dart';
import 'package:tamofoodapp/components/my_sliver_app_bar.dart';
import 'package:tamofoodapp/components/my_tap_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTapBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                // mi ubicacion actual
                MyCurrentLocation(),

                // caja de descripcion
                const MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text('Items de Primera tab'),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text('Items de Segunda tab'),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text('Items de Tercera tab'),
            ),
          ],
        ),
      ),
    );
  }
}
