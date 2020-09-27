import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterfood/data/network/dio_client.dart';
import 'package:flutterfood/data/network/repositories/restaurant_repository.dart';

import '../../models/Restaurant.dart';
import './widgets/RestaurantCard.dart';
import '../../widgets/flutter_bottom_navigator.dart';

class RestaurantsPage extends StatefulWidget {
  @override
  _RestaurantsPageState createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {

  List<Restaurant> _restaurants = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    getRestaurants();
  }

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
      body: isLoading ? CircularProgressIndicator() : _buildRestaurants(context),
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
  
  void getRestaurants() async{
    setState(() => isLoading = true );

   final restaurants =  await RestaurantRepository().getRestaurants();

   setState(() {
      _restaurants.addAll(restaurants);
    });

   setState(() => isLoading = false);
   print(isLoading);
  }
}
