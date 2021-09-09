const imageUpload = document.querySelector('.image-upload')
const fileInput = document.querySelector('#file-input')
const fileAvatar = document.querySelector('.file-avatar')
const labelRecruiter = document.querySelector('.label-recruiter')
const labelEmployee  = document.querySelector('.label-employee')

labelRecruiter.addEventListener('click', () => {
    switchRecriuter.checked = "true";
    labelRecruiter.classList.add('checked');
    labelEmployee.classList.remove('checked');
})

labelEmployee.addEventListener('click', () => {
    switchEmployee.checked = "true";
    labelEmployee.classList.add('checked');
    labelRecruiter.classList.remove('checked');
})

// fileInput.addEventListener('input', () => {
//     fileAvatar.src = fileInput.files[0].name
// })  