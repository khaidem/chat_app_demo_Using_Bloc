import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ListUserPage extends StatelessWidget {
  const ListUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController groupName = TextEditingController();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('ListUser'),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: true,
                builder: (_) {
                  return AlertDialog(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(32.0),
                      ),
                    ),
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              "Enter Group Name",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 30.0,
                              right: 30.0,
                            ),
                            child: TextFormField(
                              onChanged: (value) {},
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Entry group Name';
                                }
                                return null;
                              },
                              controller: groupName,
                              decoration: const InputDecoration(
                                hintText: "Enter Group Name",
                                border: InputBorder.none,
                              ),
                              maxLines: 8,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                context.router.pop();
                              },
                              child: const Text('Submit'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                context.router.pop();
                              },
                              child: const Text('Cancel'),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              );
            },
            child: const Text('show'),
          )
        ],
      ),
    );
  }
}
