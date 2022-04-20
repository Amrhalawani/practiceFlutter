import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('first title1'),
        leading: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Sending Message"),
            ));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Login',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: emailController,
                onFieldSubmitted: (value) {
                  if (kDebugMode) {
                    print(value);
                  }
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email)),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passController,
                onFieldSubmitted: (value) {
                  if (kDebugMode) {
                    print(value);
                  }
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
              SizedBox(height: 20,)
              ,

              Container(
                color: Colors.indigo,
                child: MaterialButton(
                  height: 40.0,
                  minWidth: double.infinity,
                  onPressed: () {
                    print(emailController.text);
                    print(passController.text);
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('you Don\'t have an account?'),
                  TextButton(onPressed: (){ print('register');},
                      child: Text('Register Now', style: TextStyle(color: Colors.indigo),)
                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
