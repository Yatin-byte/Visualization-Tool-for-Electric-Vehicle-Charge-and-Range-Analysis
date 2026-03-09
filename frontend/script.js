function resizeViz() {

const placeholders = document.getElementsByClassName("tableauPlaceholder");

for (let i = 0; i < placeholders.length; i++) {

const vizElement = placeholders[i].getElementsByTagName("object")[0];

const width = placeholders[i].offsetWidth;

vizElement.style.width = "100%";

if (width > 1200) {
vizElement.style.height = "900px";
}
else if (width > 800) {
vizElement.style.height = "750px";
}
else {
vizElement.style.height = "600px";
}

}

}

resizeViz();

window.addEventListener("resize", resizeViz);

const scriptElement = document.createElement("script");
scriptElement.src = "https://public.tableau.com/javascripts/api/viz_v1.js";

document.body.appendChild(scriptElement);
// highlight active section in sidebar

const sections = document.querySelectorAll(".card");
const navLinks = document.querySelectorAll(".sidebar a");

window.addEventListener("scroll", () => {

let current = "";

sections.forEach(section => {

const sectionTop = section.offsetTop;
const sectionHeight = section.clientHeight;

if(pageYOffset >= sectionTop - 200){
current = section.getAttribute("id");
}

});

navLinks.forEach(link => {

link.classList.remove("active");

if(link.getAttribute("href") === "#" + current){
link.classList.add("active");
}

});

});
function showSection(id){

const sections = document.querySelectorAll(".section");
const tabs = document.querySelectorAll(".tab");

sections.forEach(section=>{
section.classList.remove("active");
});

tabs.forEach(tab=>{
tab.classList.remove("active");
});

document.getElementById(id).classList.add("active");

event.target.classList.add("active");

}

document.getElementById("map").classList.add("active");