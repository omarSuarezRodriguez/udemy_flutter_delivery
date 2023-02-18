import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: _textDontHaveAccount(),
      ),
      body: SingleChildScrollView(
        child: Stack(
          // Posicionar elementos uno encima del otro
          children: [
            _backgroundCover(context),
            _boxForm(context),
            Column(
              // Posicionar elementos uno debajo del otro (Vertical)
              children: [
                _imageCover(),
                _textAppName(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _backgroundCover(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.42,
      color: Colors.amber,
    );
  }

  Widget _textAppName() {
    return Text(
      'Delivery MySql',
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15.0),
        ),
        onPressed: () {},
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _boxForm(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.35, left: 50, right: 50),
      decoration: BoxDecoration(color: Colors.white, boxShadow: <BoxShadow>[
        BoxShadow(
            color: Colors.black54, blurRadius: 15.0, offset: Offset(0, 0.75))
      ]),
      child: Column(
        children: [
          _textYourInfo(),
          _textFieldEmail(),
          _textFieldPassword(),
          _buttonLogin(),
        ],
      ),
    );
  }

  Widget _textFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Correo Electrónico',
          prefixIcon: Icon(Icons.email),
        ),
      ),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Contraseña',
          prefixIcon: Icon(Icons.lock),
        ),
      ),
    );
  }

  Widget _textYourInfo() {
    return Container(
        margin: EdgeInsets.only(top: 25.0, bottom: 40.0),
        child: Text(
          'Ingresa Esta Información',
          style: TextStyle(
            color: Colors.black,
          ),
        ));
  }

  Widget _textDontHaveAccount() {
    return Row(
      // Ubicar Widgets uno al lado del otro
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No tienes cuenta?',
          style: TextStyle(color: Colors.black, fontSize: 17.0),
        ),
        SizedBox(
          width: 7.0,
        ),
        Text(
          'Registrate aqui',
          style: TextStyle(
              color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 17.0),
        ),
      ],
    );
  }

// Private
  Widget _imageCover() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 4.0),
        alignment: Alignment.topCenter,
        child: Image.asset(
          'assets/img/delivery.png',
          width: 130.0,
          height: 130.0,
        ),
      ),
    );
  }
}
