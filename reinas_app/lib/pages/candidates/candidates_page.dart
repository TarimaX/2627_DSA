import 'package:flutter/material.dart';
import '/navbar/navigation_bar_bloc.dart';  // Importa NavigationBarStates
import '/bloc.navigation_bloc/navigation_bloc.dart'; // Importa NavigationStates
import 'candidate_detail_page.dart'; // Importa la página de detalles

class CandidatesPage extends StatelessWidget implements NavigationStates, NavigationBarStates { // Implementa ambas interfaces
  final List<Map<String, String>> candidates = [
    {
      'name': 'Liz Scarlet Fuertes Ortega',
      'image': 'https://via.placeholder.com/150',
      'department': 'Departamento de Ciencias de la Energía y la Mecánica',
      'birthday': '04-10-1999',
      'instagram': 'Liz_Scarlet04',
      'career': 'Ingeniera en Mecatrónica',
      'description': '¡Hola! Soy Liz Scarlet Fuertes Ortega...'
    },
    // Agrega más candidatas aquí
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Dos columnas
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.7, // Más espacio vertical para evitar desbordamiento
          ),
          itemCount: candidates.length,
          itemBuilder: (context, index) {
            final candidate = candidates[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CandidateDetailPage(
                      name: candidate['name']!,
                      imageUrl: candidate['image']!,
                      department: candidate['department']!,
                      birthday: candidate['birthday']!,
                      instagram: candidate['instagram']!,
                      career: candidate['career']!,
                      description: candidate['description']!,
                    ),
                  ),
                );
              },
              child: CandidateCard(
                name: candidate['name']!,
                imageUrl: candidate['image']!,
              ),
            );
          },
        ),
      ),
    );
  }
}

// Widget personalizado para la tarjeta de cada candidata
class CandidateCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  const CandidateCard({Key? key, required this.name, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen de la candidata
            ClipOval(
              child: Image.network(imageUrl, width: 100, height: 100, fit: BoxFit.cover),
            ),
            SizedBox(height: 10),
            // Ajuste del nombre para que no desborde
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2, // Limitar a 2 líneas
              overflow: TextOverflow.ellipsis, // Mostrar puntos suspensivos si es muy largo
              softWrap: true, // Permitir que se ajuste a varias líneas si es necesario
            ),
          ],
        ),
      ),
    );
  }
}
