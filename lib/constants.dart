import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

//Cor primária do aplicativo
final corPrimaria = Color(0xFF141414);
final corCardMacOS = Color(0xFF131927);

//Widget para reconhecer tamanho da tela
class WidgetResponsivo extends StatelessWidget {
  final Widget telaGrande;
  final Widget telaMedia;
  final Widget telaPequena;

  const WidgetResponsivo(
      {Key key,
      @required this.telaGrande,
      this.telaMedia,
      this.telaPequena})
      : super(key: key);

  static bool ehTelaPequena(BuildContext context) {
    return MediaQuery.of(context).size.width < 590;
  }

  static bool ehTelaGrande(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool ehTelaMedia(BuildContext context) {
    return MediaQuery.of(context).size.width >= 590 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return telaGrande;
        } else if (constraints.maxWidth <= 1200 &&
            constraints.maxWidth >= 800) {
          return telaMedia ?? telaGrande;
        } else {
          return telaPequena ?? telaGrande;
        }
      },
    );
  }
}

//Card do terminal MacOS
class CustomCardMacOS extends StatelessWidget {

  //para tela grande colocar altura = 160 e largura = 450
  //para tela pequena colocar altura = 150 e largura = 375
  final double altura;
  final double largura;
  final double tamanhoTexto;
  const CustomCardMacOS({
    Key key, this.altura, this.largura, this.tamanhoTexto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: altura,
        width: largura,
        color: corCardMacOS,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: altura/45, left: altura/45),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red[900]),
                    width: (altura/11.25),
                    height: (altura/11.25),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: altura/45, left: altura/45),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.yellow[600]),
                    width: (altura/11.25),
                    height: (altura/11.25),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: altura/45, left: altura/45),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green[700]),
                    width: (altura/11.25),
                    height: (altura/11.25),
                  ),
                )
              ],
            ),
            SizedBox(height: altura - (altura/45) - (altura/8) - tamanhoTexto),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: altura/22.5),
                    child: Row(
                      children: [
                        Text("\$ ", style: GoogleFonts.anonymousPro(color: Colors.white, fontSize: tamanhoTexto),),
                        AnimatedTextKit(
                          repeatForever: true,
                          pause: Duration(milliseconds: 1500),
                          animatedTexts: [
                            TypewriterAnimatedText("cd EduMelato",
                                speed: Duration(milliseconds: 100),
                                textStyle: GoogleFonts.anonymousPro(
                                    color: Colors.white, fontSize: tamanhoTexto)),
                            TypewriterAnimatedText("flutter run --release",
                                speed: Duration(milliseconds: 110),
                                textStyle: GoogleFonts.anonymousPro(
                                    color: Colors.white, fontSize: tamanhoTexto))
                          ],
                        ),
                      ],
                    )))
          ],
        ),
      );
  }
}
