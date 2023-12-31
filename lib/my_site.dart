import 'package:akhilgurrapu/pages/blog/blogs.dart';
import 'package:flutter/material.dart';
import 'package:akhilgurrapu/core/configs/configs.dart';
import 'package:akhilgurrapu/core/configs/connection/bloc/connected_bloc.dart';
import 'package:akhilgurrapu/core/configs/connection/network_check.dart';
import 'package:akhilgurrapu/core/providers/drawer_provider.dart';
import 'package:akhilgurrapu/core/providers/scroll_provider.dart';
import 'package:akhilgurrapu/core/theme/cubit/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:akhilgurrapu/pages/project_page.dart'; // Update the import path

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (_) => ThemeCubit()),
        BlocProvider<ConnectedBloc>(create: (context) => ConnectedBloc()),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => DrawerProvider()),
          ChangeNotifierProvider(create: (_) => ScrollProvider()),
        ],
        child: BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
          return Sizer(builder: (context, orientation, deviceType) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Akhil Gurrapu',
              theme: AppTheme.themeData(state.isDarkThemeOn, context),
              initialRoute: "/",
              routes: {
                "/": (context) => const NChecking(),
                "/projects": (context) =>  ProjectsPage(),
                "/blog" : (context) => BlogPage(),
              },
            );
          });
        }),
      ),
    );
  }
}
