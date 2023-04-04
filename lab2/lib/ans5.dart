void main() {
  showInformation();
}

// Create a map with name, address, age, country keys, and store values.
// Update country name to other country and print all keys and values.

void showInformation() {
  Map<String, String> details = {
    'name': 'Sanjiv Shrestha',
    'address': 'Kathmandu, Nepal',
    'age': '21',
    'country': 'Nepal'
  };

  details['country'] = 'The United Kingdom';

  details.forEach((key, value) {
    print('$key ==> $value');
  });
}
