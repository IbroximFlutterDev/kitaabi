class User {

  String user_name;
  String user_email;
  String user_password;
  String user_age;
  String user_country;

  User(

      this.user_name,
      this.user_email,
      this.user_password,
      this.user_age,
      this.user_country,
      );

  factory User.fromJson(Map<String, dynamic> json) {
    return User(

      json["user_name"],
      json["user_email"],
      json["user_password"],
      json["user_age"],
      json["user_country"],
    );
  }

  Map<String, dynamic> toJson() => {

    'user_name': user_name,
    'user_email': user_email,
    'user_password': user_password,
    'user_age': user_age,
    'user_country': user_country,
  };
}
