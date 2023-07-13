enum ListNamesFireplace {
  smartPrime1000,
  smartFireA71000,
  smartFireA51000,
  smartFireA31000,
}

class RepositoryFireplace {
  ///для поиска и подключение к камину с установкой параметров___________________________________________________
  //тут будут лежать id каминов все должны быть с to lower case
  final Set<String> listWifiIdIndicators = {
    'smart prime',
    'smart fire a7',
    'smart fire a5',
    'smart fire a3',
    'test mode wifi',
  };
}
