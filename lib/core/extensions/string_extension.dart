extension StringValidator on String? {
  bool isNullOrEmpty() => this == null || this == '';
  bool isValidEmail() {
    RegExp emailRegExp = RegExp(
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
    );
    return emailRegExp.hasMatch(this!);
  }

  bool isStrongPassword() {
    final RegExp passwordRegex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$');
    return (passwordRegex.hasMatch(this!));
  }
}
