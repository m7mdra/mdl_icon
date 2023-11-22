// To parse this JSON data, do
//
//     final icon = iconFromJson(jsonString);

import 'dart:convert';

Icon iconFromJson(String str) => Icon.fromJson(json.decode(str));

String iconToJson(Icon data) => json.encode(data.toJson());

class Icon {
  int d;
  List<I> i;
  DateTime r;
  List<T> t;
  V v;

  Icon({
    required this.d,
    required this.i,
    required this.r,
    required this.t,
    required this.v,
  });

  factory Icon.fromJson(Map<String, dynamic> json) => Icon(
        d: json["d"],
        i: List<I>.from(json["i"].map((x) => I.fromJson(x))),
        r: DateTime.parse(json["r"]),
        t: List<T>.from(json["t"].map((x) => T.fromJson(x))),
        v: vValues.map[json["v"]]!,
      );

  Map<String, dynamic> toJson() => {
        "d": d,
        "i": List<dynamic>.from(i.map((x) => x.toJson())),
        "r": r.toIso8601String(),
        "t": List<dynamic>.from(t.map((x) => x.toJson())),
        "v": vValues.reverse[v],
      };
}

class I {
  List<String> al;
  String cp;
  String n;
  V v;
  A a;
  List<int> t;
  String p;
  List<String> st;

  I({
    required this.al,
    required this.cp,
    required this.n,
    required this.v,
    required this.a,
    required this.t,
    required this.p,
    required this.st,
  });

  factory I.fromJson(Map<String, dynamic> json) => I(
        al: List<String>.from(json["al"].map((x) => x)),
        cp: json["cp"],
        n: json["n"],
        v: vValues.map[json["v"]]!,
        a: aValues.map[json["a"]]!,
        t: List<int>.from(json["t"].map((x) => x)),
        p: json["p"],
        st: List<String>.from(json["st"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "al": List<dynamic>.from(al.map((x) => x)),
        "cp": cp,
        "n": n,
        "v": vValues.reverse[v],
        "a": aValues.reverse[a],
        "t": List<dynamic>.from(t.map((x) => x)),
        "p": p,
        "st": List<dynamic>.from(st.map((x) => x)),
      };
}

enum A { C4_EA5584 }

final aValues = EnumValues({"c4ea5584": A.C4_EA5584});

enum V { THE_0263 }

final vValues = EnumValues({"0.2.63": V.THE_0263});

class T {
  String name;
  String slug;

  T({
    required this.name,
    required this.slug,
  });

  factory T.fromJson(Map<String, dynamic> json) => T(
        name: json["name"],
        slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "slug": slug,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
