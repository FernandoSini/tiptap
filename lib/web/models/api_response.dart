// // ignore: file_names
// class ApiResponse<T> {
//   String? message;
//   int? status;
//   T? result;
//   APIResponse({this.message, this.status, this.result});

//   factory APIResponse.userFromJson(Map<String, dynamic> json) {
//     var user;
//     user = json["result"] !=null ? User.fromJson(json["result"]):null;
//     var result = APIResponse<T>(message: json["message"], status: json["status"], result: user);
//     return result;
//   }
//   factory APIResponse.fromJson(Map<String, dynamic> json){
//     var result = APIResponse<T>(
//       message: json["message"],
//       status: json["status"],
//       result: json["result"],
//     );
//     return result;
//   }
//  static List<Object> parseJsonToList(String responseBody){
  // final parsed = json.decode(responseBody).cast<Map<String,dynamic>>();
  //return parsed.map<Object>((json)=> Object.fromJson(json)).toList();
// }
//  static parseListToJson(List<Objeto> listObjeto){
// return jsonEncode(listObjeto.map((e)=> e.toJson()).toList());}

// }
