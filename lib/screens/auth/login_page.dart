import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: _loginPageUI(context),
      ),
    );
  }

  Widget _loginPageUI(context){
    return Container(
      child: Column(
        children: <Widget>[
          _headingAuth(),
          _formLogin(context),
          _loginButton(),
        ],
      ),
    );
  }

  Widget _headingAuth(){
    return Container(
      margin: EdgeInsets.all(50.0),
      height: 130,
      width: 130,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/IconeFlutterFood.png'),
            fit: BoxFit.fill
        )
      ),
    );
  }

  Widget _formLogin(context){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(143, 148, 251, .6),
            blurRadius: 20.0,
            offset: Offset(0, 10)
          )
        ]
      ),
      child: Column(
        children: <Widget>[
          _emailTextField(context),
          _passwordTextField(context)
        ],
      ),
    );
  }

  Widget _emailTextField(context){
    return TextFormField(
      autocorrect: false,
      autofocus: true,
      style: TextStyle(
        color: Theme.of(context).primaryColor
      ),
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor)
        ),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor)
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor)
        ),
        contentPadding: EdgeInsets.all(10),
        hintText: 'E-mail',
        hintStyle: TextStyle(color: Theme.of(context).primaryColor)
      ),
    );
  }

  Widget _passwordTextField(context){
    return TextFormField(
      autocorrect: false,
      autofocus: true,
      obscureText: true,
      style: TextStyle(
          color: Theme.of(context).primaryColor
      ),
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).primaryColor)
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).primaryColor)
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: 'Password',
          hintStyle: TextStyle(color: Theme.of(context).primaryColor)
      ),
    );
  }

  Widget _loginButton(){
    return Container();
  }
}
