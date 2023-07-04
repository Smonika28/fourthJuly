// // class SellerSignupModel {
// //   String? name;
// //   String? email;
// //   String? phone;
// //   String? password;
// //   String? confirmPassword;
// //
// //   SellerSignupModel(
// //       {this.name, this.email, this.phone, this.password, this.confirmPassword});
// //
// //   SellerSignupModel.fromJson(Map<String, dynamic> json) {
// //     name = json['name'];
// //     email = json['email'];
// //     phone = json['phone'];
// //     password = json['password'];
// //     confirmPassword = json['confirm_password'];
// //   }
// //
// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = new Map<String, dynamic>();
// //     data['name'] = this.name;
// //     data['email'] = this.email;
// //     data['phone'] = this.phone;
// //     data['password'] = this.password;
// //     data['confirm_password'] = this.confirmPassword;
// //     return data;
// //   }
// // }
//
//
//
// class SellerSignupModel {
//   bool? status;
//   int? statusCode;
//   Data? data;
//   String? message;
//
//   SellerSignupModel({this.status, this.statusCode, this.data, this.message});
//
//   SellerSignupModel.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     statusCode = json['statusCode'];
//     data = json['data'] != null ? new Data.fromJson(json['data']) : null;
//     message = json['message'];
//   }
//
//   SellerSignupModel.withError(String errorMsg){
//     message = errorMsg;
//   }
//   insertToJson(Map<String, dynamic> json){
//     return SellerSignupModel.fromJson(json);
//   }
//   insertToError(String errorMsg){
//     return SellerSignupModel.withError(errorMsg);
//   }
// }
//
// class Data {
//   String? authToken;
//   User? user;
//
//   Data({this.authToken, this.user});
//
//   Data.fromJson(Map<String, dynamic> json) {
//     authToken = json['auth_token'];
//     user = json['user'] != null ? new User.fromJson(json['user']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['auth_token'] = this.authToken;
//     if (this.user != null) {
//       data['user'] = this.user!.toJson();
//     }
//     return data;
//   }
// }
//
// class User {
//   int? id;
//   String? firstName;
//   String? lastName;
//   String? email;
//   String? phone;
//   String? zipcode;
//   int? status;
//   String? profilePicture;
//   String? shopAddress;
//   String? shopName;
//   String ? password;
//   String ? cfPassword;
//
//
//   User(
//       {this.id,
//         this.firstName,
//         this.lastName,
//         this.email,
//         this.phone,
//         this.zipcode,
//         this.status,
//         this.profilePicture,
//         this.shopAddress,
//         this.shopName,
//         this.password,
//         this.cfPassword,
//       });
//
//   User.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     firstName = json['name'];
//     lastName = json['last_name'];
//     email = json['email'];
//     phone = json['phone'];
//     zipcode = json['zipcode'];
//     status = json['status'];
//     profilePicture = json['profile_picture'];
//     shopAddress = json['shop_address'];
//     shopName = json['shop_name'];
//     password = json['password'];
//     cfPassword = json['confirm_password'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['firstName']=this.firstName;
//     data['email'] = this.email;
//     data['phone'] = this.phone;
//     data['zipcode'] = this.zipcode;
//     data['status'] = this.status;
//     data['profile_picture'] = this.profilePicture;
//     data['shop_address'] = this.shopAddress;
//     data['shop_name'] = this.shopName;
//     data['password'] = this.password;
//     data['cfPassword'] = this.cfPassword;
//     return data;
//   }
// }

class SellerSignupModel {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  SellerSignupModel({this.status, this.statusCode, this.data, this.message});

  SellerSignupModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['statusCode'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  SellerSignupModel.withError(String errorMsg){
    message = errorMsg;
  }
  insertToJson(Map<String, dynamic> json){
    return SellerSignupModel.fromJson(json);
  }
  insertToError(String errorMsg){
    return SellerSignupModel.withError(errorMsg);
  }
}
class Data {
  String? authToken;
  User? user;

  Data({this.authToken, this.user});

  Data.fromJson(Map<String, dynamic> json) {
    authToken = json['auth_token'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['auth_token'] = this.authToken;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}
class User {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  int? phone;
  int? zipcode;
  int? password;
  int? confirmPassword;
  String? userType;
  User(
      {this.id,
  this.firstName,
        this.lastName,
        this.email,
        this.phone,
        this.zipcode,
        this.password,
        this.confirmPassword,
        this.userType});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phone = json['phone'];
    zipcode = json['zipcode'];
    password = json['password'];
    confirmPassword = json['confirm_password'];
    userType = json['user_type'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['zipcode'] = this.zipcode;
    data['password'] = this.password;
    data['confirm_password'] = this.confirmPassword;
    data['user_type'] = this.userType;
    return data;
  }
}
//
// class SellerSignupModel {
//   String? firstName;
//   String? lastName;
//   String? email;
//   int? phone;
//   int? zipcode;
//   int? password;
//   int? confirmPassword;
//   String? userType;
//
//   SellerSignupModel(
//       {this.firstName,
//         this.lastName,
//         this.email,
//         this.phone,
//         this.zipcode,
//         this.password,
//         this.confirmPassword,
//         this.userType});
//
//   SellerSignupModel.fromJson(Map<String, dynamic> json) {
//     firstName = json['first_name'];
//     lastName = json['last_name'];
//     email = json['email'];
//     phone = json['phone'];
//     zipcode = json['zipcode'];
//     password = json['password'];
//     confirmPassword = json['confirm_password'];
//     userType = json['user_type'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['first_name'] = this.firstName;
//     data['last_name'] = this.lastName;
//     data['email'] = this.email;
//     data['phone'] = this.phone;
//     data['zipcode'] = this.zipcode;
//     data['password'] = this.password;
//     data['confirm_password'] = this.confirmPassword;
//     data['user_type'] = this.userType;
//     return data;
//   }
// }