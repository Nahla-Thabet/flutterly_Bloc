import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterly_bloc/logic/cubit/counter_cubit.dart';
import 'package:flutterly_bloc/presentation/screens/home_screen.dart';
import 'package:flutterly_bloc/presentation/screens/third_screen.dart';

import '../screens/second_screen.dart';


class AppRouter {
  final CounterCubit _counterCubit=CounterCubit();

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch(routeSettings.name){
      case '/':
        return MaterialPageRoute(
          builder:(_)=> BlocProvider(
          create: (context)=>_counterCubit,
          child: HomeScreen(
              title: 'Home Screen',
              color: Colors.blueAccent)));
      break;
      case '/seconed ':
        return MaterialPageRoute(
          builder: (_) => SecondScreen(
            title: "Second Screen",
            color: Colors.redAccent,

          ),
        );
      break;
      case '/third ':
        return MaterialPageRoute(
            builder:(_)=> BlocProvider.value(
              value: _counterCubit,
                child: ThirdScreen (title: 'Home Screen', color: Colors.blueAccent)));
      break;
      default:
        return null;



    }
  }
  void dispose(){
    _counterCubit.close();
  }
}