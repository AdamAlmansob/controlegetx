// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_import, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, unused_local_variable

import 'package:controlgetx/control/messages/secondepagemessage_controller.dart';
import 'package:controlgetx/core/constant/color.dart';
import 'package:controlgetx/view/widget/custmoutbondback.dart';
import 'package:controlgetx/view/widget/message_widget/second/mybubblechatwidget.dart';
import 'package:controlgetx/view/widget/message_widget/second/senderbubblechatwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SecondePageMessage extends GetView<SecondePageMessageControllerImp> {
  const SecondePageMessage({super.key});

  @override
  Widget build(BuildContext context) {
    late bool invisable_send = true;
    late String _inputValue = '';
    // new new
    TextEditingController messageController = TextEditingController();
    List<String> chatList = [];
    //
    TextEditingController _controller = TextEditingController();
    SecondePageMessageControllerImp controller =
        Get.put(SecondePageMessageControllerImp());
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0,
          //
          //00000000000000000000
          title: Row(
            children: [
              ///
              ///
              Container(
                width: 32,
                height: 32,
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.grey.withOpacity(0.3),
                  image: DecorationImage(
                    image: AssetImage(
                        '{widget.data.shopLogoUrl}'), // data.shopLogoUrl
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              ///
              ///
              SizedBox(
                width: 30,
              ),
              Text('{widget.data.shopName}',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600)),
            ],
          ),
          //0000000000000000000000000000000
          leading: const OutBondBack(),
          //0000000000000000000
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: AppColor.primaryColor,
            ),
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        //111111111111111111111111111
        body: Column(
          children: [
            // Section 1 - Chat
            //
            Expanded(
              child: Container(
                child: ListView(
                  padding: EdgeInsets.all(16),
                  physics: BouncingScrollPhysics(),
                  reverse: true,
                  children: [
                    MyBubbleChatWidget(
                      chat:
                          'أن نستمر في تطوير فكرتنا في العمل على النظام المحاسبي ثم الإستمرار بمراجعة دكتورنا الغالي على فترات  ',
                      time: '10:58',
                    ),
                    SenderBubbleChatWidget(
                      chat: 'وما تفكر به ',
                      time: '10:55',
                    ),
                    MyBubbleChatWidget(
                      chat:
                          'طبعاً العمل في المشروع هو اللبنة الأولى للعمل ضمن فريق ولدي القدرة للعمل في أي وقت ',
                      time: '10:52',
                    ),
                    SenderBubbleChatWidget(
                      chat: 'هل لديك القدرة على التواجد في سوق العمل ؟',
                      time: '10:50',
                    ),
                    MyBubbleChatWidget(
                      chat: 'بالضبط أنا المبرمج ادم من قام بالعمل ',
                      time: '10:49',
                    ),
                    SenderBubbleChatWidget(
                      chat: 'من قام بالعمل ',
                      time: '10:48',
                    ),

                    // SenderBubbleChatWidget(chat: MassageNew , time: time)
                  ],
                ),
              ),

              //new new
              /*
                  Container(
                child: ListView.builder(
                  itemCount: chatList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(chatList[index]),
                    );
                  },
                ),
              ),*/
            ),

            // Section 2 - Chat Bar
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                border:
                    Border(top: BorderSide(color: Colors.redAccent, width: 1)),
              ),
              //
              //

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TextField
                  Expanded(
                    child: TextFormField(
                      //controller: _controller,

                      // NEW
                      controller: messageController,
                      onChanged: (value) {
                        _inputValue = Value as String;
                        invisable_send = false;
                      },
                      /*
                onTap: () {
                            setState(() {
                              invisable_send = false;
                            });
                          },
                          */
                      //onChanged: (value) {
                      // _inputValue = value;
                      // invisable_send = false;
                      //},
                      maxLines: null,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            chatList.add(messageController.text +
                                ", ${DateTime.now().minute.toString()}");
                            messageController.clear();
                            // _controller.clear();
                            // new
                          },
                          icon: Icon(
                            Icons.message,
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'نص المراسلة ...',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black12, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 230, 202, 202),
                              width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  // Send Button
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 42,
                    height: 42,
                    child: ElevatedButton(
                      onPressed: () {
                        chatList.add(messageController.text +
                            ", ${DateTime.now().minute.toString()}");
                        messageController.clear();
                        // setState(() {
                        //_controller.clear();
                        // });
                        //if (_inputValue.isNotEmpty) {
                        //new soon
                        //widget.data.message.indexOf(_inputValue); //add
                        // Future.delayed(Duration(seconds: 3), () {});
                        // _controller.clear();
                        //}

                        // function send massage
                      },
                      child: invisable_send
                          ? Icon(Icons.send_rounded,
                              color: Colors.white, size: 18)
                          : Icon(Icons.send_rounded,
                              color: Colors.black, size: 18),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        padding: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        shadowColor: Colors.transparent,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).viewInsets.bottom,
              color: Colors.transparent,
            ),
          ],
        ));
  }
}
/*
// ignore_for_file: override_on_non_overriding_member, file_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, library_private_types_in_public_api, non_constant_identifier_names, prefer_final_fields, annotate_overrides, prefer_const_constructors, unnecessary_string_interpolations, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marketing_platform_new/mode/Model/Massage.dart';
//import 'package:flutter_svg/flutter_svg.dart';

//import 'package:intl/intl.dart';
/*import 'package:marketky/constant/app_color.dart';
import 'package:marketky/core/model/Message.dart';*/

