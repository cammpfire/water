import 'package:flutter/material.dart';
import 'package:water/information.dart';

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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/starry_night.jpeg"),
            fit: BoxFit.cover,
          ),
        ),

        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  cursorColor: Colors.teal,
                  decoration: InputDecoration(
                    hintText: 'name@example.com',
                    labelText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffFFD700), width: 3.0),
                    ),
                  ),
                ),
                const SizedBox(height: 30.0,),
                TextField(
                  onChanged: (value) => setState(()=> this.password = value),
                  onSubmitted:  (value) => setState(()=> this.password = value),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFf700), width: 3.0),
                    ),
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
                  obscureText: isPasswordVisible,
                ),
                const SizedBox(height: 24.0,),
                SizedBox(
                  width: 110.0,
                  child: OutlinedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Information() ));
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Color(0xffFFf700), fontSize: 20),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Color(0xffFFf700), width: 2.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}