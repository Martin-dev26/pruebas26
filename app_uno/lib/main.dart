import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MiPantallaPrincipal(),
    );
  }
}

// Usamos un StatefulWidget para que la barra inferior pueda cambiar de pestaña dinámicamente
class MiPantallaPrincipal extends StatefulWidget {
  const MiPantallaPrincipal({super.key});

  @override
  State<MiPantallaPrincipal> createState() => _MiPantallaPrincipalState();
}

class _MiPantallaPrincipalState extends State<MiPantallaPrincipal> {
  // Índice para controlar qué pestaña está seleccionada
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 82, 147, 1),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {},
        ),
        title: const Text('Clase uno', style: TextStyle(color: Colors.white)),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem<String>(
                value: 'perfil',
                child: Text('Perfil'),
              ),
              const PopupMenuItem<String>(
                value: 'configuracion',
                child: Text('Configuración'),
              ),
            ],
          ),
        ],
      ),
      // BODY: Usamos una Column para organizar elementos verticalmente
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bienvenido a mi App',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12), // Espacio separador
            Text('Estás en la pestaña índice: $_selectedIndex'),
          ],
        ),
      ),
      // BOTTOM NAVIGATION BAR: La barra inferior de la clase
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Mensajes'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
