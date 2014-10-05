$(function(){
    emojify.setConfig({
        img_dir: '/images/emoji',
        ignored_tags: {
            'SCRIPT': 1,
            'TEXTAREA': 1,
            'A': 1,
            'PRE': 1,
            'CODE': 1
        }
    });
    emojify.run();
 
    $('textarea').textcomplete([{ // emoji strategy
        match: /\B:([\-+\w]*)$/,
        search: function(term, callback) {
            callback($.map(emojies, function(emoji) {
                return emoji.indexOf(term) === 0 ? emoji : null;
            }));
        },
        template: function(value) {
            return '<img src="/images/emoji/' + value + '.png" class="emoji"></img>' + value;
        },
        replace: function(value) {
            return ':' + value + ': ';
        },
        index: 1,
        maxCount: 5
    }]);
});