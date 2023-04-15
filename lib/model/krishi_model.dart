class KrishiModel {
  int? id;
  String? category;
  String? icon;
  int? status;
  String? bengali;
  String? hindi;
  String? created;
  String? updated;

  KrishiModel(
      {this.bengali,
      this.category,
      this.hindi,
      this.icon,
      this.id,
      this.status,
      this.created,
      this.updated});

  KrishiModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['category'];
    icon = json['icon'];
    status = json['status'];
    bengali = json['ln_bn'];
    hindi = json['ln_hn'];
    created = json['created_at'];
    updated = json['updated_at'];
  }

 
}
 List<KrishiModel> parseKrishiModel(json) {
    final krishiModelList = json['data'] as List<dynamic>;
    return krishiModelList.map((data) => KrishiModel.fromJson(data)).toList();
  }
