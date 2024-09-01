document.addEventListener('DOMContentLoaded', function() {
    const bg1 = document.querySelector('.bg1');
    const bg1Divs = bg1.querySelectorAll('div');
    const carousel = document.querySelector('#carouselExampleIndicators');

    const updateBackground = (slideIndex) => {
        bg1Divs.forEach((div, index) => {
            div.style.opacity = (index === slideIndex) ? 1 : 0;
        });
    };

    updateBackground(0);

    carousel.addEventListener('slid.bs.carousel', function(event) {
        const activeIndex = [...carousel.querySelectorAll('.carousel-item')].indexOf(event.relatedTarget);
        updateBackground(activeIndex);
    });
});