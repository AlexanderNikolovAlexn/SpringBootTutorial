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
<style type="text/css">
    .float-left {
        float:left;
    }
    .float-right {
        float: right;
    }
    .overflow-hidden {
        overflow:hidden;
    }

    .time-style{
        text-decoration-color: white;
    }

</style>
<nav class="navbar navbar-inverse overflow-hidden">
    <div class="container-fluid float-left">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">WebSiteName</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Page 1-1</a></li>
                    <li><a href="#">Page 1-2</a></li>
                    <li><a href="#">Page 1-3</a></li>
                </ul>
            </li>
            <li><a href="#">Page 2</a></li>
            <li><a href="#">Page 3</a></li>
        </ul>
    </div>
    <div class="float-right">
        <button id="btnRefresh" type="button" class="btn btn-default btn-md btn-info">
            <span class="glyphicon glyphicon-star" aria-hidden="true"></span> Refresh time
        </button>
        <p/>
        <div class="time-style">Time is: <span id="time">${timeWithTimezone.time}</span>
            <span id="timezone">${timeWithTimezone.timezone}</span></div>
    </div>
</nav>