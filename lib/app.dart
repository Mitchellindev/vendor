import 'package:broadcaadvendor/config/router/app_router.dart';
import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/config/theme/light_theme.dart';
import 'package:broadcaadvendor/core/connection/network_info.dart';
import 'package:broadcaadvendor/features/auth/data/providers/local_provider.dart';
import 'package:broadcaadvendor/features/auth/data/providers/remote_provider.dart';
import 'package:broadcaadvendor/features/auth/data/repositories/auth_repository.dart';
import 'package:broadcaadvendor/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: BlocProvider(
          create: (context) => AuthBloc(
            repo: AuthRepository(
              authProvider: RemoteAuthProviderImplementation(),
              localAuthUserSource: AuthUserLocalDataSourceImpl(
                sharedPreferences: SharedPreferences.getInstance(),
              ),
              networkInfo: NetworkInfoImpl(
                connectionChecker: DataConnectionChecker(),
              ),
            ),
          ),
          child: MaterialApp(
            theme: lightTheme(),
            debugShowCheckedModeBanner: false,
            // initialRoute: Routes.login,
            initialRoute: Routes.login,

            onGenerateRoute: appRouter.onGenerateRoute,
          ),
        ));
  }
}
