import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  SignUpForm({Key key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String password = '';
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(32),
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'name@example.com',
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              onChanged: (value) => setState(()=> this.password = value),
              onSubmitted:  (value) => setState(()=> this.password = value),
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                errorText: 'Password is wrong',
                suffixIcon: IconButton(
                  icon: isPasswordVisible
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                  onPressed: () =>
                      setState(()=> isPasswordVisible = !isPasswordVisible),
                ),
              ),
            ),
            const SizedBox(height: 24.0,),
            ElevatedButton(
              onPressed: (){},
              child: Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}