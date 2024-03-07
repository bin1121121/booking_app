import 'package:cloud_firestore/cloud_firestore.dart';

class JobData {
  String? jobId;
  String? jobTitle;
  String? jobLevel;
  String? salary;
  List? requirements;
  String? company;
  String? logoCompanyUrl;
  String? location;
  Timestamp? createdAt;
  String? userReference;
  JobData(
    this.jobId,
    this.jobTitle,
    this.jobLevel,
    this.salary,
    this.requirements,
    this.company,
    this.logoCompanyUrl,
    this.location, {
    this.createdAt,
    this.userReference,
  });

  // factory JobData.fromFirestore(
  //   DocumentSnapshot<Map<String, dynamic>> snapshot,
  //   SnapshotOptions? options,
  // ) {
  //   final data = snapshot.data();
  //   return JobData();
  // }

  // Map<String, dynamic> toJson() {
  //   return {
  //     if (id != null) 'id': id,
  //     if (caption != null) 'caption': caption,
  //     if (imageList != null) 'imageList': imageList,
  //     if (createdAt != null) 'createdAt': createdAt,
  //     if (userReference != null) 'userReference': userReference,
  //   };
  // }
}
