import 'package:flutter/material.dart';
import 'package:list_view/product_model.dart';
import './product_model.dart';

//ProductDetail Class 

class ProductDetail extends StatefulWidget{  
  //Class constructor with parameter
  ProductDetail({Key key, this.productList})
  : super(key: key);

  //Class variabel declaration
  final product productList;  

  @override
  _ProductDetailState createState() => _ProductDetailState();  
}

//State class
class _ProductDetailState extends State<ProductDetail> {  
  
  //Star variabel inasillation
  final childrenStar = <Widget>[];


  @override
  Widget build(BuildContext context){
    //Looping for product rating icon 
    for(var i=0; i < widget.productList.productRating; i++){
      childrenStar.add(new Icon(
        Icons.star,
        size: 15,
        color: Colors.yellow,
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.productList.productName}"),
        backgroundColor: Colors.green,
      ),
      body: new Container(                
        width: double.infinity,
        child: new ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                new Image.asset("assets/products/"+ widget.productList.productImage, width: 1080, height: 250, fit: BoxFit.cover,)
              ]
            ),

            Container(          
            color: Colors.grey[100],
            padding: const EdgeInsets.fromLTRB(12, 24, 0, 24),
            margin: EdgeInsets.only(bottom: 12),
            
            child: Row(              
              children: [
                Expanded(
                  child: Column(                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[     
                      Text(
                        widget.productList.productName,
                        style: TextStyle(color: Colors.grey[700], fontSize: 20),
                      ),                                                          
                      Text(
                        "Rp. " + widget.productList.productPrice.toString(), 
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.green),
                      ),                      
                      Row(
                        children: childrenStar, 
                      ),                      
                    ],                    
                  )
                ),             
              ],
            )), 

            Container(          
            color: Colors.grey[100],
            padding: const EdgeInsets.fromLTRB(12, 24, 0, 24),
            margin: EdgeInsets.only(bottom: 12),
            
            child: Row(              
              children: [
                Expanded(
                  child: Column(                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[     
                      Text("Deskripsi Produk:", style: TextStyle(fontSize: 14, color: Colors.green),),
                      Text(
                        widget.productList.productDescription,
                        style: TextStyle(color: Colors.grey[700], fontSize: 14),
                      ),                                                                                                   
                    ],                    
                  )
                ),             
              ],
            )), 
            
          ],
        ),
      ), 

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        currentIndex: 1,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_sharp),
            label: "Tambahkan ke Favorit",
            backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_sharp),
            label: "Beli Sekarang",
            backgroundColor: Colors.green[800]
          ),
        ],
      ),     
    );

  }
}