import 'package:flutter/material.dart'; //Permite o uso dos widgets e funcionalidades
import 'solicitacao_page.dart'; //Linka o botão continuar com a próxima tela

class HomePage extends StatelessWidget { /*Aqui que "criamos a tela de identificação.
                                        StatelessWidget mostra os campos e botão, 
                                        mudando se o usuário digite algo ou clique no botão.*/

  final TextEditingController nomeController = TextEditingController(); //Permite capturar, ler e manipular o texto do TextField
  final TextEditingController registroController = TextEditingController(); /*Cria a caixinha e 
                                                                          pega o nome digitado */

  @override /*liga a HomePage ao que aparece no app */
  Widget build(BuildContext context) { /* cria e retorna a interface visual da tela*/
    return Scaffold( /**É tipo o esqueleto 
    ele cria a barra de cima, o espaço do corpo e organiza todos os botões e campos. */
      appBar: AppBar(/*É a barra de cima da tela, onde colocamos o título do aplicativo */
        title: const Text('Projeto Casa Civil'),
        centerTitle: true,
        backgroundColor: Colors.blue[900], // Azul escuro na AppBar
      ),
      body: Padding(/**O padding impede que o conteúdo fique colado na borda da tela */
        padding: const EdgeInsets.all(24.0),
        child: Column( /**Organização da pilha vertical, em coluna */
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ /**Como é "filho", tudo ficará abaixo.
          Obs se usa  chave porque é uma lista */
            const Text( /**Torna a "Identificação" como uma constante */
              'IDENTIFICAÇÃO',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            TextField( /**permite o texto na tela. */
              controller: nomeController, /**conecta o campo de texto à variável que armazena o valor digitado. */
              decoration: InputDecoration(
                labelText: 'Nome completo',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: const Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: registroController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(/**Relativo a formatação do botão "numero de registro" */
                labelText: 'Número de registro',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: const Icon(Icons.badge), /**É o ícone do crachá */
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton( /**Estética do botão */
              onPressed: () { /**define o que acontece quando o botão é pressionado */
                Navigator.push( /**abre uma nova tela */
                  context, /**Informa qual a tela deve ser iniciada */
                  MaterialPageRoute(builder: (context) => const SolicitacaoPage()),/**relativo a navegação */
                );
              },
              style: ElevatedButton.styleFrom(/**Relativo ao botão "continuar" */
                backgroundColor: Colors.blue[900], // Fundo azul escuro
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Continuar',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Letras brancas
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}