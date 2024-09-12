import 'dart:convert';
AddAttendanceBody addAttendanceBodyFromJson(String str) => AddAttendanceBody.fromJson(json.decode(str));
String addAttendanceBodyToJson(AddAttendanceBody data) => json.encode(data.toJson());
class AddAttendanceBody {
  AddAttendanceBody({
      num? machineNo, 
      num? employeeId, 
      String? attendanceTime, 
      String? leaveTime, 
      num? longitude, 
      num? latitude,}){
    _machineNo = machineNo;
    _employeeId = employeeId;
    _attendanceTime = attendanceTime;
    _leaveTime = leaveTime;
    _longitude = longitude;
    _latitude = latitude;
}

  AddAttendanceBody.fromJson(dynamic json) {
    _machineNo = json['machineNo'];
    _employeeId = json['employeeId'];
    _attendanceTime = json['attendanceTime'];
    _leaveTime = json['leaveTime'];
    _longitude = json['longitude'];
    _latitude = json['latitude'];
  }
  num? _machineNo;
  num? _employeeId;
  String? _attendanceTime;
  String? _leaveTime;
  num? _longitude;
  num? _latitude;

  num? get machineNo => _machineNo;
  num? get employeeId => _employeeId;
  String? get attendanceTime => _attendanceTime;
  String? get leaveTime => _leaveTime;
  num? get longitude => _longitude;
  num? get latitude => _latitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['machineNo'] = _machineNo;
    map['employeeId'] = _employeeId;
    map['attendanceTime'] = _attendanceTime;
    map['leaveTime'] = _leaveTime;
    map['longitude'] = _longitude;
    map['latitude'] = _latitude;
    return map;
  }

}