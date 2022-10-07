import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managements/getX/counter_controller.dart';

class GetXHomeScreen extends StatelessWidget {
  const GetXHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX State Management'),
      ),
      body: Center(
        child: GetX<CounterController>(
          init: CounterController(),
          builder: (controller) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Counter:',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 30),
              Text(
                '${controller.counter.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: controller.decrementCounter,
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 70),
                  FloatingActionButton(
                    onPressed: controller.incrementCounter,
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
