
import 'package:flutter/material.dart';
import '../category_screen.dart';
import '../favorites_screen.dart';
import '../main_drawer.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
      appBar: AppBar(
        title: const Text('Meals'),
        bottom: const TabBar(
        tabs:
        <Widget>[
          Tab(
            icon:Icon(
              Icons.category,
      ),
          text: 'Categories',),

         Tab(
          icon: Icon(
            Icons.star,
          ),
        text:'Favorites',
    ),
        ],
      ),
      ),
         drawer: MainDrawer(),


         body: const TabBarView (
        children: <Widget>
          [
            CategoriesScreen(),
          FavoritesScreen(),

        ],


      ),



    ),

    );



  }
}
