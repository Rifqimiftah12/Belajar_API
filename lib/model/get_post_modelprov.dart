import 'package:flutter/foundation.dart';

class Post {
  //definisikan key nya
  final int fid;
  final String provinsi;
  final int kasus_posi;
  final int kasus_semb;
  final int kasus_meni;

  //definisikan ke object
  Post(
      {@required this.fid,
      @required this.provinsi,
      @required this.kasus_posi,
      @required this.kasus_semb,
      @required this.kasus_meni});

  //menampung data dengan format json
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      fid: json['attributes']['Fid'] as int,
      provinsi: json['attributes']['Provinsi'] as String,
      kasus_posi: json['attributes']['Kasus_Posi'] as int,
      kasus_semb: json['attributes']['Kasus_Semb'] as int,
      kasus_meni: json['attributes']["Kasus_Meni"] as int,
    );
  }
}
