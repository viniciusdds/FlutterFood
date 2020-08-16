import 'package:flutter/material.dart';

import '../../widgets/flutter_bottom_navigator.dart';
import '../../widgets/show_image_cached_network.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Carrinho'),
        centerTitle: true,
      ),
      body: _buildContentCart(context),
      bottomNavigationBar: FlutterFoodBottomNavigator(2),
    );
  }

  Widget _buildContentCart(context){
    return Column(
      children: <Widget>[
        _buildHeader(),
        _buildCartList(context),
        //_buildFormComment(),
        //_buildCheckout(),
      ],
    );
  }

  Widget _buildHeader(){
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.all(16),
      child: Text("Total (3) Itens", style: TextStyle(color: Colors.black)),
    );
  }

  Widget _buildCartList(context){
    return Container(
      height: (MediaQuery.of(context).size.height - 180),
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) => _buildCartItem(context),
      ),
    );
  }

  Widget _buildCartItem(context){
    return Container(
      margin: EdgeInsets.all(10),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: Border.all(color: Colors.grey[200]),
        borderRadius: BorderRadius.all(Radius.circular(16))
      ),
      child: Container(
        padding: EdgeInsets.all(2),
        child: Row(
          children: <Widget>[
            ShowImageCachedNetwork('https://eurio.com.br/hf-conteudo/templates/eurio2/img/sem_foto_icone.jpg'),
            _showDetailItemCart(context),
          ],
        ),
      ),
    );
  }

  Widget _showDetailItemCart(context){
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 5, right: 4, left: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('PIZZA HUT',
                maxLines: 2,
                style: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor)
            ),
            Container(height: 6),
            Container(
              //color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("R\$ 399,00",
                      style: TextStyle(color: Colors.green)
                  ),
                  Container(
                    //color: Colors.black,
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.remove, size: 24, color: Colors.grey.shade700),
                        Container(
                          padding: EdgeInsets.only(top: 4, bottom: 4, right: 12, left: 12),
                          color: Theme.of(context).primaryColor,
                          child: Text('2', style: TextStyle(color: Colors.white)),
                        ),
                        Icon(Icons.add, size: 24, color: Colors.grey.shade700)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
