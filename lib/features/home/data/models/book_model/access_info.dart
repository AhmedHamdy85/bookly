import 'package:equatable/equatable.dart';

import 'epub.dart';
import 'pdf.dart';

class AccessInfo extends Equatable {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final Epub? epub;
  final Pdf? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  const AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) => AccessInfo(
        country: json['country']?.toString(),
        viewability: json['viewability']?.toString(),
        embeddable: json['embeddable']?.toString().contains("true"),
        publicDomain: json['publicDomain']?.toString().contains("true"),
        textToSpeechPermission: json['textToSpeechPermission']?.toString(),
        epub: json['epub'] == null
            ? null
            : Epub.fromJson(Map<String, dynamic>.from(json['epub'])),
        pdf: json['pdf'] == null
            ? null
            : Pdf.fromJson(Map<String, dynamic>.from(json['pdf'])),
        webReaderLink: json['webReaderLink']?.toString(),
        accessViewStatus: json['accessViewStatus']?.toString(),
        quoteSharingAllowed:
            json['quoteSharingAllowed']?.toString().contains("true"),
      );

  Map<String, dynamic> toJson() => {
        if (country != null) 'country': country,
        if (viewability != null) 'viewability': viewability,
        if (embeddable != null) 'embeddable': embeddable,
        if (publicDomain != null) 'publicDomain': publicDomain,
        if (textToSpeechPermission != null)
          'textToSpeechPermission': textToSpeechPermission,
        if (epub != null) 'epub': epub?.toJson(),
        if (pdf != null) 'pdf': pdf?.toJson(),
        if (webReaderLink != null) 'webReaderLink': webReaderLink,
        if (accessViewStatus != null) 'accessViewStatus': accessViewStatus,
        if (quoteSharingAllowed != null)
          'quoteSharingAllowed': quoteSharingAllowed,
      };

  @override
  List<Object?> get props {
    return [
      country,
      viewability,
      embeddable,
      publicDomain,
      textToSpeechPermission,
      epub,
      pdf,
      webReaderLink,
      accessViewStatus,
      quoteSharingAllowed,
    ];
  }
}
