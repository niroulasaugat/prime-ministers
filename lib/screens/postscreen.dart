import 'package:flutter/material.dart';
import 'package:primeministers/service/remoteservice.dart';
import '../models/post.dart';


class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {

  List<Post>? posts;
  var isloaded= false;

  @override
  void initState(){
    super.initState();
    getData();
  }


  getData() async {
    posts = await RemoteService().getpost();
    if(posts != null){
      setState(() {

        isloaded = true;
        
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hi'),
      ),
      body: Visibility(
        visible: isloaded,
        child: ListView.builder(
          itemCount: posts?.length,
          itemBuilder: ((context, index) => 
          Card(child: Text(posts![index].title)))),
          replacement: Center(
            child: CircularProgressIndicator() ),
      ),
    );
}
}