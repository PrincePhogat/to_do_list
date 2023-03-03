import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/todo_item.dart';
import '../widgets/search_box.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                )),
            const SizedBox(
              width: 40.0,
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/avatar_title.jpg'),
            ),
          ],
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40.0, bottom: 20.0),
                    child: const Text(
                      'All ToDos',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const ToDoItem(),
                  const ToDoItem(),
                  const ToDoItem(),
                  const ToDoItem(),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
