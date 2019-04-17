function addStudent() {
    var  name = $('#name').val();
    var  surname = $('#surname').val();
    var  parent = $('#parent').val();
    var  birthDate = $('#datepickerForStudent').val();
    var  phone = $('#phone').val();
    var  gmail = $('#gmail').val();
    var  gmailCode = $('#gmailCode').val();
    var  gender = $("input[name = 'genderAddStudent']:checked").val();

    $.ajax({
        url: 'addStudent',
        type: 'post',
        dataType: "text",
        data:{
            name : name,
            surname : surname,
            parent : parent,
            birthDate : birthDate,
            phone : phone,
            gmail : gmail,
            gmailCode : gmailCode,
            gender : gender
        },
        success: function (data) {
            alert("SUCCESS");
            console.log("SUCCESS");
        },
        error: function (data) {
            alert("Error");
        }
    });
}

function studentTable() {
    $(document).ready(function() {
        $('#studentList').DataTable();
    } );
}