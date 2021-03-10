import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/pages/about_me.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: WidgetResponsivo.ehTelaPequena(context)
            ? AppBar(
                backgroundColor: corPrimaria,
                shadowColor: Colors.white30,
                title: Text(
                  "Eduardo Melato",
                  style: GoogleFonts.lato(),
                ),
                centerTitle: true,
              )
            : PreferredSize(
        preferredSize: Size(size.width, 1000),
        child: Container(
          color: corPrimaria,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Text('Eduardo Melato', style: GoogleFonts.lato(color: Colors.white, fontSize: 24)),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: InkWell(
                  onTap: () {},
                  child: Text(
                    'Sobre Mim', style: GoogleFonts.lato(color: Colors.white, fontSize: 20)
                  ),
                ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: InkWell(
                  onTap: () {},
                  child: Text(
                    'GitHub', style: GoogleFonts.lato(color: Colors.white, fontSize: 20)
                  ),
                ),
                      ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 20),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Contato', style: GoogleFonts.lato(color: Colors.white, fontSize: 20)
                    ),
                  ),
                ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/background.jpg'),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: size.height,
              width: double.infinity,
              color: Colors.black.withOpacity(0.6),
            ),
            AboutMePage()
          ],
        ));
  }
}
