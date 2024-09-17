import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscurePassword = true;
  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height:350,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Login", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                  const SizedBox(height: 10,),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextField(
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                      ),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: _togglePasswordVisibility,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        padding: MaterialStateProperty.all(EdgeInsets.all(5))
                      ),
                      child: Text('LOGIN', style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not Registered Yet?'),
                      SizedBox(width: 2,),
                      TextButton(onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      }, child: Text('Create an account', style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline,decorationColor: Colors.blue),),)
                    ],
                  )
                ],
              )
            ),
          ],
        )
      ),
    );
  }
}
