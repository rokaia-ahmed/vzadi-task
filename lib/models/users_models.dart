class UsersModel {
  int? id;
  String? email;
  String? username;
  String? password;
  Name? name;
  String? phone;
  Address? address;

  UsersModel(
      {this.address,
        this.id,
        this.email,
        this.username,
        this.password,
        this.name,
        this.phone,
       });

  UsersModel.fromJson(Map<String, dynamic> json) {
    address =
    json['address'] != null ?  Address.fromJson(json['address']) : null;
    id = json['id'];
    email = json['email'];
    username = json['username'];
    password = json['password'];
    name = json['name'] != null ?  Name.fromJson(json['name']) : null;
    phone = json['phone'];
  }
}

class Address {
  String? city;
  String? street;
  int? number;
  String? zipcode;

  Address(
      { this.city, this.street, this.number, this.zipcode});

  Address.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    street = json['street'];
    number = json['number'];
    zipcode = json['zipcode'];
  }

}


class Name {
  String? firstname;
  String? lastname;

  Name({this.firstname, this.lastname});

  Name.fromJson(Map<String, dynamic> json) {
    firstname = json['firstname'];
    lastname = json['lastname'];
  }

}