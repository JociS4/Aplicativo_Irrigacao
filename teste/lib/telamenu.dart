// import 'package:flutter/material.dart';
// import 'telaativacao.dart';
// class TelaMenu extends StatelessWidget {
//   const TelaMenu({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Tela 02 - Menu'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 // Lógica para quando o botão for pressionado
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => TelaAtivacao()
//                   ),
//                 );
//                 //print('Botão "Entrar" pressionado!');
//               },
//               child: const Text('Plantaçao 01'),
//             ),
//             ElevatedButton(
//               onPressed: (){
//                 Navigator.pop(context);
//               },
//               child: const Text('Voltar 02'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
