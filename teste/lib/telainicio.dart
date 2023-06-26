import 'package:flutter/material.dart';
import 'telaativacao.dart';
class TelaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 01 - Tela de Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Olá, seja bem-vindo!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Lógica para quando o botão for pressionado
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TelaAtivacao()
                  ),
                );
                //print('Botão "Entrar" pressionado!');
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20)
              ),
              child: Text(
                'Entrar',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

