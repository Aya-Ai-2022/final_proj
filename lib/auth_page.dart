

import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:final_proj/auth_cubit.dart';
import 'package:final_proj/forget_password_page.dart';
import 'package:final_proj/sign_in_page.dart';
import 'package:final_proj/sign_up_page.dart';


// AuthPage with background image
class AuthPage extends StatelessWidget {
   AuthPage({super.key});
    static String id = 'auth-page';
    final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Sign Up'),
              Tab(text: 'Sign In'),
              Tab(text: 'Forget Password'),
            ],
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/image.jpg'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: TabBarView(
            children: [
              SignUpPage(_emailController, _passwordController),
              SignInPage(_emailController, _passwordController),
              ForgetPasswordPage(_emailController),
            ],
          ),
        ),
      ),
    );
  }
}
