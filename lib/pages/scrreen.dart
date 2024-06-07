import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenTwo extends StatelessWidget {
   ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Manage Store",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
          ),),
          leading: IconButton(onPressed: () {
            
          }, icon: Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                _buildItems(text: 'Marketing\nDesigns', icon: Icons.campaign, color: Colors.orange),
                _buildItems(text: 'Online\nPayments', icon: Icons.currency_rupee_sharp, color: Colors.green),
                
              ],
            ),

            Row(
              children: [
                _buildItems(text: 'Discount\nCoupons', icon: Icons.discount_sharp, color: Colors.yellow),
                _buildItems(text: 'My\nCustomers', icon: Icons.people, color: Color(0xFF19AA9C)),
                
              ],
            ),

            Row(
              children: [
                _buildItems(text: 'Store QR\nCode', icon: Icons.discount_sharp, color: Colors.yellow),
                _buildItems(text: 'Extra\nCharges', icon: Icons.attach_money_rounded, color: Colors.deepPurple),
                
              ],
            ),

             Row(
              children: [
                _buildItemsNew(text: 'Order\nForm', icon: Icons.format_align_center, color: Colors.pink,isNew: true),
                
                
              ],
            ),


             
            
          ],
        ),
      ),

      
      bottomNavigationBar: BottomNavigationBar(items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: "Shopping"),
        BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits),label: "Products"),
        BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.layerGroup),label: "Manage"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle,),label: "Account"),
      ],
      currentIndex: 3,
      selectedItemColor: Colors.blue,
      unselectedLabelStyle:TextStyle(color: Colors.grey),
      showUnselectedLabels: true,
      unselectedItemColor: Colors.grey,
      ),
    );
  }


  Widget _buildItems({
    required String text,
    required IconData icon,
    required Color color,
    bool isNew = false
  }){
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 150,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 5,
              )
            ]
          ),
        
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0,top: 8),
                child: Container(
                  
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: color
                  ),
                  child: Icon(icon,color: Colors.white,),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(text,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold  ),),

                
              ),
             
              
             
        
        
            ],
          ),
        ),
      );

  }

  Widget _buildItemsNew({
    required String text,
    required IconData icon,
    required Color color,
    bool isNew = false
  }){
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 150,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 5,
              )
            ]
          ),
        
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0,top: 8),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: color
                        ),
                        child: Row(
                          children: [
                            Icon(icon,color: Colors.white,),
                            
                          ],
                        ),
                      ),
                  
                      Container(
                          padding:  EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("NEW",style: TextStyle(color: Colors.white),),
                        )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(text,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold  ),),

                
              ),
             
              
             
        
        
            ],
          ),
        ),
      );

  }

 }


















