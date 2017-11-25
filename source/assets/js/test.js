$(document).ready(function() {
    var quotes = new Array("Design Systems are so hot right now.", "Naming things is hard.", "Ask me about my design system.", "Typography &#38;<br />Icons &#38;<br />Colors &#38;<br />Spacing &#38;<br />Layouts.", "Tokens &#38;<br />HTML &#38;<br />CSS &#38;<br />JavaScript &#38;<br />Tooling"),
    randno = quotes[Math.floor( Math.random() * quotes.length )];
    $('.ds-random-text').html( randno );
});
