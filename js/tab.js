function tab(event) {
id = event.keyCode-48;
if (event.shiftKey) {
    url = '';
    switch(id) {
        case 1:
            url = 'index.html';
            break;
        case 2:
            url = 'plans.html';
            break;
        case 3:
            url = 'ai.html';
            break;
        case 4:
            url = 'blog.html';
            break;
        case 5:
            url = 'hobbies.html';
            break;
        case 6:
            url = 'subjects.html';
            break;
        case 7:
            url = 'skills.html';
            break;
        case 23:
            url = 'https://github.com/bohdan-puida/bohdan-puida.github.io';
            break;


    }
    if (url === 'https://github.com/bohdan-puida/bohdan-puida.github.io' ) {
      window.open(url,'_blank');
   }
    else  if (url) {
      window.location.href=url;
    }
}
}
