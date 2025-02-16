var link_LatestDownload = "https://github.com/Lost-Empire-Entertainment/Elypso-engine/releases/download/v0.1.3-alpha-pr1/Elypso-engine-x64-release-windows.7z"; // fetch latest download

//download function 

window.onload = function () {

    var btnDownloadEngine = document.getElementById("btn_DownloadLatest");

    if (btnDownloadEngine) {
        btnDownloadEngine.addEventListener("click", function () {
            window.location.href = link_LatestDownload;
        });
    }
}



document.addEventListener('DOMContentLoaded', function() {
    const hamburger = document.querySelector('.hamburger');
    const nav = document.querySelector('nav');
    
    hamburger.addEventListener('click', () => {
        hamburger.classList.toggle('active');
        nav.classList.toggle('active');
    });
    
    // Close menu when clicking outside
    document.addEventListener('click', (e) => {
        if (!nav.contains(e.target) && !hamburger.contains(e.target)) {
            hamburger.classList.remove('active');
            nav.classList.remove('active');
        }
    });
    
    // Close menu when clicking links
    document.querySelectorAll('.nav_Links a').forEach(link => {
        link.addEventListener('click', () => {
            hamburger.classList.remove('active');
            nav.classList.remove('active');
        });
    });
});