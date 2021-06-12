String timeOfDay() {
  final time = DateTime.now();

  if (time.hour < 12) {
    return 'Good Morning';
  } else if (time.hour >= 12) {
    if (time.hour < 16) {
      return 'Good Afternoon';
    }
  }

  return 'Good Evening';
}
