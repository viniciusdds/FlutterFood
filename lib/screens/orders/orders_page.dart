import 'package:flutter/material.dart';
import '../../widgets/flutter_bottom_navigator.dart';
import '../../models/Order.dart';

class OrdersScreen extends StatelessWidget {

  List<Order> _orders= [
    new Order(date: '30/02/2021', identify: '0rsrsrs'),
    new Order(date: '30/03/2021', identify: '1rsrsrs'),
    new Order(date: '30/04/2021', identify: '2rsrsrs'),
    new Order(date: '30/05/2021', identify: '3rsrsrs'),
    new Order(date: '30/06/2021', identify: '4rsrsrs'),
    new Order(date: '30/07/2021', identify: '5rsrsrs'),
    new Order(date: '30/08/2021', identify: '6rsrsrs'),
    new Order(date: '30/09/2021', identify: '7rsrsrs'),
    new Order(date: '30/10/2021', identify: '8rsrsrs'),
    new Order(date: '30/11/2021', identify: '9rsrsrs'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Pedidos'),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: _buildOrdersScreen(context),
      bottomNavigationBar: FlutterFoodBottomNavigator(1),
    );
  }

  Widget _buildOrdersScreen(context){
    return Column(
      children: <Widget>[
        _buildHeader(),
        _buildOrdersList(),
      ],
    );
  }

  Widget _buildHeader(){
    return Container(
      margin: EdgeInsets.all(16),
      alignment: Alignment.topLeft,
      child: Text('Meus Pedidos',
        style: TextStyle(fontSize: 16, color: Colors.black),
      ),
    );
  }

  Widget _buildOrdersList(){
    return Expanded(
      child: ListView.builder(
        //shrinkWrap: true,
          itemCount: _orders.length,
          itemBuilder: (context, index){
            final Order order = _orders[index];
            return _buildItemOrder(order, context);
          },
      ),
    );
  }

  Widget _buildItemOrder(Order order, context){
    return ListTile(
      title: Text("Pedido #${order.identify}", style: TextStyle(color: Theme.of(context).primaryColor)),
      subtitle: Text("Data ${order.date}", style: TextStyle(color: Theme.of(context).primaryColor)),
      trailing: IconTheme(
          data: IconThemeData(color: Theme.of(context).primaryColor),
          child: Icon(Icons.navigate_next),
      ),
      onTap: (){
        print(order.identify);
        Navigator.pushNamed(context, '/order-details', arguments: order.identify);
      },
    );
  }
}
