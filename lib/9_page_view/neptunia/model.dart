class NeptuniaItem {
  final String title;
  final String img;
  final List<Tags> tags;

  const NeptuniaItem(this.title, this.img, this.tags);
}

enum Tags {
  all,
  neptun,
  maid,
  casual,
  goddes,
  cpu,
  beach,
}

const tags = Tags.values;

const List<NeptuniaItem> neptunias = const [
  const NeptuniaItem(
    'Nep maid',
    'https://vignette.wikia.nocookie.net/neptunia/images/9/94/HDN_App-Neptune_Maid.png/revision/latest?cb=20180404001741',
    [Tags.neptun, Tags.maid, Tags.casual],
  ),
  const NeptuniaItem(
    'Nep goddes',
    'https://vignette.wikia.nocookie.net/neptunia/images/f/fe/4GO-Neptune_in-game_portrait.png/revision/latest?cb=20180327182910',
    [Tags.neptun, Tags.goddes, Tags.casual],
  ),
  const NeptuniaItem(
    'Nep goddes',
    'https://vignette.wikia.nocookie.net/neptunia/images/f/fa/HDN_App-Neptune_Citrus_Frill.png/revision/latest?cb=20180404001742',
    [Tags.neptun, Tags.beach, Tags.casual],
  ),
  const NeptuniaItem(
    'Nep',
    'https://vignette.wikia.nocookie.net/neptunia/images/a/ae/Hyperdimension_Neptunia_Victory_Neptune.png/revision/latest?cb=20171114232254',
    [Tags.neptun, Tags.casual],
  ),
  const NeptuniaItem(
    'Cpu Nep',
    'https://vignette.wikia.nocookie.net/neptunia/images/a/a7/Purple_Heart_V2.png/revision/latest?cb=20150511032218',
    [Tags.neptun, Tags.cpu],
  ),
  const NeptuniaItem(
    'Cpu Nep cosplay',
    'https://vignette.wikia.nocookie.net/neptunia/images/e/ec/MainichiCH-Purple_Heart_Parka_Dress.jpg/revision/latest?cb=20191121044437',
    [Tags.neptun, Tags.cpu],
  ),
  const NeptuniaItem(
    'Cpu Nep goddes',
    'https://vignette.wikia.nocookie.net/neptunia/images/7/79/4GO-Purple_Heart_in-game_portrait.png/revision/latest?cb=20180328190200',
    [Tags.neptun, Tags.goddes, Tags.cpu],
  ),
  const NeptuniaItem(
    'Cpu Nep beach',
    'https://vignette.wikia.nocookie.net/neptunia/images/3/3d/MainichiCH-Purple_Heart_Strand_Purple.jpg/revision/latest?cb=20190711041900',
    [Tags.neptun, Tags.beach, Tags.cpu],
  ),
];
