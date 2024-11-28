var swiper = {
    header: function(){
        var swiper = new Swiper(".swiper-header", {
            slidesPerView: 5, 
            spaceBetween: 0, 
            // loop: true,           
            speed: 5000,          
            // autoplay:{
            //     delay:1,
            //     disableOnInteraction:false,
            // }
          });
    },
    blv: function(){
        var swiperblv = new Swiper(".swiper-blv", {
            slidesPerView: 2.5, 
            spaceBetween: 10, 
            breakpoints: {
              // Khi màn hình >= 640px
              768: {
                slidesPerView: 3.5, // Hiển thị 3 slide trên màn hình trung bình
              },
              // Khi màn hình >= 1537px
              1024: {
                slidesPerView: 5.5, // Hiển thị 4 slide trên màn hình lớn
              },
            },
          });
    },
    banner:function(){
        const NB = document.querySelectorAll('.navigation-number');
        const NBA = document.querySelectorAll('.navigation-number-all');
        const swiperBanner = new Swiper('.swiper-banner', {
            effect: 'coverflow',
            grabCursor: true,
            centeredSlides: true,
            slidesPerView: 1,
            breakpoints: {
              // Khi màn hình >= 640px
              768: {
                 // Hiển thị 3 slide trên màn hình trung bình
                 slidesPerView:3,
              },
              // Khi màn hình >= 1537px
            },
            coverflowEffect: {
              rotate: 0, // Góc xoay của các slide hai bên
              stretch: 40, // Khoảng cách kéo dãn giữa các slide
              depth: 100, // Độ sâu 3D
              modifier: 2.5,
            },
            navigation: {
              nextEl: ".banner-next",
              prevEl: ".banner-prev",
            },
          });
          NBA.forEach(function(nameImg,X){
            nameImg.innerHTML = swiperBanner.slides.length;
            NB[X].innerHTML = X+1;
          })
    }
}
var style = {
  header: function(){
    let navToggle = document.querySelector('.header-menu-bar');
    let headerNavbar = document.querySelector('.menu');
    var headerOver = document.querySelector('.over-lay');
    function toggleHamburger(e) {
      headerNavbar.classList.toggle("active");
      headerOver.classList.toggle("active");
    }
    function closeHeader(e) {
      headerNavbar.classList.toggle("active");
      headerOver.classList.toggle("active");
    }
    navToggle.addEventListener('click', toggleHamburger);
    headerOver.addEventListener('click', closeHeader);

  },
  banner:function(){
    var imgDad = document.querySelectorAll('.story-book.main img');
    var imgFilter = document.querySelectorAll('.img-banner img');
    var imgSkew = document.querySelectorAll('.story-book.skew img');
    imgDad.forEach(function(nameImg,X){
      var imgSrc = nameImg.getAttribute('src');
      if (imgFilter[X]) { // Kiểm tra xem phần tử có tồn tại không
        imgFilter[X].style.backgroundImage = `url('${imgSrc}')`;
      }
      if (imgSkew[X]) { // Kiểm tra xem phần tử có tồn tại không
        imgSkew[X].setAttribute('src', imgSrc); // Không cần `url()` vì `src` chỉ nhận URL thuần
      }
    })
  }
}
swiper.header();
swiper.blv();
swiper.banner();
style.header();
style.banner();