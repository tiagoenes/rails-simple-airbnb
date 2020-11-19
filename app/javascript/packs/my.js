const link = document.querySelector('#link-add');

link.addEventListener("click", (e) => {
  e.preventDefault();
  const form = document.querySelector('.add-form');
  form.style.display = "block";
  console.log('test');
});
