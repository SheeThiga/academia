import 'package:academia/database/database.dart';
import 'package:academia/features/auth/cubit/auth_cubit.dart';
import 'package:academia/features/auth/cubit/auth_states.dart';
import 'package:academia/utils/router/router.dart';
import 'package:academia/utils/validator/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sliver_tools/sliver_tools.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
  final TextEditingController _admissionController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formState = GlobalKey<FormState>();
  bool _showPassword = true;

  @override
  void initState() {
    super.initState();
  }

  /// Validates the current sign in form
  /// Returns true if there are no errors otherwise
  /// it returns false to indicate an error
  bool validateForm() {
    return _formState.currentState!.validate();
  }

  /// Shows a dialog with [title] and [content]
  void _showMessageDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text("Ok"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Form(
        key: _formState,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              floating: true,
              snap: true,
              pinned: true,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/academia.png",
                      ),
                      const Text("Academia"),
                    ],
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(12),
              sliver: SliverPinnedHeader(
                child: Column(
                  spacing: 12,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Sign in",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            GoRouter.of(context)
                                .pushNamed(AcademiaRouter.registerRoute);
                          },
                          icon: const Icon(Bootstrap.question_circle),
                        ),
                      ],
                    ),

                    const Text(
                      "Use your school admission number and school portal password to continue to Academia.",
                    ),

                    TextFormField(
                      controller: _admissionController,
                      textAlign: TextAlign.center,
                      maxLength: 7,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        AdmnoDashFormatter(),
                      ],
                      validator: (value) {
                        if (value?.length != 7) {
                          return "Please provide a valid admission number😡";
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      decoration: InputDecoration(
                        hintText: "Your school admission number",
                        label: const Text("Admission number"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),

                    TextFormField(
                      controller: _passwordController,
                      obscureText: _showPassword,
                      textAlign: TextAlign.center,
                      validator: (value) {
                        if ((value?.length ?? 0) < 3) {
                          return "Please provide a valid password 😡";
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                            icon: Icon(_showPassword
                                ? Bootstrap.eye
                                : Bootstrap.eye_slash)),
                        hintText: "Your school portal password",
                        label: const Text("School Password"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),

                    // Input buttons

                    BlocBuilder<AuthCubit, AuthState>(
                        builder: (context, state) {
                      return FilledButton(
                        onPressed: state is AuthLoadingState
                            ? null
                            : () async {
                                if (!validateForm()) {
                                  _showMessageDialog(
                                    "Validation error",
                                    "Please ensure that the form was well filled",
                                  );
                                  return;
                                }
                                final result = await authCubit
                                    .authenticate(UserCredentialData(
                                  username: "",
                                  email: "",
                                  admno: _admissionController.text,
                                  password: _passwordController.text,
                                  lastLogin: DateTime.now(),
                                ));

                                result.fold((l) {
                                  _showMessageDialog("Authentication Error", l);
                                }, (r) {
                                  context.pushReplacementNamed("/home");
                                });
                              },
                        child: state is AuthLoadingState
                            ? const CircularProgressIndicator.adaptive()
                            : const Text("Login"),
                      );
                    }),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(12),
              sliver: SliverFillRemaining(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text("Privacy and terms of service"),
                    ),
                    const SizedBox(height: 12)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
