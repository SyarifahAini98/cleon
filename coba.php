    <?php
    $curl = curl_init();
    curl_setopt_array($curl, array(
        CURLOPT_RETURNTRANSFER => 1,
        CURLOPT_URL => 'http://api.nusasms.com/api/v3/sendsms/plain',
        CURLOPT_POST => true,
        CURLOPT_POSTFIELDS => array(
            'user' => 'irvan1999_api',
            'password' => 'Asj081a',
            'SMSText' => 'This is an example code using PHP.',
            'GSM' => '62895421862699'
        )
    ));
    $resp = curl_exec($curl);
    if (!$resp) {
        die('Error: "' . curl_error($curl) . '" - Code: ' . curl_errno($curl));
    } else {
        //header('Content-type: text/xml'); /*if you want to output to be an xml*/
        echo $resp;
    }
    curl_close($curl);
    ?>