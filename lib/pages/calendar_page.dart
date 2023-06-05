import 'package:academia/controllers/calendar_page_controller.dart';
import 'package:academia/widgets/events_widget.dart';
import 'package:academia/widgets/task_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final calendarPageController = Get.put(CalendarPageController());
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(bottom: 16),
              child: TableCalendar(
                  headerStyle: HeaderStyle(
                    titleCentered: true,
                    titleTextStyle: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    rightChevronIcon: const Icon(CupertinoIcons.arrow_right),
                    leftChevronIcon: const Icon(CupertinoIcons.arrow_left),
                  ),
                  calendarStyle: const CalendarStyle(
                    selectedDecoration: BoxDecoration(color: Colors.grey),
                    todayDecoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.blue,
                    ),
                  ),
                  firstDay: DateTime.utc(2020, 1, 1),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                  onDaySelected: (selectedDay, focusedDay) {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            padding: const EdgeInsets.all(6),
                            height: MediaQuery.of(context).size.height * 0.75,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12))),
                            child: ListView(
                              padding: const EdgeInsets.only(
                                top: 12,
                                left: 8,
                                right: 8,
                              ),
                              children: [
                                const Text(
                                  "New Task Todo",
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ),

                                const SizedBox(
                                  height: 6,
                                ),
                                const Divider(
                                  thickness: 0.2,
                                  color: Colors.black,
                                ),

                                // show date
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        "Task Name",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Add task name...',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Description
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        "Description",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextField(
                                        maxLines: 4,
                                        decoration: InputDecoration(
                                          hintText: 'Add task description...',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      const Text(
                                        "Date",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      DecoratedBox(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 0.5,
                                          ),
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12),
                                          child: Text(
                                            '${DateFormat.yMMMMEEEEd().format(selectedDay)} ',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.grey[600],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                const SizedBox(
                                  height: 10,
                                ),

                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      const Text(
                                        "Time",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextField(
                                        onTap: () async {
                                          final TimeOfDay? newTime =
                                              await showTimePicker(
                                            context: context,
                                            initialTime:
                                                TimeOfDay(hour: 7, minute: 15),
                                          );
                                        },
                                        decoration: const InputDecoration(
                                          hintText: 'Select Time',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // schedule it button
                                // button to refresh all content
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    minimumSize: const Size(300, 60),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    'Schedule it',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  }),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 16,
                ),
                child: ListView(
                  children: const [
                    TaskCard(),
                    TaskCard(),
                    TaskCard(),

                    // school events
                    EventCard(),

                    // Dita's Event Card
                    EventCard(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
