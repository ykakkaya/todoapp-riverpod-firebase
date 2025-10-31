enum CategoryEnum {
  All,
  Normal,
  Onemli,
  Kritik;

  String get label => categoryLabels[this]!;
}

const categoryLabels = {
  CategoryEnum.All: 'Tümü',
  CategoryEnum.Normal: 'Normal',
  CategoryEnum.Onemli: 'Önemli',
  CategoryEnum.Kritik: 'Kritik',
};
