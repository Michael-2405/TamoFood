import 'package:flutter/material.dart';
import 'package:tamofoodapp/components/my_button.dart';
import 'package:tamofoodapp/components/my_textfield.dart';
import 'package:tamofoodapp/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // controladores
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // metodo para loguearse
  void login() {
    // navegar a la pagina de inicia
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),

            // message, app slogan
            Text(
              'Food Delivery App',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),

            // email textfield
            MyTextfield(
              controller: emailController,
              hintText: 'Correo',
              obscureText: false,
            ),

            const SizedBox(height: 10),

            // password textfield
            MyTextfield(
              controller: passwordController,
              hintText: 'Contraseña',
              obscureText: true,
            ),

            const SizedBox(height: 10),

            // boton de registrarse
            MyButton(text: 'Iniciar sesión', onTap: login),

            const SizedBox(height: 25),

            // not a member? registrate ahora
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '¿No eres un miembro?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Registrate ahora',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
