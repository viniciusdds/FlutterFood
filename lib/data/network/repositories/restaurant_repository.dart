import '../../../contants/api.dart';

import '../../../models/Restaurant.dart';

import '../dio_client.dart';

class RestaurantRepository {
  var _httpClient;

  RestaurantRepository(){
    _httpClient = new DioClient();
  }

  Future<List<Restaurant>> getRestaurants() async{
    final response = await  _httpClient.get('$API_VERSION/tenants');
    final _restaurants = (response.data['data'] as List).map((restaurant) {
      //_restaurants.add(Restaurant.fromJson(restaurant));
      //print('------------------------------------------------');
      return Restaurant.fromJson(restaurant);
      //print(response);
    }).toList();

    return _restaurants;
  }
}