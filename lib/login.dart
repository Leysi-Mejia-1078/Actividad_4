import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffcdcaca),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Color(0xff5b8c5c),
            size: 40.0,
          ), // Increased icon size
          onPressed: () {
            // Acción del menú
          },
        ),
        title: const Center(
          child: Text(
            'Aurora',
            style: TextStyle(
              fontFamily: 'DancingScript',
              fontSize: 30,
              color: Colors.black87,
            ),
          ),
        ),
        actions: const [
          SizedBox(width: 48),
        ],
      ),
      backgroundColor: const Color(0xffcdcaca), // Background color matched
      body: Column(
        children: <Widget>[
          Container(
            // Added Container for the line
            height: 3.0, // Thickness of the line
            color: Color(0xff363636), // Color of the line
            margin: const EdgeInsets.symmetric(
                horizontal: 0.0), // Horizontal margin
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff000000),
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: const Color(0xff000000),
                      child: const Icon(
                        Icons.person_outline,
                        size: 50,
                        color: Color(0xddffffff),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Correo',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Correo',
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Contraseña',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Contraseña',
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/pantalla4');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff5b8c5c),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        textStyle: const TextStyle(fontSize: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Text(
                        'Iniciar Sesión',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      // Divider Line
                      height: 1.0,
                      color: Colors.grey[400],
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/pantalla3');
                      },
                      child: const Text(
                        '¿No tienes cuenta? Registrate',
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
