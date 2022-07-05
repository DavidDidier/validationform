import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String nameRoute = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _createFondo(context),
          _logueoForm(context),
        ],
      ),
    );
  }

  Widget _logueoForm(context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
              child: Container(
            height: 190.0,
          )),
          Container(
            width: size.width * 0.80,
            margin: const EdgeInsets.symmetric(vertical: 35.0),
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 3.0,
                      offset: Offset(0.0, 5.0),
                      spreadRadius: 4.0)
                ]),
            child: Column(
              children: <Widget>[
                const Text('Ingresar',
                    style: TextStyle(
                      fontSize: 25.0,
                    )),
                const SizedBox(
                  height: 30.0,
                ),
                _crearEmail(),
                const SizedBox(
                  height: 25.0,
                ),
                _crearPassword(),
                const SizedBox(
                  height: 25.0,
                ),
                _crearBoton()
              ],
            ),
          ),
          const Text('¿Olvidaste tu contraseña?'),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }

  Widget _crearEmail() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            icon: Icon(Icons.alternate_email, color: Colors.purpleAccent),
            hintText: 'example@email.com',
            labelText: 'Email'),
      ),
    );
  }

  Widget _crearPassword() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const TextField(
        obscureText: true,
        decoration: InputDecoration(
            icon: Icon(Icons.lock, color: Colors.purpleAccent),
            labelText: 'Password'),
      ),
    );
  }

  Widget _crearBoton() {
    return RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        onPressed: () {},
        elevation: 0.05,
        color: Colors.deepPurple,
        textColor: Colors.white,
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            child: const Text('Ingresar')));
  }

  Widget _createFondo(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fondo = Container(
      height: size.height * 0.40,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
        Color.fromRGBO(63, 63, 156, 1.0),
        Color.fromRGBO(90, 70, 178, 1.0),
      ])),
    );

    final circulo = Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(255, 255, 255, 0.05),
        ));

    return Stack(
      children: <Widget>[
        fondo,
        Positioned(
          top: 25,
          left: 100,
          child: circulo,
        ),
        Positioned(
          top: 190,
          left: -40,
          child: circulo,
        ),
        Positioned(
          top: 250,
          left: 350,
          child: circulo,
        ),
        Container(
          padding: const EdgeInsets.only(top: 120.0),
          child: Column(children: const <Widget>[
            Icon(
              Icons.person_pin_circle_rounded,
              color: Colors.white,
              size: 90.0,
            ),
            SizedBox(
              height: 10.0,
              width: double.infinity,
            ),
            Text(
              'Didier Junco',
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            )
          ]),
        )
      ],
    );
  }
}
