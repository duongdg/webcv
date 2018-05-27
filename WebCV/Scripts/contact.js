var contact = {
    init: function () {
        contact.registerEvents();
    },
    registerEvents: function () {
        $('#btnSend').off('click').on('click', function () {
            var name = $('#name').val();
            var email = $('#email').val();
            var phone = $('#phone').val();
            var message = $('#message').val();

            $.ajax({
                url: '/Profile/Profile ? Id_Profile = 21',
                type: 'POST',
                dataType: 'json',
                data: {
                    name: name,
                    email: email,
                    phone: phone,
                    message: message
                },
                success: function (res) {
                    if (res.status == true)
                    {
                        alert("Gửi thành công!");
                    }
                }
            });
        });
    }
}