// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final _msgController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          elevation: 10,
          title: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/CAND_logo.png")),
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 74.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                MessageTile(
                  message: 'Hello',
                  sender: 'Emircan',
                  sentByMe: true,
                ),
                MessageTile(
                  message: "Can you tell me the safe areas?",
                  sender: 'Emircan',
                  sentByMe: true,
                ),
                MessageTile(
                  message:
                      'Hey, Emircan! You can see the safe areas at the home screen page.',
                  sender: 'Rescue Team',
                  sentByMe: false,
                ),
                MessageTile(
                  message: 'Okey, thank you.',
                  sender: 'Emircan',
                  sentByMe: true,
                ),
                MessageTile(
                  message: 'You\'r welcome. Are you okey?',
                  sender: 'Rescue Team',
                  sentByMe: false,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _msgController,
                keyboardType: TextInputType.text,
                maxLines: 1,
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'Enter your msg',
                  fillColor: Theme.of(context).primaryColor,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).primaryColor, width: 1.0),
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              icon: const Icon(Icons.send, color: Colors.deepOrange),
              hoverColor: Colors.deepOrange,
              onPressed: () {
                _msgController.clear();
              },
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class MessageTile extends StatelessWidget {
  final String message;
  final String sender;
  final bool sentByMe;

  const MessageTile({
    Key? key,
    required this.message,
    required this.sender,
    required this.sentByMe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentTime = DateTime.now().toIso8601String().substring(11, 19);

    return Container(
      padding: EdgeInsets.only(
        top: 4,
        bottom: 4,
        left: sentByMe ? 0 : 24,
        right: sentByMe ? 24 : 0,
      ),
      alignment: sentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: sentByMe
            ? const EdgeInsets.only(left: 30)
            : const EdgeInsets.only(right: 30),
        padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: sentByMe
              ? const BorderRadius.only(
                  topLeft: Radius.circular(23),
                  topRight: Radius.circular(23),
                  bottomLeft: Radius.circular(23),
                )
              : const BorderRadius.only(
                  topLeft: Radius.circular(23),
                  topRight: Radius.circular(23),
                  bottomRight: Radius.circular(23),
                ),
          color: sentByMe ? Colors.deepOrange : Colors.grey.shade900,
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: const Offset(2.0, 4.0),
              color: sentByMe ? Colors.deepOrange : Colors.white,
              blurRadius: 8.0,
              spreadRadius: 0.5,
            ),
          ],
        ),
        child: SizedBox(
          width: message.length > 25
              ? MediaQuery.of(context).size.width / 2.5
              : MediaQuery.of(context).size.width / 3.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: Text(
                  sender.toUpperCase(),
                  textAlign: TextAlign.start,
                  softWrap: true,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
              Text(
                message,
                textAlign: TextAlign.start,
                softWrap: true,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                    ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    currentTime,
                    softWrap: true,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.white54,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
