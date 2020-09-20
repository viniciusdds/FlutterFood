import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../models/Restaurant.dart';
import './widgets/RestaurantCard.dart';
import '../../widgets/flutter_bottom_navigator.dart';

class RestaurantsPage extends StatefulWidget {
  @override
  _RestaurantsPageState createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {

  List<Restaurant> _restaurants = [
    Restaurant(
      name: 'Especializati',
      image: '',
      contact: 'vinicius@email.com.br',
      uuid: '123456789'
    ),
    Restaurant(
        name: 'Especializati 2',
        image: '',
        contact: 'erika@email.com.br',
        uuid: '123456788'
    ),
    Restaurant(
        name: 'Especializati 3',
        image: '',
        contact: 'diego@email.com.br',
        uuid: '123456787'
    )
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pushReplacementNamed('/login'),
        ),
        title: Text('Restaurantes'),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: _buildRestaurants(context),
      bottomNavigationBar: FlutterFoodBottomNavigator(0),
    );
  }

  Widget _buildRestaurants(context){
    return Container(
      child: ListView.builder(
          itemCount: _restaurants.length,
          itemBuilder: (context, index){

            final Restaurant restaurant = _restaurants[index];

            return RestaurantCard(
              uuid: restaurant.uuid,
              name: restaurant.name,
              image: restaurant.image,
              contact: restaurant.contact,
            );
          },
      ),
    );
  }
}
