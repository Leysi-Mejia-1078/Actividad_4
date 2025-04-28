import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
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
              fontFamily: 'DancingScript', // Una fuente cursiva similar
              fontSize: 30,
              color: Colors.black87,
            ),
          ),
        ),
        actions: const [
          SizedBox(width: 48), // Para centrar el título
        ],
      ),
      backgroundColor: const Color(0xffcdcaca), // Body color matches AppBar
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
            height: 100,
          ), // Added SizedBox for spacing
          Center(
            child: Container(
              color: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        'https://raw.githubusercontent.com/Leysi-Mejia-1078/imageness/refs/heads/main/a1.png', // Reemplaza con la URL de la imagen izquierda
                        height: 125,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        'https://raw.githubusercontent.com/Leysi-Mejia-1078/imageness/refs/heads/main/a3.png', // Reemplaza con la URL de la imagen derecha
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        'https://raw.githubusercontent.com/Leysi-Mejia-1078/imageness/refs/heads/main/a2.png', // Reemplaza con la URL de la imagen derecha
                        height: 125,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            // Added Container for the divider
            height: 1.0, // Thickness of the line
            color: Colors.grey[400], // Color of the line
            margin: const EdgeInsets.symmetric(
                horizontal: 20.0), // Horizontal margin
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: const Text(
              'Joyería delicada\nhecha a la medida',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'SnellRoundhand', // Otra fuente cursiva
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                // Corrected onPressed
                Navigator.pushNamed(context, '/pantalla2');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff5b8c5c),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Comprar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
