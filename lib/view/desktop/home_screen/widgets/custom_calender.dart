import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../utils/app_colors.dart';

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({super.key});

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  // DateTime? _selectedDate;
  DateTime? _rangeStartDate;
  DateTime? _rangeEndDate;
  DateTime _currentDate = DateTime.now();
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOn;

  @override
  void initState() {
    super.initState();
  }

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      _currentDate = day;
      _rangeSelectionMode = RangeSelectionMode.toggledOff;
    });
  }

  void _onRangeSelected(start, end, focusedDate) {
    setState(() {
      _rangeStartDate = start;
      _rangeEndDate = end;
      _rangeSelectionMode = RangeSelectionMode.toggledOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale: "en_US",
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: _currentDate,
      startingDayOfWeek: StartingDayOfWeek.monday,
      rangeSelectionMode: _rangeSelectionMode,
      availableCalendarFormats: const {
        CalendarFormat.month: 'Month',
        CalendarFormat.week: 'Week',
      },
      availableGestures: AvailableGestures.horizontalSwipe,
      rowHeight: 40,
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: false,
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        //leftChevronPadding: EdgeInsets.zero,
        leftChevronMargin: EdgeInsets.zero,
        rightChevronMargin: EdgeInsets.zero,
      ),
      daysOfWeekStyle: const DaysOfWeekStyle(
        weekdayStyle:
            TextStyle(color: AppColors.textColor2, fontWeight: FontWeight.bold),
        weekendStyle:
            TextStyle(color: AppColors.textColor2, fontWeight: FontWeight.bold),
      ),
      rangeStartDay: _rangeStartDate,
      rangeEndDay: _rangeEndDate,
      calendarStyle: CalendarStyle(
        rangeStartDecoration: const BoxDecoration(
          color: AppColors.activeButtonColor,
          shape: BoxShape.circle,
        ),

        selectedDecoration: BoxDecoration(
            border: Border.all(width: 1, color: AppColors.activeButtonColor),
            // color: AppColors.activeButtonColor,
            shape: BoxShape.circle),
        selectedTextStyle: const TextStyle(color: AppColors.activeButtonColor),
        // todayDecoration: const BoxDecoration(
        //     color: AppColors.activeButtonColor, shape: BoxShape.circle),
        rangeEndDecoration: const BoxDecoration(
          color: AppColors.activeButtonColor,
          shape: BoxShape.circle,
        ),
        rangeHighlightColor: AppColors.highlitedGreen,
        // rangeHighlightScale: 1,
        rangeStartTextStyle: const TextStyle(color: AppColors.white),
        rangeEndTextStyle: const TextStyle(color: AppColors.white),
        withinRangeTextStyle:
            const TextStyle(color: AppColors.activeButtonColor),
        // withinRangeDecoration: BoxDecoration(
        //   shape: BoxShape.circle,
        //   border: Border.all(
        //     width: 1,
        //     color: AppColors.activeButtonColor,
        //   ),
        //   //borderRadius: BorderRadius.circular(90),
        // ),
      ),
      selectedDayPredicate: (day) => isSameDay(day, _currentDate),
      onDaySelected: _onDaySelected,
      onRangeSelected: (start, end, focusedDay) =>
          _onRangeSelected(start, end, focusedDay),
    );
  }
}
