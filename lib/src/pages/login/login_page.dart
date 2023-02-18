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
      body: Stack(
        // Posicionar elementos uno encima del otro
        children: [
          _backgroundCover(context),
          Column(
            // Posicionar elementos uno debajo del otro (Vertical)
            children: [
              _imageCover(),
              _textAppName(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _backgroundCover(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
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
          style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 17.0),
        ),
      ],
    );
  }

// Private
  Widget _imageCover() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 20.0, bottom: 15.0),
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
