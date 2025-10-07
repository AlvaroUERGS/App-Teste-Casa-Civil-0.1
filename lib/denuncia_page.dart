import 'package:flutter/material.dart';

class DenunciaPage extends StatelessWidget {
  final TextEditingController denunciaController = TextEditingController();

  DenunciaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Denúncia'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Descreva o problema identificado:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              controller: denunciaController,
              maxLines: 6,
              decoration: InputDecoration(
                hintText: 'Ex: Rachadura na parede do setor A...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 24),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  final texto = denunciaController.text;
                  if (texto.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Por favor, descreva a denúncia.')),
                    );
                    return;
                  }
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Denúncia enviada com sucesso!')),
                  );
                  denunciaController.clear();
                },
                icon: Icon(Icons.send),
                label: Text('Enviar'),
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}