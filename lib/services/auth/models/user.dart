class UserProfile {
  String? address;
  dynamic email;
  dynamic password;
  dynamic phone;
  dynamic username;
  dynamic uId;

  UserProfile(this.address, this.email, this.password, this.phone, this.username,);
  UserProfile.fromJson(Map<dynamic, dynamic>? json) {
    email= json!['email'];
    address= json['address'];
    username= json['username'] ;
    password= json['password'];
    phone= json['phone'];
    uId=json['uId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    data['phone'] = phone;
    data['username'] = username;
    data['address'] = address;
    data['uId']=uId;
    return data;
  }
}




