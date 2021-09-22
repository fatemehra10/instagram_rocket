import 'package:flutter/material.dart';
import 'package:project_instagram/pages/favorite.dart';
import 'package:project_instagram/pages/home.dart';
import 'package:project_instagram/pages/plus.dart';
import 'package:project_instagram/pages/profile.dart';
import 'package:project_instagram/pages/search.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
/*
rule 1
 */
// class _MyHomePageState extends State<MyHomePage> {
//   String currentPageName = "home";
//   final Map<String, Widget> children = <String, Widget>{
//     "home": HomePage(),
//     "favorite": FavoritePage(),
//     "search": SearchPage(),
//     "plus": PlusPage(),
//     "profile": ProfilePage()
//   };
//
//   changePage(String pageName) {
//     setState(() {
//       currentPageName = pageName;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       child: new Scaffold(
//         appBar: new AppBar(
//           backgroundColor: new Color(0xfff8faf8),
//           elevation: 1,
//           title: new SizedBox(
//               height: 40,
//               child: new Center(
//                 child: new Image.asset("asset/images/insta_logo.png"),
//               )),
//           leading: new Icon(
//             Icons.camera_alt,
//             color: Colors.black,
//           ),
//           actions: [
//             new Padding(
//               padding: EdgeInsets.only(right: 12),
//               child: new Icon(
//                 Icons.send,
//                 color: Colors.black,
//               ),
//             )
//           ],
//         ),
//         bottomNavigationBar: new Container(
//           height: 50,
//           alignment: Alignment.center,
//           color: Colors.white,
//           child: new BottomAppBar(
//             child: new Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 new IconButton(
//                     onPressed: () {
//                       changePage("home");
//                     },
//                     icon: new Icon(
//                       Icons.home,
//                       color: currentPageName == "home"
//                           ? Colors.black12
//                           : Colors.black,
//                     )),
//                 new IconButton(
//                     onPressed: () {
//                       changePage("search");
//                     },
//                     icon: new Icon(
//                       Icons.search,
//                       color: currentPageName == "search"
//                           ? Colors.black12
//                           : Colors.black,
//                     )),
//                 new IconButton(
//                     onPressed: () {
//                       changePage("plus");
//                     },
//                     icon: new Icon(
//                       Icons.add_box,
//                       color: currentPageName == "plus"
//                           ? Colors.black12
//                           : Colors.black,
//                     )),
//                 new IconButton(
//                     onPressed: () {
//                       changePage("favorite");
//                     },
//                     icon: new Icon(
//                       Icons.favorite,
//                       color: currentPageName == "favorite"
//                           ? Colors.black12
//                           : Colors.black,
//                     )),
//                 new IconButton(
//                     onPressed: () {
//                       changePage("profile");
//                     },
//                     icon: new Icon(
//                       Icons.account_box,
//                       color: currentPageName == "profile"
//                           ? Colors.black12
//                           : Colors.black,
//                     )),
//               ],
//             ),
//           ),
//         ),
//         body: children[currentPageName],
//       ),
//     );
//   }
// }

/*
rule 2
 */
class _MyHomePageState extends State<MyHomePage> {
  int currentPageNameIndex = 0;
  final List children =[
    HomePage(),
    SearchPage(),
    PlusPage(),
    FavoritePage(),
    ProfilePage()
  ];

  changePage(int itemIndex) {
    setState(() {
      currentPageNameIndex = itemIndex;
    });
    print("current $currentPageNameIndex");
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Scaffold(
        appBar: new AppBar(
          backgroundColor: new Color(0xfff8faf8),
          elevation: 1,
          title: new SizedBox(
              height: 40,
              child: new Center(
                child: new Image.asset("asset/images/insta_logo.png"),
              )),
          leading: new Icon(
            Icons.camera_alt,
            color: Colors.black,
          ),
          actions: [
            new Padding(
              padding: EdgeInsets.only(right: 12),
              child: new Icon(
                Icons.send,
                color: Colors.black,
              ),
            )
          ],
        ),
        bottomNavigationBar: new BottomNavigationBar(
          selectedItemColor: Colors.black,
          onTap:changePage,
          currentIndex: currentPageNameIndex,

          items:<BottomNavigationBarItem> [
            new BottomNavigationBarItem(
              label: "Home",
                icon: new Icon(Icons.home, color: Colors.black,)),
            new BottomNavigationBarItem(
              label: "Search",
                icon: new Icon(Icons.search, color: Colors.black,)),
            new BottomNavigationBarItem(
              label: "Plus",
                icon: new Icon(Icons.add_box, color: Colors.black,)),
            new BottomNavigationBarItem(
              label: "Favorite",
                icon: new Icon(Icons.favorite, color: Colors.black,)),
            new BottomNavigationBarItem(
              label: "Profile",
                icon: new Icon(Icons.account_box, color: Colors.black,))

          ],

        ),
        body: children[currentPageNameIndex],

      ),
    );
  }
}
