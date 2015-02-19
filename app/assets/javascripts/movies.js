$(window).ready(function(){


  var movies = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    remote: '/movies?search=%QUERY'
  });

  movies.initialize();

  $('#the-basics .typeahead').typeahead(null, {
    displayKey: 'name',
    source: movies.ttAdapter()
  });
})
