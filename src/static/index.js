// Load the webcomponentsjs polyfill
require('script!../../bower_components/webcomponentsjs/webcomponents-lite.js')

// Require your main webcomponent file (that can be just a file filled with html imports, custom styles or whatever)
require('vulcanize?es6=false!./imports.html')

// pull in desired CSS/SASS files
require( './styles/main.scss' );

// inject bundled Elm app into div#main
var Elm = require( '../elm/Main' );
Elm.Main.embed( document.getElementById( 'main' ) );
