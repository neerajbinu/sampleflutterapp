import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* note that built function should return a widget, in our
      case a scaffold*/
      appBar: AppBar(
           centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text('Breakfast Menu'),
          leading: Container(
            alignment: Alignment.center,

            /* leading is used to add a widget to the left
            // of the app bar..we use it to add icons */
            margin: EdgeInsets.only(left: 10), // margin to the left
            decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
              color: Color(0xffF2F2F2), /*we use Hex codes to get the correct
              color and opacity*/

              /*
              2 image properties as Decoration image is used if we have to allign
              our image..therefore we have AssetImage inside DecorationmImage
              */
              image: DecorationImage(
                image: AssetImage('assets/icons/navback.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        actions: [
          /* actions is used to add a widget to the right of the app bar */
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 10),
            width:53,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF2F2F2),
               image: DecorationImage(
               image: AssetImage('assets/icons/3dots.png'),
                fit: BoxFit.contain,
               ),
            ),
          ),
        ],
      ),
      body: Column( //column is used as the search bar is vertically below the app bar
        children: [
          Container(
            margin: EdgeInsets.all(13.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8),
                hintText: 'Search',
                prefixIcon: Icon(Icons.search), //inserting the search icon
                suffixIcon: IconButton(onPressed: (){}, icon:Image(image: AssetImage('assets/icons/filtericon.png'),width: 25,height: 25,)), //inserting the icon to the right
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
         Container( //implementing the categories part
             margin: EdgeInsets.all(23.0),
             child: Row(
        //       //crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
         ],
      )
    )
  ]
    )
    );
  }
}
