import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testapp/aux/Constantes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Medidas(context);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(
                    "assets/wallpaper.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: fondoborroso(),
            ),
            SingleChildScrollView(
              child: Container(
                height: Medidas.heigth(100),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    Expanded(
                      flex: 8,
                      child: Center(
                        child: containerConLosTextos(context),
                      ),
                    ),
                    Expanded(child: Container(child: textoDeAbajo(context)))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textoDeAbajo(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 40,
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '¿Aún no tienes una cuenta?',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
              SizedBox(
                width: 8,
              ),
              GestureDetector(
                onTap: () {
                  print('crear cuenta');
                  FocusScope.of(context).unfocus();
                },
                child: Text(
                  'Crea Una',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        Text(
          'Danny Chavez',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w300, fontSize: 12),
        ),
      ],
    );
  }

  Widget textField(
      {String? hintText,
      IconData? icono,
      bool obscureText = false,
      TextInputType textInputTipe = TextInputType.text}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(34),
      ),
      width: double.infinity,
      child: TextField(
        keyboardType: textInputTipe,
        obscureText: obscureText,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.justify,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            prefixIcon: Icon(
              icono,
              color: Colors.white,
            ),
            border: InputBorder.none),
      ),
    );
  }

  Widget containerConLosTextos(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: Medidas.heigth(70),
      width: Medidas.width(60),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "¡Bienvenido!",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          Text(
            "Inicia Sesión",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: Medidas.heigth(5),
          ),
          textField(
              hintText: 'E-Mail',
              icono: Icons.email_outlined,
              textInputTipe: TextInputType.emailAddress),
          SizedBox(
            height: Medidas.heigth(5),
          ),
          textField(
              hintText: 'Contraseña',
              icono: Icons.lock_open_outlined,
              obscureText: true),
          SizedBox(
            height: Medidas.heigth(4),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: TextButton(
              child: Text(
                "ENTRAR",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                print('boton entrar');
                FocusScope.of(context).unfocus();
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'O Inicia Sesión con:',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: Medidas.heigth(2)),
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: Medidas.width(10),
                    width: Medidas.width(10),
                    child: IconButton(
                      padding: EdgeInsets.all(0),
                      icon: Image(
                        image: AssetImage('assets/fb-128.png'),
                      ),
                      onPressed: () {
                        print('iniciar con FaceBook');
                        FocusScope.of(context).unfocus();
                      },
                    )),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: Medidas.width(9),
                  width: Medidas.width(10),
                  child: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Image(
                      image: AssetImage('assets/g-144.png'),
                    ),
                    onPressed: () {
                      print('iniciar con Google');
                      FocusScope.of(context).unfocus();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: SizedBox()),
          Text(
            "¿Olvidaste tu contraseña?",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: Medidas.heigth(1.9),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('recuperar contraseña');
              FocusScope.of(context).unfocus();
            },
            child: Text(
              "recupérala aquí",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: Medidas.heigth(2),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget fondoborroso() {
    return Container(
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.passthrough,
          children: [
            ClipRRect(
              child: BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFF422C),
                          Color(0xFFFF9003),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.25, 0.90],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12),
                  height: Medidas.heigth(80),
                  width: Medidas.width(70),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
