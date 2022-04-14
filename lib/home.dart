import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardItem{
  final String urlImage;
  final String title;
  final String subtitle;

  const CardItem({
  required this.urlImage,
    required this.title,
    required this.subtitle,
});
}
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
int currentIndex=0;
List<CardItem> items = [
  CardItem(
      title: 'Nescafé Classic Coffee, 200g',
      urlImage:
      'https://m.media-amazon.com/images/I/71zxqbC1a-L._AC_UL480_FMwebp_QL65_.jpg',
      subtitle: '\₹543'
  ),
  CardItem(
    title: 'Aashirvaad Atta, 10Kg',
  urlImage:
    'https://www.bigbasket.com/media/uploads/p/xxl/126903_8-aashirvaad-atta-whole-wheat.jpg',
  subtitle: '\₹422'
),
  CardItem(
      title: 'India Gate Basmati Rice, 5Kg',
      urlImage:
      'https://m.media-amazon.com/images/I/91MZComV1xL._SX522_.jpg',
      subtitle: '\₹585'
  ),
  CardItem(
      title: 'Fortune Soyabean Oil, 1L',
      urlImage:
      'https://m.media-amazon.com/images/I/51GyUUKe-0L._AC_UL480_FMwebp_QL65_.jpg',
      subtitle: '\₹179'
  ),
  CardItem(
      title: 'Tata Tea Premium, 1500 g',
      urlImage:
      'https://m.media-amazon.com/images/I/51QF8woKr5S._AC_UL480_FMwebp_QL65_.jpg',
      subtitle: '\₹458'
  ),
];
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
          ),
        ],
      ),
      body: Container(
        height: 290,
        child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        separatorBuilder: (context, _) => SizedBox(width: 12),
        itemBuilder: (context, index) => buildCard(item: items[index]),
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) =>setState(()=>currentIndex=index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
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
Widget buildCard({
  required CardItem item,
}) => Container(
  width: 200,
  child: Column(
    children:[
      Expanded(
          child: Image.network(
              item.urlImage,
            fit: BoxFit.cover,
          ),
      ),
  const SizedBox(height: 4),
  Text(
    item.title,
    style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600)
  ),
      Text(
          item.subtitle,
          style: TextStyle(fontSize: 20, color: Colors.black)
      ),
  ],
),
);