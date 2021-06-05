import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubit/global_cubit.dart';
import 'package:project/presentation/router/app_router.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GlobalCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        onGenerateRoute: _appRouter.onGenerateRoute,
      ),
    );
  }
}
