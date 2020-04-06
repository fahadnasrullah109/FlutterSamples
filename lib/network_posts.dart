import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp/posts.dart';
import 'package:http/http.dart';

class NetworkPostsScreen extends StatefulWidget {
  @override
  _NetworkPostsScreenState createState() => _NetworkPostsScreenState();
}

class _NetworkPostsScreenState extends State<NetworkPostsScreen> {
  List<Post> posts = [];

  void getPostsFromNetwork() async {
    Response response = await get('https://jsonplaceholder.typicode.com/posts');
    if (response.statusCode == 200) {
      var postsJson = jsonDecode(response.body);
      setState(() {
        for (Map i in postsJson) {
          posts.add(Post.fromJson(i));
        }
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getPostsFromNetwork();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Network Posts"),
        ),
        body: posts.length == 0
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: posts.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PostDetailScreen(),
                            settings: RouteSettings(
                              arguments: posts[index]
                            )
                          ),
                        );
                      },
                      title: Text(posts[index].title,
                          maxLines: 1, overflow: TextOverflow.ellipsis),
                      subtitle: Text(posts[index].body,
                          maxLines: 2, overflow: TextOverflow.ellipsis),
                      leading: CircleAvatar(child: Icon(Icons.add_a_photo)),
                      trailing: CircleAvatar(
                          child: Icon(
                        Icons.delete,
                      )));
                  return GestureDetector(
                    onTap: () {
                      print('${posts[index].id}');
                    },
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('${posts[index].id}',
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 20.0)),
                                  SizedBox(height: 10.0),
                                  Text(posts[index].title,
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontSize: 18.0, color: Colors.black)),
                                  SizedBox(height: 10.0),
                                  Text(posts[index].body,
                                      maxLines: 3,
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey[400]))
                                ],
                              ),
                            ),
                            SizedBox(width: 10.0),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    posts.removeAt(index);
                                  });
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.blue,
                                )),
                          ],
                        ),
                      ),
                    ),
                  );
                }));
  }
}

class PostDetailScreen extends StatelessWidget {
  Post post;


  @override
  Widget build(BuildContext context) {
    post = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text('Post : ${post.id}'),
        ),
        body: Container(
            padding: EdgeInsets.all(30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    post.title,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    post.body,
                    maxLines: 5,
                  )
                ],
              ),
            )));
  }
}
