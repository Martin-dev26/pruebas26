import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: const DiagramacionScreen(),
    );
  }
}

class DiagramacionScreen extends StatelessWidget {
  const DiagramacionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Extraemos la paleta de colores activa según el tema
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Instagram'),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container 1 -> Rojo primario del tema
            Container(
              height: 450,
              width: double.infinity,
              color: colorScheme.primary,
              child: Center(
                child: Text(
                  'Image 1',
                  style: TextStyle(
                    color: colorScheme.onPrimary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Container 2 -> Contenedor primario suavizado del tema
            Container(
              height: 150,
              width: double.infinity,
              color: colorScheme.primaryContainer,
              child: Center(
                child: Text(
                  'Text',
                  style: TextStyle(
                    color: colorScheme.onPrimaryContainer,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Container 3 -> Color terciario del tema (Azul Viking)
            Container(
              height: 450,
              width: double.infinity,
              color: colorScheme.primary,
              child: Center(
                child: Text(
                  'Image 2',
                  style: TextStyle(
                    color: colorScheme.onPrimary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
