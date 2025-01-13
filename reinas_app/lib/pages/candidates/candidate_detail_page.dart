import 'package:flutter/material.dart';

class CandidateDetailPage extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String department;
  final String birthday;
  final String instagram;
  final String career;
  final String description;

  const CandidateDetailPage({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.department,
    required this.birthday,
    required this.instagram,
    required this.career,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen grande de la candidata en la parte superior
            Image.network(
              imageUrl,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),  // Reducir espaciado aquí

            // Información de la candidata
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),  // Reducir padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nombre y Departamento (con Wrap para evitar overflow)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center, // Alinear íconos y texto
                    children: [
                      Icon(Icons.account_circle, color: Colors.black54, size: 30), // Reducir tamaño del ícono
                      SizedBox(width: 4), // Reducir espaciado horizontal entre ícono y texto
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Departamento de la candidata
                            Text(
                              department,
                              style: TextStyle(
                                fontSize: 16,  // Reducir tamaño del texto
                                fontWeight: FontWeight.bold,
                                color: Colors.brown,
                              ),
                            ),
                            // Nombre de la candidata
                            Text(
                              name,
                              style: TextStyle(
                                fontSize: 20, // Reducir tamaño del texto del nombre
                                fontWeight: FontWeight.bold,
                              ),
                              softWrap: true, // Permitir que el texto baje a la siguiente línea
                              maxLines: 2, // Limitar a 2 líneas si es muy largo
                              overflow: TextOverflow.ellipsis, // Muestra puntos suspensivos si es muy largo
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8), // Reducir espaciado entre filas

                  // Detalles compactados en columnas
                  Row(
                    children: [
                      // Columna para Estatura y Ojos
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InfoItem(icon: Icons.height, label: 'Estatura', value: '1.65m'),
                            InfoItem(icon: Icons.remove_red_eye, label: 'Ojos', value: 'Cafés'),
                          ],
                        ),
                      ),
                      // Columna para Cabello y Logros
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InfoItem(icon: Icons.person, label: 'Cabello', value: 'Castaño'),
                            InfoItem(icon: Icons.emoji_events, label: 'Logros', value: '1er lugar matemáticas'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Nueva fila de información
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InfoItem(icon: Icons.book, label: 'Hobbies', value: 'Leer, nadar, hockey'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InfoItem(icon: Icons.language, label: 'Idiomas', value: 'Inglés, Italiano, Francés'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),  // Reducir espaciado

                  // Descripción de la candidata
                  Text(
                    '¡Hola! Soy $name, estudiante de tercer año en la Universidad de las Fuerzas Armadas ESPE. Soy una persona comprometida con el servicio a la comunidad y el cuidado del medio ambiente, y he liderado varias iniciativas sociales y ecológicas en la universidad.',
                    style: TextStyle(fontSize: 14),  // Reducir tamaño del texto para más compactación
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Creo en el poder transformador de la educación y me esfuerzo por ser un ejemplo positivo para mis compañeros.',
                    style: TextStyle(fontSize: 14),  // Reducir tamaño del texto
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Mi candidatura para Reina Institucional es una oportunidad para representar a la universidad con orgullo y responsabilidad.',
                    style: TextStyle(fontSize: 14),  // Reducir tamaño del texto
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget personalizado para mostrar la información de los detalles
class InfoItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.black54, size: 20), // Reducir el tamaño del ícono
        SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black54), // Texto más pequeño
            ),
            Text(
              value,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
