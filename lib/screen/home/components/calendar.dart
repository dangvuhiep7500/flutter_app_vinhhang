import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/home/components/event.dart';
import 'package:flutter_app_vinhhang/screen/login/components/button_default.dart';
import 'package:flutter_app_vinhhang/utils/size_config.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

import '../../../utils/theme.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  Map<DateTime, List<Event>>? selectedEvents;
  CalendarFormat format = CalendarFormat.week;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  final TextEditingController _eventController = TextEditingController();
  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents![date] ?? [];
  }

  @override
  void dispose() {
    _eventController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TableCalendar(
          focusedDay: selectedDay,
          firstDay: DateTime(1990),
          lastDay: DateTime(2050),
          locale: Localizations.localeOf(context).languageCode,
          calendarFormat: format,
          onFormatChanged: (CalendarFormat _format) {
            setState(() {
              format = _format;
            });
          },
          startingDayOfWeek: StartingDayOfWeek.sunday,
          daysOfWeekVisible: true,

          //Day Changed
          onDaySelected: (DateTime selectDay, DateTime focusDay) {
            setState(() {
              selectedDay = selectDay;
              focusedDay = focusDay;
            });
          },
          selectedDayPredicate: (DateTime date) {
            return isSameDay(selectedDay, date);
          },

          eventLoader: _getEventsfromDay,

          //To style the Calendar
          calendarStyle: CalendarStyle(
            isTodayHighlighted: true,
            selectedDecoration: BoxDecoration(
              color: kColorGreen,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5.0),
            ),
            selectedTextStyle: const TextStyle(color: kColorWhite),
            todayDecoration: BoxDecoration(
              color: kColorRed,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5.0),
            ),
            defaultDecoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5.0),
            ),
            weekendDecoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          headerStyle: HeaderStyle(
            formatButtonVisible: true,
            titleCentered: true,
            formatButtonShowsNext: false,
            formatButtonDecoration: BoxDecoration(
              color: kColorGreen,
              borderRadius: BorderRadius.circular(5.0),
            ),
            formatButtonTextStyle: const TextStyle(
              color: kColorWhite,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: ButtonDefault(
            text: "Thêm ghi chú",
            color: kColorGreen,
            onpress: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Thêm sự kiện"),
                content: SizedBox(
                  height: getProportionateScreenWidth(100),
                  child: Column(
                    children: [
                      TextFormField(
                        style: const TextStyle(fontSize: 20),
                        controller: _eventController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Nhập nội dung',
                          filled: true,
                          hintStyle: TextStyle(color: kColorGrey),
                        ),
                      ),
                      // TextFormField(
                      //   controller: _eventController,
                      // ),
                      Text(DateFormat("EEEE, dd MMMM, yyyy", "vi")
                          .format(selectedDay)),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    child: const Text("Hủy"),
                    onPressed: () => Navigator.pop(context),
                  ),
                  TextButton(
                    child: const Text("Thêm"),
                    onPressed: () {
                      if (_eventController.text.isEmpty) {
                      } else {
                        if (selectedEvents![selectedDay] != null) {
                          selectedEvents![selectedDay]!.add(
                            Event(
                              DateTime.now(),
                              title: _eventController.text,
                            ),
                          );
                        } else {
                          selectedEvents![selectedDay] = [
                            Event(DateTime.now(), title: _eventController.text)
                          ];
                        }
                      }
                      Navigator.pop(context);
                      _eventController.clear();
                      setState(() {});
                      return;
                    },
                  ),
                ],
              ),
            ),
            borderRadius: 5,
          ),
        ),
        SizedBox(
          height: getProportionateScreenWidth(30),
        ),
        ..._getEventsfromDay(selectedDay).map(
          (Event event) => ListTile(
            title: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(DateFormat("dd MMM", "vi").format(selectedDay)),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text(
                        event.title,
                        style: const TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 18,
                          color: kColorWhite,
                          height: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
