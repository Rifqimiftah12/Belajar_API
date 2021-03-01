import 'package:getapi/get_post.dart';
import 'package:flutter/material.dart';
import 'controller/get_post_prov.dart';
import 'model/get_post_modelprov.dart';

class PostPage extends StatelessWidget {
  final GetPostProv _getPost = new GetPostProv();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get data dari APi'),
      ),
      body: FutureBuilder(
        future: _getPost.manggilPostData(),
        builder: (context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            List<Post> dataPost = snapshot.data;
            return ListView.builder(
                itemCount: dataPost.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Card(
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Icon(
                              Icons.android,
                              size: 30,
                              color: Colors.amber,
                            ),
                          ),
                          Text("Fid : " + dataPost[index].fid.toString()),
                          Text("provinsi : " +
                              dataPost[index].provinsi.toString()),
                          Text("kasus posi : " +
                              dataPost[index].kasus_posi.toString()),
                          Text("kasus semb : " +
                              dataPost[index].kasus_semb.toString()),
                          Text("kasus meni : " +
                              dataPost[index].kasus_meni.toString()),
                        ],
                      ),
                    ),
                  );
                });
          } else {}
        },
      ),
    );
  }
}