class MessageDetailPage extends StatefulWidget {
  final Message data;

  MessageDetailPage({
    required this.data,
  });

  @override
  _MessageDetailPageState createState() => _MessageDetailPageState();
}

class _MessageDetailPageState extends State<MessageDetailPage> {
  @override
  late bool invisable_send = true;
  late String _inputValue = '';

  TextEditingController _controller = TextEditingController();

  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: false,
              backgroundColor: Colors.white,
              elevation: 0,
              //
              //00000000000000000000
              title: Row(
                children: [
                  ///
                  ///
                  Container(
                    width: 32,
                    height: 32,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.grey.withOpacity(0.3),
                      image: DecorationImage(
                        image: AssetImage('${widget.data.shopLogoUrl}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  ///
                  ///
                  SizedBox(
                    width: 30,
                  ),
                  Text('${widget.data.shopName}',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              //0000000000000000000000000000000
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_left),
              ),
              //0000000000000000000
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(1),
                child: Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.amberAccent,
                ),
              ),
              systemOverlayStyle: SystemUiOverlayStyle.light,
            ),
            //111111111111111111111111111
            body: Column(
              children: [
                // Section 1 - Chat
                //
                Expanded(
                  child: Container(
                    child: ListView(
                      padding: EdgeInsets.all(16),
                      physics: BouncingScrollPhysics(),
                      reverse: true,
                      children: [
                        MyBubbleChatWidget(
                          chat:
                              'أن نستمر في تطوير فكرتنا في العمل على النظام المحاسبي ثم الإستمرار بمراجعة دكتورنا الغالي على فترات  ',
                          time: '10:48',
                        ),
                        SenderBubbleChatWidget(
                          chat: 'وما تفكرون به ',
                          time: '10:48',
                        ),
                        MyBubbleChatWidget(
                          chat:
                              'طبعاً العمل في المشروع هو اللبنة الأولى للعمل ضمن فريق ولدينا القدرة للعمل في أي وقت ',
                          time: '10:48',
                        ),
                        SenderBubbleChatWidget(
                          chat: 'هل لديكم القدرة على التواجد في سوق العمل ؟',
                          time: '10:48',
                        ),
                        MyBubbleChatWidget(
                          chat: 'بالضبط نحن فريق المناقشة من قام بالعمل ',
                          time: '10:48',
                        ),
                        SenderBubbleChatWidget(
                          chat: 'من قام بالعمل ',
                          time: '10:48',
                        ),
                        // SenderBubbleChatWidget(chat: MassageNew , time: time)
                      ],
                    ),
                  ),
                ),

                // Section 2 - Chat Bar
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.redAccent, width: 1)),
                  ),
                  //
                  //

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // TextField
                      Expanded(
                        child: TextField(
                          controller: _controller,
                          /*
                onTap: () {
                            setState(() {
                              invisable_send = false;
                            });
                          },
                          */
                          onChanged: (value) {
                            setState(() {
                              _inputValue = value;
                              invisable_send = false;
                            });
                          },
                          maxLines: null,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                // new
                              },
                              icon: Icon(
                                Icons.message,
                                color: Colors.black,
                              ),
                            ),
                            hintText: 'نص المراسلة ...',
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 14),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black12, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      // Send Button
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 42,
                        height: 42,
                        child: ElevatedButton(
                          onPressed: () {
                            // setState(() {
                            //   _controller.clear();
                            // });
                            if (_inputValue.isNotEmpty) {
                              setState(() {
                                widget.data.message.indexOf(_inputValue); //add
                                Future.delayed(Duration(seconds: 3), () {
                                  setState(() {});
                                });
                              });
                              _controller.clear();
                            }

                            // function send massage
                          },
                          child: invisable_send
                              ? Icon(Icons.send_rounded,
                                  color: Colors.white, size: 18)
                              : Icon(Icons.send_rounded,
                                  color: Colors.black, size: 18),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            padding: EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            shadowColor: Colors.transparent,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).viewInsets.bottom,
                  color: Colors.transparent,
                ),
              ],
            )));
  }
}

class MyBubbleChatWidget extends StatelessWidget {
  final String chat;
  final String time;
  final String chatnow = '';
  final String nowtime = '';

  MyBubbleChatWidget({required this.chat, required this.time});
  /*String getcurrentTime(){
	DateTime now =DateTime.now();
	String formattedTime =DateFormat('HH:mm:ss').format(now);
return formattedTime; }*/

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '$time',
            style: TextStyle(color: Colors.deepOrange.withOpacity(0.5)),
          ),
          Container(
            margin: EdgeInsets.only(left: 16),
            width: MediaQuery.of(context).size.width * 65 / 100,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(
              '$chat',
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.black, height: 150 / 100),
            ),
            decoration: BoxDecoration(
              color: Colors.blueAccent.withOpacity(0.5),
              //color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SenderBubbleChatWidget extends StatelessWidget {
  final String chat;
  final String time;

  SenderBubbleChatWidget({
    required this.chat,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 16),
            width: MediaQuery.of(context).size.width * 65 / 100,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(
              '$chat',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black, height: 150 / 100),
            ),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              //color: Colors.greenAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          Text(
            '$time',
            style: TextStyle(color: Colors.blue.withOpacity(0.5)),
          ),
        ],
      ),
    );
  }
}
////// 
 */
