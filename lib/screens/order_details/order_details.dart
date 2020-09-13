import 'package:flutter/material.dart';

import '../../widgets/flutter_bottom_navigator.dart';
import '../../models/Order.dart';
import '../../models/Food.dart';
import '../../models/Evaluation.dart';
import '../../widgets/food_card.dart';

class OrderDetailsScreen extends StatelessWidget {

  Order _order = Order(
    identify: 'dsfsfls123',
    date: '30/05/2021',
    status: 'open',
    table: 'Mesa 1',
    total: (90).toDouble(),
    comment: 'Sem cebola',
    foods: [
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
    ],
    evaluations: [],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes do Pedido'), centerTitle: true),
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(child: _buildOrderDetails(context)),
      bottomNavigationBar: FlutterFoodBottomNavigator(1),
    );
  }

  Widget _buildOrderDetails(context){
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _makeTextOrder('Número', _order.identify),
          _makeTextOrder('Data', _order.date),
          _makeTextOrder('Status', _order.status),
          _makeTextOrder('Total', _order.total.toString()),
          _makeTextOrder('Mesa', _order.table),
          _makeTextOrder('Comentário', _order.comment),
          Divider(height: 30),
          Text('Comidas',
              style: TextStyle(
                  color: Colors.black,
                  fontSize:  22,
                  fontWeight: FontWeight.bold)
          ),
          _buildFoodsOrder(context),
        ],
      ),
    );
  }

  Widget _makeTextOrder(String textLabel, String textValue){
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: Row(
        children: <Widget>[
          Text(
            textLabel + ': ',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            textValue,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodsOrder(context){
    return ListView.builder(
        shrinkWrap: true,
          itemCount: _order.foods.length,
          itemBuilder: (context, index){
            final Food food = _order.foods[index];

            return FoodCard(
              identify: food.identify,
              description: food.description,
              image: food.image,
              price: food.price,
              title: food.title,
              notShowIconCart: true,
            );
          }
      );
  }
}
