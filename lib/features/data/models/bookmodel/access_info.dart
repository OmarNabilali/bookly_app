class AccessInfo {
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  final String? webReaderLink;

  AccessInfo({
    this.webReaderLink,
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) => AccessInfo(
    webReaderLink: json['webReaderLink'] as String?,

    country: json['country'] as String?,
    viewability: json['viewability'] as String?,
    embeddable: json['embeddable'] as bool?,
    publicDomain: json['publicDomain'] as bool?,
    textToSpeechPermission: json['textToSpeechPermission'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'country': country,
    'viewability': viewability,
    'embeddable': embeddable,
    'publicDomain': publicDomain,
    'textToSpeechPermission': textToSpeechPermission,
  };
}
