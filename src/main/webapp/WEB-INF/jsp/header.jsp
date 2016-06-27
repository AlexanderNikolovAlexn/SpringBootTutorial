<script>
    $(document).ready(function() {
        $('#btnRefresh').on('click',function () {
            $.ajax({
                type: "GET",
                url: "/getTime",
                dataType: 'json',
                success: function (data) {
                    console.log(data);
                    for(var k in data) {
                        $('#' + k).html(data[k]);
                    }
                },
                error: function (e) {
                    console.log("ERROR: ", e);
                }
            });
        });
    });
</script>

<div>
    <button id="btnRefresh" type="button" class="btn btn-default btn-md btn-info">
        <span class="glyphicon glyphicon-star" aria-hidden="true"></span> Refresh time
    </button>
    <p/>
    <div>Time is: <span id="time">${timeWithTimezone.time}</span>
        <span id="timezone">${timeWithTimezone.timezone}</span></div>
</div>