import 'package:flutter/material.dart';
import '../styles/app_styles.dart';
import 'menu_layout.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool obscurePassword = true;

  void login() {

    if(formKey.currentState!.validate()){

      Navigator.pushReplacementNamed(context, '/menu');
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),

            child: Form(
              key: formKey,

              child: Column(
                children: [

                  const SizedBox(height: 60),

                  Container(
                    height: 120,
                    width: 120,

                    decoration: BoxDecoration(
                      color: AppStyles.primaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    "Health Tracker",
                    style: AppStyles.titleStyle,
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Monitorea tu salud diariamente",
                    style: AppStyles.subtitleStyle,
                  ),

                  const SizedBox(height: 40),

                  TextFormField(
                    controller: emailController,

                    decoration: InputDecoration(
                      labelText: "Correo electrónico",
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),

                    validator: (value){

                      if(value == null || value.isEmpty){
                        return "Ingrese un correo";
                      }

                      if(!value.contains("@")){
                        return "Correo inválido";
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: 20),

                  TextFormField(
                    controller: passwordController,
                    obscureText: obscurePassword,

                    decoration: InputDecoration(
                      labelText: "Contraseña",

                      prefixIcon: const Icon(Icons.lock),

                      suffixIcon: IconButton(
                        icon: Icon(
                          obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: (){
                          setState(() {
                            obscurePassword = !obscurePassword;
                          });
                        },
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),

                    validator: (value){

                      if(value == null || value.isEmpty){
                        return "Ingrese una contraseña";
                      }

                      if(value.length < 8){
                        return "Mínimo 8 caracteres";
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    height: 55,

                    child: ElevatedButton(
                      onPressed: login,

                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppStyles.primaryColor,
                        foregroundColor: Colors.white,
                      ),

                      child: const Text(
                        "Iniciar Sesión",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  TextButton(
                    onPressed: () {},

                    child: const Text(
                      "¿Olvidaste tu contraseña?",
                    ),
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