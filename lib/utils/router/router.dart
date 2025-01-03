import 'package:academia/features/auth/cubit/auth_cubit.dart';
import 'package:academia/features/auth/cubit/auth_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:academia/features/features.dart';

class AcademiaRouter {
  static GoRouter get router => _router;
  static GlobalKey<NavigatorState> get globalNavigatorKey =>
      GlobalKey<NavigatorState>();

  static const String registerRoute = "/register";
  static const String auth = "/auth";
  static const String profile = "profile";

  static final GoRouter _router = GoRouter(
    initialLocation: "/",
    navigatorKey: globalNavigatorKey,
    routes: [
      GoRoute(
        path: "/",
        name: "/",
        builder: (context, state) => const DefaultRoute(),
      ),
      GoRoute(
        path: "/auth",
        name: "/auth",
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: "/register",
        name: "/register",
        builder: (context, state) => const SignUpPage(),
      ),
      GoRoute(
        path: "/home",
        name: "/home",
        builder: (context, state) => const Layout(),
      ),
      GoRoute(
        path: profile,
        name: "/$profile",
        builder: (context, state) => const ProfilePage(),
      ),
    ],
  );
}

class DefaultRoute extends StatelessWidget {
  const DefaultRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Academia",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
    // return BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
    //   switch (state.runtimeType) {
    //     case AuthErrorState:
    //       return Center(
    //         child: Text((state as AuthErrorState).message),
    //       );
    //     case AuthCachedUsersRetrieved:
    //       return const UserSelectionPage();
    //   }
    //   return const OnboardingPage();
    // });
  }
}
