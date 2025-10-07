import 'package:flutter/material.dart';
import 'manutencao_page.dart';
import 'conservacao_page.dart';
import 'denuncia_page.dart';
/*Basicamente com essas importações, trazemos as ferramentas do flutter e já relacionamentos
 as outras telas que poderão ser utilizadas*/
class SolicitacaoPage extends StatelessWidget {
  const SolicitacaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projeto Casa Civil'),
        centerTitle: true,
        backgroundColor: Colors.blue[900], // Azul escuro
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Selecione uma opção:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            _buildButton(
              context,
              'Manutenção',
              Icons.build,
              ManutencaoPage(),
            ),
            const SizedBox(height: 20),
            _buildButton(
              context,
              'Conservação',
              Icons.eco,
              ConservacaoPage(),
            ),
            const SizedBox(height: 20),
            _buildButton(
              context,
              'Denúncia',
              Icons.warning,
              DenunciaPage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(
      BuildContext context, String titulo, IconData icone, Widget destino) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destino),
        );
      },
      icon: Icon(icone, size: 30, color: Colors.white),
      label: Text(
        titulo,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white, // Letras brancas
        ),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 60),
        backgroundColor: Colors.blue[900], // Azul escuro
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}