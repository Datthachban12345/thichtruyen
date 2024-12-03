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
          spaceBetween: 17, 
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
    const SB = document.querySelectorAll('.swiper-banner .swiper-slide');
    
    // Đảm bảo đủ slide để bật loop
    const enableLoop = SB.length >= 3;
    
    const swiperBanner = new Swiper('.swiper-banner', {
        effect: 'coverflow',
        grabCursor: true,
        centeredSlides: true,
        slidesPerView: 1,
        loop: enableLoop, // Bật loop nếu đủ slide
        breakpoints: {
            850: {
              slidesPerView: 3,
              coverflowEffect: {
                rotate: 0,
                stretch: 20,
                depth: 200,
                modifier: 2.5,
            },
            },
            1160: {
                slidesPerView: 3,
                coverflowEffect: {
                  rotate: 0,
                  stretch: 40,
                  depth: 300,
                  modifier: 2.5,
              },
            },
            1600:{
              slidesPerView: 3,
                      coverflowEffect: {
            rotate: 0,
            stretch: 150,
            depth: 200,
            modifier: 2,
        },
            }
        },
        on: {
          init: function () {
              const swiper = this;
              highlightNearbySlides(swiper.realIndex, SB.length); // Đánh dấu khi khởi tạo
          },
          slideChange: function () {
              const swiper = this;
              highlightNearbySlides(swiper.realIndex, SB.length); // Đánh dấu khi thay đổi slide
          },
      },
        coverflowEffect: {
            rotate: 0,
            stretch: 150,
            depth: 200,
            modifier: 2,
        },
        pagination: {
          el: ".pagination-banner",
          clickable: true,
        },
    });
    function highlightNearbySlides(currentIndex, totalSlides) {
      // Xóa tất cả các class 'seen'
      SB.forEach((slide) => slide.classList.remove('seen'));
  
      // Đánh dấu slide hiện tại và các slide gần kề
      SB[currentIndex]?.classList.add('seen'); // Slide chính giữa
      SB[(currentIndex - 1 + totalSlides) % totalSlides]?.classList.add('seen'); // Slide bên trái
      SB[(currentIndex - 2 + totalSlides) % totalSlides]?.classList.add('seen'); // Slide xa bên trái
      SB[(currentIndex + 1) % totalSlides]?.classList.add('seen'); // Slide bên phải
      SB[(currentIndex + 2) % totalSlides]?.classList.add('seen'); // Slide xa bên phải
  }
    NBA.forEach(function (nameImg, X) {
        nameImg.innerHTML = swiperBanner.slides.length;
        NB[X].innerHTML = X + 1;
    });
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