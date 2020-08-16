import 'package:flutter/material.dart';

import '../../models/Category.dart';
import '../../models/Food.dart';
import './widgets/Categories.dart';
import '../../widgets/food_card.dart';
import '../../widgets/flutter_bottom_navigator.dart';

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

  List<Food> _foods = [
    Food(
        identify: 'asds1',
        image: 'https://images2.nogueirense.com.br/wp-content/uploads/2018/08/whatsapp-image-2018-08-16-at-19-59-49-1534878741.jpeg',
        description: 'Apenas um teste',
        price: '14.2',
        title: 'Sanduíche'),
    Food(
        identify: 'asds2',
        image: 'https://i.pinimg.com/736x/b6/c9/2a/b6c92a1d3c09f9e6e3e4f625133f5d09.jpg',
        description: 'Apenas um teste',
        price: '15.2',
        title: 'Açaí'),
    Food(
        identify: 'asds3',
        image: 'https://i.pinimg.com/originals/f0/54/85/f05485af841f4b16ea3e57eaa356ec78.jpg',
        description: 'Apenas um teste',
        price: '16.2',
        title: 'Japonesa'),
    Food(
        identify: 'asd4',
        image: 'https://odia.ig.com.br/_midias/jpg/2020/06/24/pizza-17874446.jpg',
        description: 'Apenas um teste',
        price: '15.5',
        title: 'Pizza'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EspecializaTi Res'),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: _buildScreen(),
      bottomNavigationBar: FlutterFoodBottomNavigator(0),
    );
  }

  Widget _buildScreen(){
    return Column(
      children: <Widget>[
        Categories(_categories),
        _buildFoods()
      ],
    );
  }

  Widget _buildFoods(){
    return Container(
      height: (MediaQuery.of(context).size.height - 190),
      width: MediaQuery.of(context).size.width,
      //color: Colors.black,
      child: ListView.builder(
          itemCount: _foods.length,
          itemBuilder: (context, index){
            final Food food = _foods[index];
            return FoodCard(
              identify: food.identify,
              description: food.description,
              image: food.image,
              price: food.price,
              title: food.title,
            );
          }
      ),
    );
  }
}
