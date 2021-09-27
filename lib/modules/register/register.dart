import 'package:bmi/modules/bmi/bmi_calculator.dart';
import 'package:bmi/modules/login/login_screen.dart';
import 'package:bmi/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SingUP extends StatefulWidget {
  const SingUP({Key? key}) : super(key: key);

  @override
  State<SingUP> createState() => _SingUPState();
}

class _SingUPState extends State<SingUP> {
  bool isPassword = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),

      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Let\'t Get Started !',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Create an account',
                ),
                const SizedBox(
                  height: 25,
                ),

                defaultFormField(
                  label: 'Full Name',
                  validator: (value){
                    if(value!.isEmpty){
                      return 'password must be not empty';
                    }
                    return null;
                  },
                  type: TextInputType.text,
                  prefix: Icons.add,
                ),
                const SizedBox(height: 15,),
                defaultFormField(type: TextInputType.emailAddress,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'password must be not empty';
                      }
                      return null;
                    },
                    label: 'Email',
                    prefix: Icons.email_outlined),
                const SizedBox(height: 15,),
                defaultFormField(type: TextInputType.phone,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'password must be not empty';
                      }
                      return null;
                    },
                    label: 'phone',
                    prefix: Icons.phone_android_outlined),
                const SizedBox(height: 15,),
                defaultFormField(
                  prefix: Icons.lock,
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
                const SizedBox(height: 15,),
                defaultFormField(
                  prefix: Icons.lock,
                  label: 'Re password',
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
                ),                const SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: MaterialButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BmiCalculator()),);
                  },
                    child: const Text(
                      'CREATE',
                      style: TextStyle(
                          color:Colors.white,
                          fontSize: 30
                      ),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have  account?',

                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()),);
                    }, child: const Text(''
                        'login here'))
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
