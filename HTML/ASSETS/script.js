document.addEventListener('DOMContentLoaded', function() {
    var loaded = true;

    function unload() {
        var video = document.getElementById('body');
        if (loaded) {
            loaded = false;
            video.classList.add('hide');
        }
    }

    document.addEventListener('keydown', function(event) {
        if (event.key === 'Enter') {
            unload();
        }
    });
});