
import 'package:flutter/material.dart';
import 'package:food_app/main_drawer.dart';


class FiltersScreen extends StatelessWidget {
  const FiltersScreen({Key? key}) : super(key: key);

static const routeName ='/filters';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filters'),
      ),
      drawer: const MainDrawer(),
      body: const Center(
        child: Text('Filters'),
      ),
    );



  }
}
