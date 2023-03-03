import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        tileColor: Colors.white,
        leading: const Icon(
          Icons.check_box,
          color: Colors.blueAccent,
        ),
        title: const Text(
          'First To do ',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        trailing: Container(
            padding: EdgeInsets.all(0.0),
            margin: EdgeInsets.symmetric(vertical: 10.0),
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(6),
            ),
            child: IconButton(
              color: Colors.red,
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
            )),
      ),
    );
  }
}
