import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:project_6/api/User/user_model.dart';
import 'package:http/http.dart' as http;

class ExampleThree extends StatefulWidget {
  const ExampleThree({super.key});

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  List<UserModel> userList = [];

  Future<List<UserModel>> getUserApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());

    for (Map<String, dynamic> i in data) {
      userList.add(UserModel.fromJson(i));
    }

    if (response.statusCode == 200) {
      return userList;
    } else {
      return userList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User_model'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getUserApi(),
              builder: (context, AsyncSnapshot<List<UserModel>> snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          Reusable(
                              title: 'name',
                              value: snapshot.data![index].name.toString()),
                          Reusable(
                              title: 'username',
                              value: snapshot.data![index].username.toString()),
                          Reusable(
                              title: 'email',
                              value: snapshot.data![index].email.toString()),
                          Reusable(
                              title: 'address',
                              value: snapshot.data![index].address!.city
                                  .toString())
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Reusable extends StatelessWidget {
  String title, value;
  Reusable({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(
            value,
          )
        ],
      ),
    );
  }
}
