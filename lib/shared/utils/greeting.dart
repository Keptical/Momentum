

String getGreeting() {
  final hour = DateTime.now().hour;

  if (hour < 12) {
    return 'Good morning';
  } 
  if (hour < 18) {
    return 'Good afternoon';
  }
  if (hour < 22) {
    return 'Good evening';
  }
  return 'Good night';
}