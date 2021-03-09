import 'package:flutter/material.dart';
import './product_detail.dart';
import './product_model.dart';


class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Tanaman Buah"),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search), 
            onPressed: (){
              print("Click search");
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_sharp), 
            onPressed: (){
              print("Click shopping");
            },
          ),
        ],
      ),
      body: Container(
        //Padding
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),  
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index){
            product productList = products[index];
            return GestureDetector(
              onTap: (){
                //Push navigator 
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => ProductDetail(
                    productList: productList,
                  ),
                ));
              },
              child: ProductBox(
                productList: productList              
              ),
            );
          }
        ),                
      ),
    );
  }
}

//ProductBox class for list product box
class ProductBox extends StatelessWidget{
  //Constructor with parameter
  ProductBox({
    Key key, this.productList
  }): super(key: key);

  //Class variabel declaration
  final product productList;  
  final children = <Widget>[];

  Widget build(BuildContext context){
    for (var i = 0; i < productList.productRating; i++){
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.yellow,
      ));
    }    

    return Container(      
      padding: EdgeInsets.all(12),
      child: Card(
        child: Row(          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/products/" + productList.productImage, height: 150,),
            Expanded(
              child: Container(                                
                padding: EdgeInsets.only(left: 24.0),
                child: Column(                  
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //Product Info
                  children: <Widget>[                    
                    Text(
                      this.productList.productName,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.green)),
                    Text(
                      this.productList.productDescription,
                      style: TextStyle(color: Colors.grey[400]),
                    ),                    
                    Row(                      
                      children: <Widget>[   
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          child: Row(
                            children: <Widget>[                              
                              Text("Rating: "),
                              Row(                          
                                children: children,                                                    
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12.0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Harga: ",                                      
                                    ),
                                    Text(
                                      this.productList.productPrice.toString(),
                                      style: TextStyle(color: Colors.green),
                                    )
                                  ],                                 
                                ),                                
                              )
                              
                            ],
                          ),
                        ),

                        
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 12.0, left: 12.0, top: 3.0, bottom: 3.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(100.0)
                      ),
                      child: 
                      Text("Lihat selengkapnya", 
                      style: TextStyle(color: Colors.white, fontSize: 12.0),),
                    ),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}