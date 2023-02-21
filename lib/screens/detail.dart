import 'package:flutter/material.dart';
import 'package:primeministers/models/prime.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  static const routename = 'Detail';

  @override
  Widget build(BuildContext context) {
    final newarg = ModalRoute.of(context)!.settings.arguments as minister;
    return Scaffold(
      appBar: AppBar(
        title: Text(newarg.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    radius: 120,
                    child: CircleAvatar(
                      radius: 110,
                      backgroundImage: AssetImage(newarg.imgurl)
                    ),

                  ),
                ],
              ),
            )
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       margin: EdgeInsets.only(top: 50),
            //       height: 200,
            //       width: 200,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(200),
            //         color: Theme.of(context).primaryColor
            //       ),
            //       child: Center(
            //         child: Image.network(newarg.imgurl, fit: BoxFit.cover,),
            //       ),
            //     ),
            //   ],
            // )
          ],
        )),
    );
  }
}