// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';

class CubitHomeScreen extends StatelessWidget {
  const CubitHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cubit State Management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Counter:',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 30),
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  return Text(
                    '${BlocProvider.of<CounterCubit>(context).counter}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                },
              ),
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        onPressed: BlocProvider.of<CounterCubit>(context)
                            .decrementCounter,
                        tooltip: 'Decrement',
                        child: const Icon(Icons.remove),
                      ),
                      const SizedBox(width: 70),
                      FloatingActionButton(
                        onPressed: BlocProvider.of<CounterCubit>(context)
                            .incrementCounter,
                        tooltip: 'Increment',
                        child: const Icon(Icons.add),
                      )
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
