class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? seconName;

  UserModel({this.uid, this.email, this.firstName, this.seconName});

  // reciveing data form server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      seconName: map['secondName'],
    );
  }

  // sending data to our server

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': seconName,
    };
  }
}
