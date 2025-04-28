import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  const Registro({Key? key}) : super(key: key);

  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffcdcaca),
        leading: IconButton(
          icon: const Icon(Icons.menu,
              color: Color(0xff5b8c5c), size: 40.0), // Increased icon size
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
          SizedBox(width: 48), // Para centrar el título
        ],
      ),
      backgroundColor: const Color(0xffcdcaca),
      body: Center(
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
                // Se eliminó el CircleAvatar
                Text(
                  // Se agregó un Text Widget en su lugar, con estilo aumentado
                  "Registro",
                  style: TextStyle(
                    fontSize:
                        30, // Tamaño de fuente aumentado para que coincida con la imagen
                    fontWeight: FontWeight
                        .bold, // Añadido para que se vea más como en la imagen.
                    color: const Color(0xff000000), //Color de letra negro
                  ),
                  textAlign: TextAlign.center, //Texto centrado
                ),
                const SizedBox(height: 20),
                const Text(
                  'Nombre',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Nombre',
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Apellidos',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Apellidos',
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Direccion',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Direccion',
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Telefono',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Telefono',
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Correo',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Correo',
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Contraseña',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Contraseña',
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff5b8c5c),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {
                    // Acción para registrarse
                    Navigator.pushNamed(context, '/pantalla2');
                  },
                  child: const Text(
                    'Registrarse',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
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
