import 'package:flutter/material.dart';

import '../../widgets/flutter_bottom_navigator.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Meu Perfil'),
        centerTitle: true,
      ),
      body: Center(
        child: _buildProfileScreen(context),
      ),
      bottomNavigationBar: FlutterFoodBottomNavigator(3),
    );
  }

  Widget _buildProfileScreen(context){
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Vinicius Damasceno',
          style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
            ),
          ),
          Container(height: 10),
          Text('vinicius@hotmail.com',
            style: TextStyle(
                color: Colors.black
            ),
          ),
          Container(height: 10),
          Container(
            child: RaisedButton(
                onPressed: (){
                  print('Logout');
                },
              child: Text('Sair'),
              elevation: 2.2,
              color: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: BorderSide(color: Colors.redAccent,
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
