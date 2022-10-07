import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class ProviderHomeScreen extends StatelessWidget {
  const ProviderHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Provider State Management'),
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
              Consumer<CounterProvider>(
                builder: (context, provider, _) {
                  return Text(
                    '${provider.counter}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                },
              ),
              Consumer<CounterProvider>(
                builder: (context, provider, _) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          provider.decrementCount();
                        },
                        tooltip: 'Decrement',
                        child: const Icon(Icons.remove),
                      ),
                      const SizedBox(width: 70),
                      FloatingActionButton(
                        onPressed: provider.incrementCount,
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
