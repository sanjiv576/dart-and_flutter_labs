void main() {
  showWeekdays();
}

// Create an empty list of type strings called days. Use the add method to add names of 7 days and print all days.
void showWeekdays() {
  List<String> days = [];
  days.add('Sunday');
  days.add('Monday');
  days.add('Tuesday');
  days.add('Wednesday');
  days.add('Thursday');
  days.add('Friday');
  days.add('Saturday');

  for (String weekday in days) {
    print(weekday);
  }
}
