const imageUpload = document.querySelector('.image-upload')
const fileInput = document.querySelector('#file-input')
const fileAvatar = document.querySelector('.file-avatar')

fileInput.addEventListener('input', () => {
    fileAvatar.src = fileInput.files[0].name
})  