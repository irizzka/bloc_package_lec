import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_package_lec/res/consts.dart';
import 'package:bloc_package_lec/res/font_styles.dart';
import 'package:bloc_package_lec/ui/shared/counter_button.dart';
import 'package:bloc_package_lec/bloc/counter/counter_bloc.dart';
import 'package:bloc_package_lec/bloc/counter/counter_events.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    /// it's ok, package already do it  -- https://github.com/felangel/bloc/issues/587
    CounterBloc _counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlocBuilder<CounterBloc, int>(
            /// builder use [ctx] and
            builder: (BuildContext ctx, int counter){
              return Text(
                '$counter',
                style: Fonts.counterText(),
              );
            },
          ),
          const SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CounterButton(
                iconData: Icons.add,
                onTap: () => _counterBloc.add(CounterEvent.incrementEvent),
              ),
              const SizedBox(width: 40.0),
              CounterButton(
                iconData: Icons.remove,
                onTap: () => _counterBloc.add(CounterEvent.decrementEvent),
              ),
            ],
          )
        ],
      ),
    );
  }
}
