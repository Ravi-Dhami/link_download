import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/linkpage_provider.dart';


class LinkPastPage extends StatelessWidget {
  const LinkPastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LinkPageProvider>.value(
      value: LinkPageProvider(),
      child: Consumer<LinkPageProvider>(
          builder: (context, linkPageProvider, child) {
            return Scaffold(
              body: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextFormField(
                      controller: linkPageProvider.linkController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal, width: 2)),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal, width: 2)),
                        prefixIcon: const Icon(Icons.add_link),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (linkPageProvider.linkController.text.isEmpty) {
                          print("Please add link");
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text('Add Link'),));
                        } else {}
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.teal,
                        ),
                        child: const Center(
                            child: Text(
                              'Download',
                              style: TextStyle(
                                  fontSize: 18,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
