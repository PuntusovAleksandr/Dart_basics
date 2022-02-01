abstract class User {
  final String email;

  User(this.email);
}

mixin ParceMAil on User {
  String getMailSystem() {
    return email.split("@")[1];
  }
}

class AdminUser extends User with ParceMAil {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

class UserManager<T extends User> {
  List<T> users = <T>[];

  void addUser(T user) {
    users.add(user);
  }

  void removeUser(T user) {
    for (var element in users) {
      if (element.email == user.email) {
        users.remove(user);
        return;
      }
    }
  }

  void printAllUsers() {
    users.forEach((element) {
      if (element is GeneralUser) {
        print(element.email);
      } else {
        if (element is AdminUser) {
          print((element).getMailSystem());
        }
      }
    });
  }
}
