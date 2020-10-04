import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_package_lec/res/consts.dart';
import 'package:bloc_package_lec/ui/pages/home_page.dart';
import 'package:bloc_package_lec/bloc/counter/counter_bloc.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppTitle,
      home: BlocProvider(
          create: (BuildContext ctx) => CounterBloc(),
          child: HomePage()),
    );
  }
}