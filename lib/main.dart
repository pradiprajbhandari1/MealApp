import 'package:flutter/material.dart';
import 'package:food_app/filters_screen.dart';
import '../tab_screen.dart';
import './meal_detail_screen.dart';
import './category_meals_screen.dart';
import '../category_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DealMeal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.green
        ).copyWith(
            secondary: Colors.amber
        ),
         canvasColor: const Color.fromRGBO(255,254,226,1),
           fontFamily: '',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyLarge: const TextStyle(
              color: Color.fromRGBO(20,51,51,1),
          ),
            bodyMedium: const TextStyle(
                color: Color.fromRGBO(20,51,51,1),
            ),
          titleMedium: const TextStyle(
            fontSize: 24,
            fontFamily: 'RobotoCondensed',
          )
        )

      ),

        routes:{


        '/':(ctx)   =>  const TabScreen(),
        CategoryMealsScreen.routeName : (ctx)=> CategoryMealsScreen(),
          MealDetailScreen.routeName : (ctx)=> MealDetailScreen(),
          FiltersScreen.routeName  :(ctx)=> FiltersScreen(),
        },





    );
  }
}
