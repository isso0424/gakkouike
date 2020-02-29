/// 教科ごとの欠課を管理するクラス。
class Subject {

  /// 教科の名前
  String name;
  /// 休んだ日
  List<DateTime> absenceDates;
  /// 予定されている授業の数
  int scheduledClassNum;

  Subject({this.name, this.absenceDates, this.scheduledClassNum}){
    this.absenceDates ??= new List<DateTime>();
  }
}