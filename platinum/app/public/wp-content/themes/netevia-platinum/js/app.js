new WOW().init();
//NAV MOBILE
const navMobItems = document.querySelectorAll(".nav-mobile__item");

if(navMobItems){
    navMobItems.forEach(item => {
        item.addEventListener("click",function(){
            this.classList.toggle("active")
            item.querySelector(".nav-mobile__contains").classList.toggle("show");
        })
    })
}

document.querySelector(".nav__burger").addEventListener("click",function(){
    this.classList.toggle("active")
    document.querySelector(".nav-mobile").classList.toggle("show")
})


//NAV DESTOP MENU

const allNavLinks = document.querySelectorAll(".nav__item");

allNavLinks.forEach(item => {
    item.addEventListener("click",function(){
        allNavLinks.forEach(c =>{
            if (c !== item)
                c.querySelector(".nav__item--content")?.classList?.remove("active")})
        this.querySelector(".nav__item--content").classList.toggle("active");
    })
})

window.addEventListener("click",function(e){
    if(e.target.closest(".nav__item")) return;

    allNavLinks.forEach(c=>{
        c.querySelector(".nav__item--content")?.classList?.remove("active")
    })
})

document.querySelectorAll(".nav__item--content").forEach(c=>{
    c.addEventListener("click",function(e){
        e.stopPropagation()
    })
})

const bankCard = document.querySelectorAll(".owners__item--close");

if(bankCard){
    bankCard.forEach(card =>{
        card.addEventListener("click",function(){
            this.classList.toggle("active");

            this.parentNode.querySelector(".owners__item--paragraph").classList.toggle("active");
        })
    })
}