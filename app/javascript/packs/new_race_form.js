const btns = document.querySelectorAll(".race-type-btn")
const input = document.querySelector("#race_race_type")

btns.forEach((btn)=>{
  btn.addEventListener("click", (e) => {
     btns.forEach((e) => e.classList.remove("selected"))
     e.target.classList.add("selected")
     input.value = e.target.innerText
  })
})