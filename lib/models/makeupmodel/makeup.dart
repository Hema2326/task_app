class Makeup {
  int id;
  String brand;
  String name;
  String price;
  dynamic priceSign;
  dynamic currency;
  String imageLink;
  String productLink;
  String websiteLink;
  String description;
  int rating;
  dynamic category;
  String productType;
  List<dynamic> tagList;
  String createdAt;
  String updatedAt;
  String productApiUrl;
  String apiFeaturedImage;
  List<dynamic> productColors;

  Makeup({
    this.id,
    this.brand,
    this.name,
    this.price,
    this.priceSign,
    this.currency,
    this.imageLink,
    this.productLink,
    this.websiteLink,
    this.description,
    this.rating,
    this.category,
    this.productType,
    this.tagList,
    this.createdAt,
    this.updatedAt,
    this.productApiUrl,
    this.apiFeaturedImage,
    this.productColors,
  });

  factory Makeup.fromJson(Map<String, dynamic> json) {
    return Makeup(
      id: json['id'] as int,
      brand: json['brand'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      priceSign: json['price_sign'],
      currency: json['currency'],
      imageLink: json['image_link'] as String,
      productLink: json['product_link'] as String,
      websiteLink: json['website_link'] as String,
      description: json['description'] as String,
      rating: json['rating'] as int,
      category: json['category'],
      productType: json['product_type'] as String,
      tagList: json['tag_list'] as List<dynamic>,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      productApiUrl: json['product_api_url'] as String,
      apiFeaturedImage: json['api_featured_image'] as String,
      productColors: json['product_colors'] as List<dynamic>,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'brand': brand,
      'name': name,
      'price': price,
      'price_sign': priceSign,
      'currency': currency,
      'image_link': imageLink,
      'product_link': productLink,
      'website_link': websiteLink,
      'description': description,
      'rating': rating,
      'category': category,
      'product_type': productType,
      'tag_list': tagList,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'product_api_url': productApiUrl,
      'api_featured_image': apiFeaturedImage,
      'product_colors': productColors,
    };
  }
}
