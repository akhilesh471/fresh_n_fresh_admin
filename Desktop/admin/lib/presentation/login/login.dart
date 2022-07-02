import 'package:admin/presentation/users/user_management.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromRGBO(46, 155, 225, 1),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: height * 0.15,
              ),
              loginText('Welcome to', 17, 0),
              sizedbox(height * 0.03),
              loginText('Fresh N Fresh', 25, 5),
              sizedbox(height * 0.03),
              loginText('Please login to continue', 17, 0),
              sizedbox(height * 0.07),
              textBox(width, 'Email', emailController),
              sizedbox(height * 0.03),
              textBox(width, 'Password', passwordController),
              sizedbox(height * 0.03),
              SizedBox(
                width: width * 0.97,
                height: height * 0.07,
                child: ElevatedButton(
                    onPressed: () {
                      // context.read<AuthenticationBloc>().add(
                      //     AuthenticationEvent.authenticate(
                      //         email: emailController.text.trim(),
                      //         password: passwordController.text.trim(),));
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 5,
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              sizedbox(height * 0.02),
              loginText('Forgot Password?', 15, 0),
              IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return const UserManagement();
                    }));
                  },
                  icon: const Icon(Icons.arrow_forward)),
            ]),
          ),
        ),
      )),
    );
  }

  Widget textBox(double width, String text, TextEditingController controller) {
    return SizedBox(
      width: width,
      child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            fillColor: const Color.fromRGBO(150, 205, 240, 1),
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(30)),
            focusedBorder: OutlineInputBorder(
                borderSide: new BorderSide(width: 2, color: Colors.black),
                borderRadius: BorderRadius.circular(30)),
            hintText: text,
            hintStyle: const TextStyle(
                color: Color.fromRGBO(
                  109,
                  150,
                  170,
                  1,
                ),
                fontWeight: FontWeight.bold),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          )),
    );
  }

  SizedBox sizedbox(double height) {
    return SizedBox(
      height: height,
    );
  }

  Text loginText(String text, double size, double space) {
    return Text(
      text,
      style: TextStyle(
          letterSpacing: space,
          fontSize: size,
          color: const Color.fromRGBO(255, 255, 255, 0.8),
          fontWeight: FontWeight.bold,
          shadows: const [
            Shadow(
              blurRadius: 5.0,
              color: Color.fromARGB(255, 89, 88, 88),
              offset: Offset(2.0, 2.0),
            ),
          ]),
    );
  }
}
