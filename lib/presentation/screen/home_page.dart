import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubit/global_cubit.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final GlobalCubit _globalCubit = BlocProvider.of<GlobalCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder<GlobalCubit, GlobalState>(
        builder: (context, state) {
          return Center(
            child: Text(
              state.value.toString(),
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/random',
              );
            },
            child: Icon(Icons.skip_next),
          ),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {
              _globalCubit.increment();
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
