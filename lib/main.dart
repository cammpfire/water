import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String password = '';
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
      ),
    );
  }
}
