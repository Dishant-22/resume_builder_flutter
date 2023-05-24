class ContactDetailModel {
  String? emailAddress;
  String? mobileNumber;

  ContactDetailModel({this.emailAddress, this.mobileNumber});

  ContactDetailModel.fromJson(Map<String, dynamic> json) {
    emailAddress = json['emailAddress'] ?? '';
    mobileNumber = json['mobileNumber'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['emailAddress'] = emailAddress;
    data['mobileNumber'] = mobileNumber;
    return data;
  }
}