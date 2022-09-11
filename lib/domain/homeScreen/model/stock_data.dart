import 'package:json_annotation/json_annotation.dart';

part 'stock_data.g.dart';

@JsonSerializable()
class StockData {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'tag')
  String? tag;
  @JsonKey(name: 'color')
  String? color;
  @JsonKey(name: 'criteria')
  List<Criterion> criteria;

  StockData({
    this.id,
    this.name,
    this.tag,
    this.color,
    this.criteria = const [],
  });

  factory StockData.fromJson(Map<String, dynamic> json) {
    return _$StockDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StockDataToJson(this);
}

@JsonSerializable()
class Criterion {
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'text')
  String? text;
  // @JsonKey(name: 'variable')
  // Variable? variable;
  Criterion({
    this.type,
    this.text,
    // this.variable,
  });

  factory Criterion.fromJson(Map<String, dynamic> json) {
    return _$CriterionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CriterionToJson(this);
}

// @JsonSerializable()
// class Variable {
//   The1? the1;
//   The2? the2;
//   The2? the3;
//   The1? the4;
//   Variable({
//     this.the1,
//     this.the2,
//     this.the3,
//     this.the4,
//   });

//   factory Variable.fromJson(Map<String, dynamic> json) {
//     return _$VariableFromJson(json);
//   }

//   Map<String, dynamic> toJson() => _$VariableToJson(this);
// }

// @JsonSerializable()
// class The1 {
//   String? type;
//   List<int> values;
//   String? studyType;
//   String? parameterName;
//   int? minValue;
//   int? maxValue;
//   int? defaultValue;
//   The1({
//     this.type,
//     this.values = const [],
//     this.studyType,
//     this.parameterName,
//     this.minValue,
//     this.maxValue,
//     this.defaultValue,
//   });

//   factory The1.fromJson(Map<String, dynamic> json) {
//     return _$The1FromJson(json);
//   }

//   Map<String, dynamic> toJson() => _$The1ToJson(this);
// }

// @JsonSerializable()
// class The2 {
//   String? type;
//   List<double> values;
//   The2({
//     this.type,
//     this.values = const [],
//   });

//   factory The2.fromJson(Map<String, dynamic> json) {
//     return _$The2FromJson(json);
//   }

//   Map<String, dynamic> toJson() => _$The2ToJson(this);
// }
