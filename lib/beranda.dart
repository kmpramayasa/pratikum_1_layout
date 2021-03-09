//Repository import
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:list_view/product_model.dart';
import './product_detail.dart';

//Class Beranda
class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

//State CLass
class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //AppBar
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: 
          Row(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: <Widget>[
              Text('Beranda')
            ]
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search), 
              onPressed: (){
                print("Click search");
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications_active), 
              onPressed: (){
                print("Click start");
              },
            ),
          ],
      ),

      //Side Navigation Bar
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            new UserAccountsDrawerHeader(
              accountName: Text('Komang Pramayasa'), 
              accountEmail: Text('pramayasa@undiksha.ac.id'), 
              currentAccountPicture: new GestureDetector(
                onTap: (){},
                child: new CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.jpeg'),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://th.bing.com/th/id/Rd391b022f9e8d4071ac0ac34943f96d6?rik=QJMR8NsX%2f8%2fG2Q&riu=http%3a%2f%2fwww.knowledgehi.com%2fthumbnails%2fdetail%2f20121022%2fgreen%2520backgrounds%25201920x1200%2520wallpaper_www.knowledgehi.com_93.jpg&ehk=iZJIpAW1AGJBji0x3PhlJKzQIjFcbcnAUsmuou6hqUA%3d&risl=&pid=ImgRaw'),
                  fit: BoxFit.cover,
                  )
              ),
            ),

            //Menu
            new ListTile(              
              title: new Text('Keranjang Belanja'),
              trailing: new Icon(Icons.shopping_cart_sharp),
            ),

            new ListTile(
              title: new Text('Tanaman Favorit'),
              trailing: new Icon(Icons.favorite_sharp),
            ),            

            new ListTile(
              title: new Text('Pengaturan Profil'),
              trailing: new Icon(Icons.settings),
            ),  

            new ListTile(
              title: new Text('Keluar'),
              trailing: new Icon(Icons.logout),
            ),
            Divider(height: 2,),  

          ],
        ),
      ),
    
      //Body
      body: new ListView(
        children: <Widget>[
          //Header Image
          Image.asset("assets/bg_image.jpg", height: 250, fit: BoxFit.cover,),         

          //Category List
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Theme.of(context).dividerColor)
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[                
                
                //Category Item
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.grid_on, color: Colors.green),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Semua Kategori',
                        style: TextStyle(color: Colors.green[600], fontSize: 10, fontWeight: FontWeight.w400,),
                      ),
                    )
                  ],
                ),

                //Category Item
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.eco_sharp, color: Colors.green),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Tanaman',
                        style: TextStyle(color: Colors.green[600], fontSize: 10, fontWeight: FontWeight.w400,),
                      ),
                    )
                  ],
                ),
                
                //Category Item
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.local_florist_rounded, color: Colors.green),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Bibit Tanaman',
                        style: TextStyle(color: Colors.green[600], fontSize: 10, fontWeight: FontWeight.w400,),
                      ),
                    )
                  ],
                ),

                //Category Item
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.grass, color: Colors.green),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Pupuk Tanaman',
                        style: TextStyle(color: Colors.green[600], fontSize: 10, fontWeight: FontWeight.w400,),
                      ),
                    )
                  ],
                ),

                //Category Item
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.pest_control_rodent, color: Colors.green),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Pembasmi Hama',
                        style: TextStyle(color: Colors.green[600], fontSize: 10, fontWeight: FontWeight.w400,),
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
          
          //Margin
          SizedBox(height: 20,),
          //Product Carousel Label Contaier
          Container(            
            padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
            child: Column(
              children: <Widget>[
                Row(                    
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Produk Terlaris", 
                      style: TextStyle(
                        fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                    Text(
                      "Lihat semua",
                      style: TextStyle(
                        color: Colors.grey)
                    ),
                  ],
                ),
              ],
            ),
          ),

          //Calling the productCarousel class
          productCarousel(),

        ],
      ),
    );
  }
}


//ProductCarousel class
// ignore: camel_case_types
class productCarousel extends StatelessWidget {      

  @override
  Widget build(BuildContext context) {     

    return Container(
      height: 300.0,      
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length, //itemCount to inisiate how many listView would be display     
        itemBuilder: (BuildContext context, int index){
          product productList = products[index]; //inisiate new object from product class
          
          //GestureDetector          
          return GestureDetector(
            onTap: () => Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (BuildContext context) => ProductDetail(
                  productList : productList //giving an object parameter to ProductDetail class 
                ),
              )
            ),
            child: Container(
              margin: EdgeInsets.all(10.0),
              width: 200.0,            
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Positioned(
                    bottom: 15.0,
                    child: Container(
                      height: 120.0,
                      width: 200.0,     
                      padding: EdgeInsets.all(12.0),           
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)
                      ),                  
                      child: Column(                                          
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '${productList.productName}', //calling the object item
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[700]
                            ),
                          ),  
                          Text(
                            "Rp. " +productList.productPrice.toString(), 
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          
                          Row(
                            children: <Widget>[
                              Icon(Icons.star,size: 18.0, color: Colors.yellow,),
                              Text(productList.productRating.toString(), style: TextStyle(color: Colors.grey),)
                            ],                      
                          ),                  
                        ],                                        
                      ),                                                                    
                    ),                  
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),                    
                    ),
                    child: Stack(
                      children: <Widget>[
                        Image(
                          height: 180.0,
                          width: 200.0,
                          image: AssetImage("assets/products/" + productList.productImage),
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),           
              ],),
            ),            
          );          
        }
      ),
    );
  }
}