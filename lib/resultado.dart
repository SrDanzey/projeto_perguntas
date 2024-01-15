import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarFormulario;

  const Resultado(this.pontuacao, this.reiniciarFormulario, {super.key});

  String get fraseResultado {
    if (pontuacao < 13) return 'Parabéns!';
    if (pontuacao < 20) return 'Tu é bom!';
    if (pontuacao < 30) return 'Impressinanete!';
    return 'Nível Jedi!';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: reiniciarFormulario,
          child: const Text(
            'Reiniciar',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
