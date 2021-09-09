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