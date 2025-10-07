import 'package:flutter/material.dart';

class ConservacaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ações de Conservação'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildCard(Icons.nature, 'Jardinagem'),
            _buildCard(Icons.recycling, 'Reciclagem'),
            _buildCard(Icons.energy_savings_leaf, 'Economia de Energia'),
            _buildCard(Icons.water_drop, 'Uso Consciente da Água'),
            _buildCard(Icons.clean_hands, 'Limpeza e Higiene'),
            _buildCard(Icons.shield, 'Preservação de Equipamentos'),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(IconData icone, String titulo) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      child: InkWell(
        onTap: () {
          // No futuro, pode levar a uma explicação ou formulário
          print('Selecionou $titulo');
        },
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icone, size: 50, color: Colors.green),
            SizedBox(height: 10),
            Text(
              titulo,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}