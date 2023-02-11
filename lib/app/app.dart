import 'package:earthkeepers/app/logic/auth/cubit.dart';
import 'package:earthkeepers/presentation/screens/home/layout_screen.dart';
import 'package:earthkeepers/presentation/screens/home/scan/qr_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context)=>AuthCubit(),
          ),
        ],
        child:  Sizer(
        builder: (context,s,d){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: "Cairo"
        ),
        home:const  AppLayout(),
      );
    },
    ));
  }
}
