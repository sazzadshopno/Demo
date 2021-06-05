import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubit/global_cubit.dart';

class DemoScreen extends StatefulWidget {
  final title;
  const DemoScreen({Key? key, @required this.title}) : super(key: key);

  @override
  _DemoScreenState createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalCubit _globalCubit = BlocProvider.of<GlobalCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder<GlobalCubit, GlobalState>(
        bloc: _globalCubit,
        builder: (_, state) {
          return Center(
            child: Text(
              state.value.toString(),
            ),
          );
        },
      ),
    );
  }
}
