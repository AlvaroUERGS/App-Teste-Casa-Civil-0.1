import 'package:flutter/material.dart';

class ManutencaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Serviços de Manutenção'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildServicoCard(Icons.computer, 'Computadores'),
            _buildServicoCard(Icons.format_paint, 'Pintura'),
            _buildServicoCard(Icons.handyman, 'Conserto'),
            _buildServicoCard(Icons.water_damage, 'Hidráulica'),
            _buildServicoCard(Icons.electrical_services, 'Elétrica'),
            _buildServicoCard(Icons.cleaning_services, 'Limpeza'),
          ],
        ),
      ),
    );
  }

  Widget _buildServicoCard(IconData icone, String titulo) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      child: InkWell(
        onTap: () {
          // No futuro: abrir detalhes ou formulário
          print('Clicou em $titulo');
        },
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icone, size: 50, color: Colors.blue),
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