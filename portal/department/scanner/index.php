<?php include '../templates/header.php' ?>
<script src="https://cdn.jsdelivr.net/npm/html5-qrcode@2.3.8/html5-qrcode.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>


<style>
    #reader {
        width: 900px;
        height: auto;
    }
</style>






<!--  Header End -->
<div class="container-fluid">
    <div class="card">
        <center>
            <div id="reader"></div>
        </center>
    </div>
</div>




















<script>
    const reader = document.getElementById('reader');
    const html5QrCode = new Html5Qrcode(
        'reader', {
            formatsToSupport: [Html5QrcodeSupportedFormats.QR_CODE]
        });
    const qrCodeSuccessCallback = (decodedText, decodedResult) => {
        insertData(decodedText);
        status = false;
    };
    const config = {
        fps: 10,
        qrbox: {
            width: 350,
            height: 350
        }
    };

    // If you want to prefer front camera
    html5QrCode.start({
        facingMode: "user"
    }, config, qrCodeSuccessCallback);


    function insertData(value) {

        window.location.href = value + '&backToScanner=True';

        // Make a GET request
        // axios.get('script.php?reference=' + value)
        //     .then(response => {

        //         // Handle the response data
        //         const result = JSON.parse(response.data);


        //         console.log(result.message);
        //         window.location.href = response.data;

        //     })
        //     .catch(error => {
        //         // Handle errors
        //         console.error('Error:', error);
        //     });
    }
</script>

<?php include '../templates/footer.php' ?>