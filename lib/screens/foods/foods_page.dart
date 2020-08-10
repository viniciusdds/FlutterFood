import 'package:flutter/material.dart';

import '../../models/Category.dart';
import '../../models/Food.dart';
import './widgets/Categories.dart';

class FoodsScreen extends StatefulWidget {
  @override
  _FoodsScreenState createState() => _FoodsScreenState();
}

class _FoodsScreenState extends State<FoodsScreen> {

  List<Category> _categories = [
    Category(name: 'Salgados', description: 'Fritos', identify: 'YKM1452E'),
    Category(name: 'Refrigerantes', description: '2 Litros', identify: 'YKM1452F'),
    Category(name: 'Doces', description: 'Caseiros', identify: 'YKM1452G'),
    Category(name: 'Pizzas', description: 'Assadas', identify: 'YKM1452H'),
  ];
  List<Food> _foods = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EspecializaTi Res'),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: _buildFoods(),
    );
  }

  Widget _buildFoods(){
    return Column(
      children: <Widget>[
        Categories(_categories)
      ],
    );
  }
}
