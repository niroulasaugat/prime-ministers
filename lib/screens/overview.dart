import 'package:flutter/material.dart';
import 'package:primeministers/screens/detail.dart';
import '../models/prime.dart';


class OverviewScreen extends StatelessWidget {
 

  List<minister> ministers =[
    minister(name: 'B.P. Koirala', imgurl: 'assets/images/BP_Koirala.jpg', birthyear: 1914, DiedYear: 1982.toString()),
    minister(name: 'Surya Bahadur Thapa', imgurl: 'assets/images/SURYA_BAHADUR_THAPA.jpg', birthyear: 1928 , DiedYear: 2015.toString()),
    // minister(name: 'Girija Prasad Koirala', imgurl: 'http://gpkf.org.np/wp-content/uploads/2019/02/g-p-koirala-4.jpg', birthyear: 1924, DiedYear: 2009.toString()),

    minister(name: 'Prachanda', imgurl: 'assets/images/prachanda3.jpg', birthyear: 1954, DiedYear: ' ___'),
    minister(name: 'Madhav Kumar Nepal', imgurl: 'assets/images/MadhavNepal.jpg', birthyear: 1953, DiedYear: ' ___'),
    minister(name: 'Baburam Bhattarai', imgurl: 'assets/images/Baburam.jpg', birthyear: 1954, DiedYear: ' ___'),
    minister(name: 'Kp Oli', imgurl: 'assets/images/kpoli.jpg',  birthyear: 1952, DiedYear: ' ___'),
    minister(name: 'Sher Bdr Deuba', imgurl: 'assets/images/sherb.jpg',  birthyear: 1946, DiedYear: ' ___'),
    //  minister(name: 'Prachanda', imgurl: 'https://upload.wikimedia.org/wikipedia/commons/f/f4/Prachanda_2009.jpg',  birthyear: 1954, DiedYear: '---'),
     minister(name: 'Sushil Koirala', imgurl: 'assets/images/Sushil_Koirala_Photograph.png', birthyear: 1939, DiedYear: 2016.toString()),
  //   minister(name: 'Kp Oli', imgurl: 'https://upload.wikimedia.org/wikipedia/commons/0/01/KP_Oli.png',  birthyear: 1954, DiedYear: '---'),
  //   minister(name: 'Sher Bdr Deuba', imgurl: 'https://upload.wikimedia.org/wikipedia/commons/3/3d/Sher_bahadur.jpg',  birthyear: 1954, DiedYear: '---'),
  //    minister(name: 'Prachanda', imgurl:  'https://upload.wikimedia.org/wikipedia/commons/f/f4/Prachanda_2009.jpg',  birthyear: 1946, DiedYear: '---'),
  //   minister(name: 'Kp Oli', imgurl: 'https://upload.wikimedia.org/wikipedia/commons/0/01/KP_Oli.png',  birthyear: 1952, DiedYear: '---'),
  //   minister(name: 'Sher Bdr Deuba', imgurl: 'https://upload.wikimedia.org/wikipedia/commons/3/3d/Sher_bahadur.jpg',  birthyear: 1946, DiedYear: '---'),
  //    minister(name: 'Prachanda', imgurl: 'https://upload.wikimedia.org/wikipedia/commons/f/f4/Prachanda_2009.jpg',  birthyear: 1954, DiedYear: '---'),
  //   minister(name: 'Kp Oli', imgurl: 'https://upload.wikimedia.org/wikipedia/commons/0/01/KP_Oli.png',  birthyear: 1952, DiedYear: '---'),
  //   minister(name: 'Sher Bdr Deuba',imgurl: 'https://upload.wikimedia.org/wikipedia/commons/3/3d/Sher_bahadur.jpg',  birthyear: 1946, DiedYear: '---'),
  ];




  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Nepal Prime Ministers'),
      ),
      body: ListView.builder(
        itemCount: ministers.length,
        itemBuilder:( (context, index){
          final newitem =ministers[index].birthyear.compareTo(ministers[index +1].birthyear);
        
        return Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Theme.of(context).primaryColor,
                backgroundImage: AssetImage(ministers[index].imgurl)
                
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8),
                  child: Text(ministers[index].name),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 8, ),
                  child: Text(ministers[index].birthyear.toString() + '-' + ministers[index].DiedYear, style: TextStyle(color: Colors.grey, fontSize: 12),),
                ),
                onTap: () => Navigator.of(context).pushNamed(DetailScreen.routename, arguments: ministers[index]),
            ),
            Divider(),
          ],
        ) ;
        }
        ) 
        ),
    );
  }
}