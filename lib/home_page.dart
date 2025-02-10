import 'package:bloc_1/cubit/counter_cubit.dart';
import 'package:bloc_1/inc_dec_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      body: Center(
        child: BlocBuilder(
          bloc: counterCubit,
          builder: (context, state) => Text(
            '$state',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IncDecPage(),
          ),
        ),
      ),
    );
  }
}
