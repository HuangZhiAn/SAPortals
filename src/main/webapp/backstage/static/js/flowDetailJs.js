

function completeActiviti() {

    $.ajax({
        url: path+"/suggest/complete",
        type: "get",
        dataType: "json",
        data: {
            "result": $("#responseResult").val(),
            "taskId": $("#responseResult").attr("name"),
            "customerId": $("#customerId").text()
        },
        success: function (data) {
            alert(data);
        },
        error: function (data) {
            alert(data);
        }
    })


};

$(function () {
    $.ajax({
        url: path+"/suggest/getHisTasksList",
        type: "get",
        dataType: "json",
        data: {},
        success: function (data) {
            for(var item in data){
                $("#taskHistory").append( "<tr> <td>"+data[item].time+"</td> <td>"+data[item].taskId+"</td> <td>"+data[item].userId+"</td> <td>OK</td> <td>"+data[item].message+"</td> <td>-</td> </tr>");
            }

        },
        error: function (data) {
            alert(data);
        }
    })
})

