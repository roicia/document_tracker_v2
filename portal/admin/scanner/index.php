<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title id="result"></title>
</head>

<body>
    <div align="center" id="reader" style="width: 500px;"></div>
</body>
<script src="https://cdn.jsdelivr.net/npm/html5-qrcode@2.3.8/html5-qrcode.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

<script>
    const reader = document.getElementById('reader');
    const html5QrCode = new Html5Qrcode(
        'reader', {
            formatsToSupport: [Html5QrcodeSupportedFormats.QR_CODE]
        });
    const qrCodeSuccessCallback = (decodedText, decodedResult) => {
        insertData(decodedText);
    };
    const config = {
        fps: 10,
        qrbox: {
            width: 250,
            height: 250
        }
    };

    // If you want to prefer front camera
    html5QrCode.start({
        facingMode: "user"
    }, config, qrCodeSuccessCallback);


    function insertData(value) {
        // Make a GET request
        axios.get('script.php?reference=' + value)
            .then(response => {

                // Handle the response data
                const result = JSON.parse(response.data);


                console.log(result.message);


                document.getElementById('result').textContent = result.message;




            })
            .catch(error => {
                // Handle errors
                console.error('Error:', error);
            });
    }
</script>

</html>