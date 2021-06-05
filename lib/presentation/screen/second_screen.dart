import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubit/global_cubit.dart';

class SomeRandomPage extends StatefulWidget {
  final title;
  const SomeRandomPage({Key? key, @required this.title}) : super(key: key);

  @override
  _SomeRandomPageState createState() => _SomeRandomPageState();
}

class _SomeRandomPageState extends State<SomeRandomPage> {
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
