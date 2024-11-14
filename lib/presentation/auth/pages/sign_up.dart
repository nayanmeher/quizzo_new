import 'package:flutter/material.dart';
import 'package:quizzo/data/model/auth/create_user_req_model.dart';
import 'package:quizzo/domain/usecases/auth/signup.dart';
import 'package:quizzo/presentation/auth/pages/singnin.dart';


import '../../../service_locator.dart';
import '../../home/page/home_page.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final TextEditingController _fullNameCtrl = TextEditingController();
  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signInText(context),
      // appBar: AppBar(
      //   title: const Text('Signup'),
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30),
        child: Column(
          children: [
            _registerText(context),
            const SizedBox(
              height: 20,
            ),
            _fullNameField(context),
            const SizedBox(
              height: 20,
            ),
            _emailField(context),
            const SizedBox(
              height: 20,
            ),
            _passwordField(context),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () async{
              final resp = await sl<SignupUsecase>().call(
                param: CreateUserReqModel(fullName: _fullNameCtrl.text, email: _emailCtrl.text, password: _passwordCtrl.text)
              );

              resp.fold((l){
                final snackBar = SnackBar(content: Text(l));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }, (r){
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const HomePage()),
                        (rout) => false);
              });
            }, child: Text('Sign Up'))
          ],
        ),
      ),
    );
  }

  Widget _registerText(BuildContext context) {
    return Text(
      'Register',
      style: TextStyle(
          fontWeight: FontWeight.bold,
          color:  Colors.black,
          fontSize: 25),
      textAlign: TextAlign.center,
    );
  }

  Widget _fullNameField(BuildContext context) {
    return TextField(
      controller: _fullNameCtrl,
      decoration: const InputDecoration(hintText: 'Full Name')
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      controller: _emailCtrl,
      decoration: const InputDecoration(hintText: 'Email')
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      controller: _passwordCtrl,
      decoration: const InputDecoration(hintText: 'Password')
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _signInText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Do you have an account? ',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => SignIn()));
              },
              child: Text('Sign In'))
        ],
      ),
    );
  }
}
