import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TelaAtivacao extends StatelessWidget {
  const TelaAtivacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Bem Vindo'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SizedBox(height: 20),
          Container(
            width: 350,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '  Última Irrigação',
                    //compost_outlined
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      height: 2,
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 16),
                    Icon(
                      Icons.date_range,
                      size: 75,
                    ),
                    Text(
                      DateFormat('dd/MM').format(DateTime.now()),
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 16),
                    Icon(
                      Icons.access_time,
                      size: 75,
                    ),
                    Text(
                      DateFormat('HH:mm').format(DateTime.now()),
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: (){
              //Navigator.pop(context);
              print('Clicou no botão');
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF00897B),
            ),
            child: Text(
              'Duração da Irrigação',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: (){
              //Navigator.pop(context)
              print('Botão funcionando');
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF26C6DA),
            ),
            child: Text(
              'Iniciar a Irrigação',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 350,
            height: 30,
            child: Row(
              children: [
                SizedBox(width: 8),
                Icon(
                  Icons.chevron_right,
                  size: 40,
                ),
                Text(
                  'Destaques',
                  style: TextStyle(
                    height: 1.6,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 350,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.dangerous_outlined,
                  size: 55,
                  color: Colors.white,
                ),
                Text(
                  'Perigos de uma \nIrrigação Exagerada',
                  style: TextStyle(
                    height: 1,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                //SizedBox(width: 10),
                TextButton(
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: Color(0xFFBBDEFB),
                      title: const Text(
                        'Importante',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                      content: const Text(
                        '''Quando uma planta é regada em excesso, suas raízes ficam constantemente encharcadas, resultando em falta de oxigênio no solo. Isso pode levar ao apodrecimento das raízes e ao desenvolvimento de condições favoráveis para o crescimento de fungos e doenças. Além disso, o excesso de água pode lavar nutrientes vitais do solo, tornando-os inacessíveis para as plantas.''',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text(
                            'Voltar',
                            style: TextStyle(
                              color: Colors.blue
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  child: const Text(
                      'Saiba Mais',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        height: 6,
                        fontSize: 10,
                        color: Colors.white
                      ),
                    ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: 350,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF00E676),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.check_circle,
                  size: 55,
                  color: Colors.white,
                ),
                Text(
                  'Benefícios de uma \nBoa Irrigação',
                  style: TextStyle(
                    height: 1,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 5),
                TextButton(
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: Color(0xFFBBDEFB),
                      title: const Text(
                        'Importante',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                      content: const Text(
                        '''Uma boa irrigação é essencial para o crescimento saudável e o bom desenvolvimento das plantas. Proporcionar a quantidade certa de água no momento adequado pode trazer diversos benefícios para o jardim, horta ou qualquer outra área verde. \n Quando as plantas não recebem água suficiente, elas podem sofrer estresse hídrico, o que leva ao murchamento, amarelamento e até à morte das folhas. Uma irrigação adequada evita esse estresse, mantendo as plantas hidratadas e saudáveis. ''',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text(
                            'Voltar',
                            style: TextStyle(
                                color: Colors.blue
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  child: const Text(
                    'Saiba Mais',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        height: 6,
                        fontSize: 10,
                        color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
