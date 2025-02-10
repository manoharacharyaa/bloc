import 'package:bloc_1/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';

class IncDecPage extends StatelessWidget {
  const IncDecPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = CounterCubit();

    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'btn1',
            onPressed: () => counterCubit.increment(),
            child: Icon(Icons.add),
          ),
          const SizedBox(height: 20),
          FloatingActionButton(
            heroTag: 'btn2',
            onPressed: () => counterCubit.decrement(),
            child: Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}
