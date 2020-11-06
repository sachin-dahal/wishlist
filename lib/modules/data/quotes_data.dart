class QuoteData {
  final String text;
  final String bio;
  final String imgUrl;
  final double price;
  final String timeOfArrival;
  final double timeToComplete;
  final String quoteNotes;
  final String imgHeroTag;

  QuoteData({
    this.text,
    this.bio,
    this.imgUrl,
    this.price,
    this.timeOfArrival,
    this.timeToComplete,
    this.quoteNotes,
    this.imgHeroTag,
  });
}

List<QuoteData> _quoteDataList = [
  QuoteData(
    text:
        "A 'Persona' is a fictional representation of the actual user and applied at the early stage of product development or redesign the product. Persona is essential to the success of a product because they encourage the design decision to take the needs of general users and bring them to the forefront of planning before the design has really started.",
    bio:
        "A wireframe is a two-dimensional illustration of a page’s interface that specifically focuses on space allocation and prioritization of content, functionalities available, and intended behaviors. For these reasons, wireframes typically do not include any styling, color, or graphics.",
    imgUrl: "assets/images/chris.jpeg",
    imgHeroTag: "chris1",
    price: 235.00,
    timeOfArrival: "3:30 PM",
    timeToComplete: 3.5,
    quoteNotes:
        "Personas give stakeholders an opportunity to discuss the important features of the redesign: It is very helpful when you have multiple stakeholders with different ideas about what needs to be developed first. Using Personas runs stakeholders through public interaction introducing 4 frustration and pain-points that will help clarify the actual user priority over personal wish list of stakeholders. They help team members share a consistent understanding of user groups: Personas retrieve data and make the story more interesting and fun, so that makes them easier to remember and consider when teams work towards a solution - together.",
  ),
  QuoteData(
    text:
        "A 'Persona' is a fictional representation of the actual user and applied at the early stage of product development or redesign the product. Persona is essential to the success of a product because they encourage the design decision to take the needs of general users and bring them to the forefront of planning before the design has really started.",
    bio:
        "A wireframe is a two-dimensional illustration of a page’s interface that specifically focuses on space allocation and prioritization of content, functionalities available, and intended behaviors. For these reasons, wireframes typically do not include any styling, color, or graphics.",
    imgUrl: "assets/images/logo.png",
    imgHeroTag: "logo1",
    price: 140.00,
    timeOfArrival: "11:30 AM",
    timeToComplete: 2.5,
    quoteNotes:
        "Personas give stakeholders an opportunity to discuss the important features of the redesign: It is very helpful when you have multiple stakeholders with different ideas about what needs to be developed first. Using Personas runs stakeholders through public interaction introducing 4 frustration and pain-points that will help clarify the actual user priority over personal wish list of stakeholders. They help team members share a consistent understanding of user groups: Personas retrieve data and make the story more interesting and fun, so that makes them easier to remember and consider when teams work towards a solution - together.",
  ),
  QuoteData(
    text:
        "A 'Persona' is a fictional representation of the actual user and applied at the early stage of product development or redesign the product. Persona is essential to the success of a product because they encourage the design decision to take the needs of general users and bring them to the forefront of planning before the design has really started.",
    bio:
        "A wireframe is a two-dimensional illustration of a page’s interface that specifically focuses on space allocation and prioritization of content, functionalities available, and intended behaviors. For these reasons, wireframes typically do not include any styling, color, or graphics.",
    imgUrl: "assets/images/chris.jpeg",
    imgHeroTag: "chris2",
    price: 95.00,
    timeOfArrival: "9:00 AM",
    timeToComplete: 1.5,
    quoteNotes:
        "Personas give stakeholders an opportunity to discuss the important features of the redesign: It is very helpful when you have multiple stakeholders with different ideas about what needs to be developed first. Using Personas runs stakeholders through public interaction introducing 4 frustration and pain-points that will help clarify the actual user priority over personal wish list of stakeholders. They help team members share a consistent understanding of user groups: Personas retrieve data and make the story more interesting and fun, so that makes them easier to remember and consider when teams work towards a solution - together.",
  ),
  QuoteData(
    text:
        "A 'Persona' is a fictional representation of the actual user and applied at the early stage of product development or redesign the product. Persona is essential to the success of a product because they encourage the design decision to take the needs of general users and bring them to the forefront of planning before the design has really started.",
    bio:
        "A wireframe is a two-dimensional illustration of a page’s interface that specifically focuses on space allocation and prioritization of content, functionalities available, and intended behaviors. For these reasons, wireframes typically do not include any styling, color, or graphics.",
    imgUrl: "assets/images/logo.png",
    imgHeroTag: "logo2",
    price: 115.00,
    timeOfArrival: "2:00 PM",
    timeToComplete: 3.0,
    quoteNotes:
        "Personas give stakeholders an opportunity to discuss the important features of the redesign: It is very helpful when you have multiple stakeholders with different ideas about what needs to be developed first. Using Personas runs stakeholders through public interaction introducing 4 frustration and pain-points that will help clarify the actual user priority over personal wish list of stakeholders. They help team members share a consistent understanding of user groups: Personas retrieve data and make the story more interesting and fun, so that makes them easier to remember and consider when teams work towards a solution - together.",
  ),
];

List<QuoteData> get quoteDataList => _quoteDataList;
