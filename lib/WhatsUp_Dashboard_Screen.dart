import 'package:clubr_task/WhatsUp_Dashboard/whatsup_dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WhatsUp_Dashboard_Screen extends StatefulWidget {
  const WhatsUp_Dashboard_Screen({super.key});

  @override
  State<WhatsUp_Dashboard_Screen> createState() =>
      _WhatsUp_Dashboard_ScreenState();
}

class _WhatsUp_Dashboard_ScreenState extends State<WhatsUp_Dashboard_Screen> {
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffcfcfc),
        body: BlocConsumer<WhatsupDashboardBloc, WhatsupDashboardState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          size: 25,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Whatsapp Broadcast',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: DropdownButtonFormField(
                        decoration: const InputDecoration(
                          hintText: "Select Event",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                        ),
                        items: const [
                          DropdownMenuItem(
                              value: "event1", child: Text("Event 1")),
                          DropdownMenuItem(
                              value: "event2", child: Text("Event 2")),
                        ],
                        onChanged: (value) {},
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                          label: Text('Name'),
                          labelStyle: TextStyle(
                            color: Colors.grey.shade400,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300)),
                          suffixIcon: Icon(
                            Icons.person_outline_outlined,
                            color: Colors.grey.shade400,
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Campaigns',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade300)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/image/clubr.PNG',
                                      height: 60,
                                    )),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Sunday Nights - Ft Safar',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                          'assets/image/right.png',
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Image.asset(
                                          'assets/image/menu.png',
                                          height: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        size: 15,
                                        color: Colors.grey.shade600,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '22 Mar, 24',
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 8),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Icon(
                                        Icons.access_time,
                                        size: 15,
                                        color: Colors.grey.shade600,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '10:28pm',
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 8),
                                      ),
                                    ]),
                                  ],
                                )
                              ],
                            ),
                            Divider(
                              color: Colors.grey.shade400,
                            ),
                            Text(
                              'Analytics',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 13),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Messages sent',
                                      style: TextStyle(
                                          color: Colors.grey.shade500,
                                          fontSize: 8),
                                    ),
                                    Text(
                                      '602',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Messages Delivered',
                                      style: TextStyle(
                                          color: Colors.grey.shade500,
                                          fontSize: 8),
                                    ),
                                    Text(
                                      '582',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Messages Read',
                                      style: TextStyle(
                                          color: Colors.grey.shade500,
                                          fontSize: 8),
                                    ),
                                    Text(
                                      '226(36%)',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade300)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/image/clubr.PNG',
                                      height: 60,
                                    )),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Sunday Nights - Ft Safar',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                          'assets/image/right.png',
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Image.asset(
                                          'assets/image/menu.png',
                                          height: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        size: 15,
                                        color: Colors.grey.shade600,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '20 Mar, 24',
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 8),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Icon(
                                        Icons.access_time,
                                        size: 15,
                                        color: Colors.grey.shade600,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '10:28pm',
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 8),
                                      ),
                                    ]),
                                  ],
                                )
                              ],
                            ),
                            Divider(
                              color: Colors.grey.shade400,
                            ),
                            Text(
                              'Analytics',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 13),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Messages sent',
                                      style: TextStyle(
                                          color: Colors.grey.shade500,
                                          fontSize: 8),
                                    ),
                                    Text(
                                      '602',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Messages Delivered',
                                      style: TextStyle(
                                          color: Colors.grey.shade500,
                                          fontSize: 8),
                                    ),
                                    Text(
                                      '582',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Messages Read',
                                      style: TextStyle(
                                          color: Colors.grey.shade500,
                                          fontSize: 8),
                                    ),
                                    Text(
                                      '226(36%)',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Maps',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            height: 120,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black
                                        .withOpacity(0.2), // Shadow color
                                    spreadRadius:
                                        8, // How much the shadow spreads
                                    blurRadius: 10, // Softness of the shadow
                                    offset: Offset(5, 5),
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xfff9ebde)),
                                    child: Icon(
                                      Icons.my_library_books_outlined,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Text(
                                    'Bookings',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            height: 120,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black
                                        .withOpacity(0.2), // Shadow color
                                    spreadRadius:
                                        8, // How much the shadow spreads
                                    blurRadius: 10, // Softness of the shadow
                                    offset: Offset(5, 5),
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xffffecee)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Image.asset(
                                        'assets/image/table_reservation.png',
                                        color: Colors.pinkAccent,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Table Reservation',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.vertical(top: Radius.circular(20)),
                            ),
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: 250,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            children: [
                                              Icon(Icons.library_books_outlined),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Test Campaign',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14),
                                              )
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          color: Colors.grey.shade400,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            children: [
                                              Icon(Icons.edit),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Edit',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14),
                                              )
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          color: Colors.grey.shade400,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            children: [
                                              Icon(Icons.delete_outline_outlined),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Delete',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: const Text('Show Modal BottomSheet'),
                      ),
                    ),
                  ],
                ),
              );
            },
            listener: (context, state) {}),
      ),
    );
  }
}
