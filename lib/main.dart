import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:task1_iti/services/counter_bloc.dart';

import 'home_screen.dart';
main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BlocProvider(create:(context)=>BlocCounter(),child: Home()),
    );
  }
}