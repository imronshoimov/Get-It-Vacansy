const imageUpload = document.querySelector('.image-upload')
const fileInput = document.querySelector('#file-input')
const fileAvatar = document.querySelector('.file-avatar')
const labelRecruiter = document.querySelector('.label-recruiter')
const labelEmployee  = document.querySelector('.label-employee')

labelRecruiter.addEventListener('click', () => {
    switchRecriuter.checked = "true";
})

labelEmployee.addEventListener('click', () => {
    switchEmployee.checked = "true";
})

// fileInput.addEventListener('input', () => {
//     fileAvatar.src = fileInput.files[0].name
// })  