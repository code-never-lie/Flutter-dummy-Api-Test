// ignore:

// ignore_for_file: file_names

import 'package:app/Post.dart';
import 'package:app/remorte_services.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Second Page ",
      home: HomePage1(),
    );
  }
}

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  List<Post>? posts;
  var isloaded = false;

  @override
  void initState() {
    super.initState();
    // get data from api
    getData();
  }

  getData() async {
    posts = await RemortServices().getpost();
    if (posts != null) {
      setState(() {
        isloaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 145, 84, 224),
          toolbarHeight: 100,
          elevation: 7,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(70),
                  bottomLeft: Radius.circular(70))),
          title: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 30.0,
                ),
                child: Text('Student'),
              ),
              const SizedBox(
                width: 150,
              ),
              Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 7,
                            spreadRadius: 3,
                            color: Color.fromARGB(255, 145, 84, 224))
                      ],
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 82, 40, 136)),
                  child: IconButton(
                      onPressed: () => {}, icon: const Icon(Icons.search))),
            ],
          ),
        ),
        body: Visibility(
          visible: isloaded,
          // ignore: sort_child_properties_last
          child: ListView.builder(
            itemCount: posts?.length,
            itemBuilder: (BuildContext context, int index) {
              // ignore: avoid_unnecessary_containers
              return Card(
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(posts![index].avatar)),
                  title: Text(posts![index].name),
                  subtitle: Text(posts![index].id),
                  trailing: const Icon(Icons.food_bank),
                ),
              );
            },
          ),
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }
}
