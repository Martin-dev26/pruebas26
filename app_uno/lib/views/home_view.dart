import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colors.surface,
      appBar: AppBar(
        backgroundColor: colors.surface,
        elevation: 0,
        title: Text(
          'Haystack News',
          style: GoogleFonts.inter(
            color: colors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(color: colors.primary),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Últimas Noticias',
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildNewsCard(
                    title: 'Trump desata una crisis total en Europa y Rusia empieza a negociar',
                    category: 'INTERNACIONAL',
                    imagePath: 'assets/images/noticia1.png',
                  ),
                  const SizedBox(height: 12),
                  _buildNewsCard(
                    title: 'Rusia advierte a Israel: el mundo está al borde de una catástrofe nuclear',
                    category: 'ÚLTIMA HORA',
                    imagePath: 'assets/images/noticia2.png',
                  ),
                  const SizedBox(height: 12),
                  _buildNewsCard(
                    title:
                        'Noticias de Política y actualidad en Chile y el mundo',
                    category: 'POLÍTICA',
                    imagePath: 'assets/images/noticia3.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNewsCard({
    required String title,
    required String category,
    required String imagePath,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(15),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Miniatura de la imagen de la noticia
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: 90,
              height: 70,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 90,
                  height: 70,
                  color: Colors.white24,
                  child: const Icon(Icons.article, color: Colors.white54),
                );
              },
            ),
          ),
          const SizedBox(width: 12),
          // Textos de la noticia
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.toUpperCase(),
                  style: GoogleFonts.inter(
                    color: const Color(0xFFE43D2F),
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
