import 'package:flutter/material.dart';

class Productos extends StatefulWidget {
  const Productos({Key? key}) : super(key: key);

  @override
  _ProductosState createState() => _ProductosState();
}

class _ProductosState extends State<Productos> {
  // Lista de productos.  En una app real, esto vendría de una base de datos o API.
  final List<Map<String, dynamic>> _productos = [
    {
      'nombre': 'Collar Zafiro',
      'precio': 7000.00, // Agregado precio
      'imagen':
          'https://raw.githubusercontent.com/Leysi-Mejia-1078/imageness/refs/heads/main/a4.png', // URL de imagen
    },
    {
      'nombre': 'Aretes De Gota',
      'precio': 3000.00, // Agregado precio
      'imagen':
          'https://raw.githubusercontent.com/Leysi-Mejia-1078/imageness/refs/heads/main/a5.png', // URL de imagen
    },
    {
      'nombre': 'Anillo Zafiro',
      'precio': 5800.00, // Agregado precio
      'imagen':
          'https://raw.githubusercontent.com/Leysi-Mejia-1078/imageness/refs/heads/main/a6.png', // URL de imagen
    },
    {
      'nombre': 'Brazaletes Oro',
      'precio': 4000.00, // Agregado precio
      'imagen':
          'https://raw.githubusercontent.com/Leysi-Mejia-1078/imageness/refs/heads/main/a7.png', // URL de imagen
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffcdcaca),
        leading: IconButton(
          icon: const Icon(Icons.menu,
              color: Color(0xff5b8c5c), size: 20.0), // Increased icon size
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
      backgroundColor: const Color(0xffcdcaca),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 columnas
            crossAxisSpacing: 15.0, // Espacio entre columnas
            mainAxisSpacing: 15.0, // Espacio entre filas
            childAspectRatio:
                0.60, // Ajusta la relación de aspecto para mostrar mejor la imagen y el texto
          ),
          itemCount: _productos.length,
          itemBuilder: (context, index) {
            final producto = _productos[index];
            return Card(
              elevation: 4.0, // Agrega sombra para que se vea mejor
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0), // Bordes redondeados
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            8.0), // Bordes redondeados para la imagen
                        child: Image.network(
                          producto['imagen'],
                          fit:
                              BoxFit.cover, // La imagen se ajusta al contenedor
                          width: double.infinity,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      producto['nombre'],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      '\$${producto['precio'].toStringAsFixed(2)}', // Muestra el precio con 2 decimales
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    ElevatedButton(
                      onPressed: () {
                        // Lógica para añadir al carrito
                        print('Añadir al carrito: ${producto['nombre']}');
                        // Puedes mostrar un mensaje, navegar a otra pantalla, etc.
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff5b8c5c), // Color del botón
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text('Añadir al carrito'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        // Añadido BottomNavigationBar
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // Lógica para cerrar sesión
            print('Cerrar sesión');
            //  navegar a la pantalla de inicio de sesión, por ejemplo.
            Navigator.pushNamed(
                context, '/'); // Reemplaza '/' con tu ruta de inicio de sesión
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff5b8c5c), // Color de cerrar sesión
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: const Text(
            'Cerrar sesión',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
