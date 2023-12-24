import 'package:final_proj/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:final_proj/auth_cubit.dart';

class HomePage extends StatelessWidget {
  static String id = 'home-page';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              // Sign out the user when the exit button is pressed
              context.read<AuthCubit>().signOut();
              // Navigate back to SplashScreen upon sign-out
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) =>  const SplashScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}
