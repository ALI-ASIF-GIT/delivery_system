import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_MyHomeState)=>SearchPage())),
            icon: const Icon(Icons.search),
          )
        ],
      ),

      body:Center(child: Text('Home',style: TextStyle(fontSize: 40))),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) =>setState(()=>currentIndex=index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
            backgroundColor: Colors.green,
          ),
        ],
      ),
      );
  }
}
class SearchPage extends
    StatelessWidget {
  const SearchPage({Key? key}):
      super(key: key);
  @override
  Widget build(BuildContext){
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: 
              BorderRadius.circular(5)),
          child: Center(
            child: TextField(
              decoration:
              InputDecoration(
                prefixIcon:
              Icon(Icons.search),
                suffixIcon:
                  IconButton(
                    icon:
                      Icon(Icons.clear),
                    onPressed: (){

                    },
                  ),
                hintText: 'Search......',
                border:
                  InputBorder.none),
              ),
            ),
          )),
      );
  }
}
//NavigationBar
