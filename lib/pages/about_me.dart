import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        WidgetResponsivo.ehTelaPequena(context)
            ? CustomCardMacOS(
                altura: 150,
                largura: 398,
                tamanhoTexto: 25,
              )
            : CustomCardMacOS(
              tamanhoTexto: 30,
              altura: 160,
              largura: 450,
            )
      ],
    );
  }
}

