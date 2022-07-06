import 'package:admin/application/add_category/category_bloc.dart';
import 'package:admin/application/add_products/add_products_bloc.dart';
import 'package:admin/domain/core/di/injectable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:admin/presentation/login/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjection();
   await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CategoryBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<AddProductsBloc>()
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Login(),
      ),
    );
  }
}
