import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                  height:420,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Sign up", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                      const SizedBox(height: 10,),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                        ),
                      ),
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
                        child: ElevatedButton(onPressed: null,
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.blue),
                              padding: MaterialStateProperty.all(EdgeInsets.all(5))
                          ),
                          child: Text('SIGN UP', style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?'),
                          TextButton(onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          }, child: Text('Login', style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline,decorationColor: Colors.blue),),)
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
