import 'package:bmi/modules/bmi/bmi_calculator.dart';
import 'package:bmi/modules/register/register.dart';
import 'package:bmi/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);


  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController =TextEditingController();
  var passwordController =TextEditingController();
  var formKey =GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey ,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWRNi5lLT2K3kt901NhxrSaZ4kqceYbB2-2A&usqp=CAU'
                    )),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'BACK',
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.blueAccent,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    defaultFormField(
                      controller: emailController,
                      label: 'email address',
                      prefix: Icons.email_outlined,
                      type: TextInputType.emailAddress,
                      validator: (value)
                      {
                        if (value!.isEmpty)
                        {
                          return "email must be not empty" ;
                        }
                        return null;
                      },

                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    defaultFormField(
                      prefix: Icons.lock,
                      controller: passwordController,
                      label: 'password',
                      type: TextInputType.visiblePassword,
                      suffix:isPassword? Icons.visibility_off : Icons.visibility,
                      validator: (value){
                        if(value!.isEmpty){
                          return 'password must be not empty';
                        }
                        return null;
                      },
                      isPassword: isPassword,
                      suffixPressed: ()
                      {
                        setState(()
                        {
                          isPassword = !isPassword;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    defaultButton(
                        function: (){
                          if(formKey.currentState!.validate()){
                            print(emailController.text);
                            print(passwordController.text);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const BmiCalculator() ),
                            );
                          }
                        },
                        text: 'login',
                      isUpperCase: false,
                      radius: 16,


                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account?',

                        ),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => const SingUP() ),
                          );                        },
                            child: const Text(
                            'Register Now'))
                      ],
                    ),
                  ],
                ),
            ),
          ),
        ),
      ),
    );
  }
}
