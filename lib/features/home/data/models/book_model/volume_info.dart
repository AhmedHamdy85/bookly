import 'package:equatable/equatable.dart';

import 'image_links.dart';
import 'industry_identifier.dart';
import 'panelization_summary.dart';
import 'reading_modes.dart';

class VolumeInfo extends Equatable {
  final String? title;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final ReadingModes? readingModes;
  final num? pageCount;
  final String? printType;
  final List<String>? categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  const VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
        title: json['title']?.toString(),
        authors: List<String>.from(json['authors'] ?? []),
        publisher: json['publisher']?.toString(),
        publishedDate: json['publishedDate']?.toString(),
        description: json['description']?.toString(),
        industryIdentifiers: (json['industryIdentifiers'] as List<dynamic>?)
            ?.map((e) =>
                IndustryIdentifier.fromJson(Map<String, dynamic>.from(e)))
            .toList(),
        readingModes: json['readingModes'] == null
            ? null
            : ReadingModes.fromJson(
                Map<String, dynamic>.from(json['readingModes'])),
        pageCount: num.tryParse(json['pageCount'].toString()),
        printType: json['printType']?.toString(),
        categories: List<String>.from(json['categories'] ?? []),
        maturityRating: json['maturityRating']?.toString(),
        allowAnonLogging: json['allowAnonLogging']?.toString().contains("true"),
        contentVersion: json['contentVersion']?.toString(),
        panelizationSummary: json['panelizationSummary'] == null
            ? null
            : PanelizationSummary.fromJson(
                Map<String, dynamic>.from(json['panelizationSummary'])),
        imageLinks: json['imageLinks'] == null
            ? null
            : ImageLinks.fromJson(
                Map<String, dynamic>.from(json['imageLinks'])),
        language: json['language']?.toString(),
        previewLink: json['previewLink']?.toString(),
        infoLink: json['infoLink']?.toString(),
        canonicalVolumeLink: json['canonicalVolumeLink']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        if (title != null) 'title': title,
        if (authors != null) 'authors': authors,
        if (publisher != null) 'publisher': publisher,
        if (publishedDate != null) 'publishedDate': publishedDate,
        if (description != null) 'description': description,
        if (industryIdentifiers != null)
          'industryIdentifiers':
              industryIdentifiers?.map((e) => e.toJson()).toList(),
        if (readingModes != null) 'readingModes': readingModes?.toJson(),
        if (pageCount != null) 'pageCount': pageCount,
        if (printType != null) 'printType': printType,
        if (categories != null) 'categories': categories,
        if (maturityRating != null) 'maturityRating': maturityRating,
        if (allowAnonLogging != null) 'allowAnonLogging': allowAnonLogging,
        if (contentVersion != null) 'contentVersion': contentVersion,
        if (panelizationSummary != null)
          'panelizationSummary': panelizationSummary?.toJson(),
        if (imageLinks != null) 'imageLinks': imageLinks?.toJson(),
        if (language != null) 'language': language,
        if (previewLink != null) 'previewLink': previewLink,
        if (infoLink != null) 'infoLink': infoLink,
        if (canonicalVolumeLink != null)
          'canonicalVolumeLink': canonicalVolumeLink,
      };

  @override
  List<Object?> get props {
    return [
      title,
      authors,
      publisher,
      publishedDate,
      description,
      industryIdentifiers,
      readingModes,
      pageCount,
      printType,
      categories,
      maturityRating,
      allowAnonLogging,
      contentVersion,
      panelizationSummary,
      imageLinks,
      language,
      previewLink,
      infoLink,
      canonicalVolumeLink,
    ];
  }
}
