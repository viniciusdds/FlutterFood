import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './register_page.dart';
import './widgets/heading_auth.dart';

class LoginScreen extends StatelessWidget {
  double _deviceWidth;
  double _deviceHeigh;

  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeigh = MediaQuery.of(context).size.height;
    
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: _loginPageUI(context),
      ),
    );
  }

  Widget _loginPageUI(context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.10),
      child: Column(
        children: <Widget>[
           Container(height: 50),
           HeadingAuth(),
           Container(height: 20),
          _formLogin(context),
          Container(height: 20),
          _loginButton(context),
          Container(height: 30),
          _textRegister(context),
        ],
      ),
    );
  }

  Widget _formLogin(context){
    return Container(
      padding: EdgeInsets.all(10),
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
      autofocus: false,
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
      autofocus: false,
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
          hintText: 'Senha',
          hintStyle: TextStyle(color: Theme.of(context).primaryColor)
      ),
    );
  }

  Widget _loginButton(context){
    return Container(
      width: _deviceHeigh,
      child: MaterialButton(
        padding: EdgeInsets.all(15),
        onPressed: (){
          print('login...');
          Navigator.pushReplacementNamed(context, '/restaurants');
        },
        color: Theme.of(context).primaryColor,
        child: Text('LOGIN'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }

  Widget _textRegister(context){
    return GestureDetector(
      onTap: (){
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (context) => RegisterScreen())
//       );
        Navigator.pushReplacementNamed(context, '/register');
      },
       child: Container(
         child: Text(
             'Cadastrar-se',
             style: TextStyle(
                 color: Theme.of(context).primaryColor,
                 fontSize: 18.2
             )
         ),
         padding: EdgeInsets.all(50),
       )
    );
  }
}
