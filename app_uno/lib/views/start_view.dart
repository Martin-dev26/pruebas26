import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_uno/views/login_register_view.dart'; // Importa tu vista de login

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colors.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Haystack news',
                style: GoogleFonts.inter(
                  color: colors.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                '¿Ready to get informed...?',
                style: GoogleFonts.inter(
                  color: colors.primary.withAlpha(200),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 48),
              // Tu logo oficial
              Image.asset(
                'assets/images/unnamed.png',
                width: 120,
                height: 120,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.article, size: 80, color: colors.primary);
                },
              ),
              const SizedBox(height: 64),

              // Botón de "Comenzar" para navegar a la siguiente pantalla
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    // Navega hacia la vista de Login/Register usando Navigator.push
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginRegisterView(),
                      ),
                    );
                  },
                  child: Text(
                    'Comenzar',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
