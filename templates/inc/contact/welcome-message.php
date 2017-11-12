<?php namespace ProcessWire;
$url = parse_url($h_url);
$url = $url['host'];
$hello_message  = page()->txt_4 ? page()->txt_4 : __('Welcome To The ') . $url;
$mess_heading = page()->headline ? page()->headline : __('Learn More About Us');
$mess_body = page()->summary ? page()->summary : __('Your Message Has Been Sent ... We will Reply As Soon As Possible');
$button_name = __('Go To My Page');
$welcome_message = "
<center style='width: 100%; background: #0b7285; text-align: left;'>

    <div style='max-width: 600px; margin: auto;' class='email-container'>

    <!-- Email Header : BEGIN -->
    <table role='presentation' cellspacing='0' cellpadding='0' border='0' align='center' width='100%' style='max-width: 600px;'>
        <tr>
            <td style='padding: 20px 0; text-align: center'>
                <a href='$h_url'>
                    <h1 style='color:#f8f9fa;'>
                       $hello_message
                    </h1>
                </a>
            </td>
        </tr>
    </table>
    <!-- Email Header : END -->

    <!-- Email Body : BEGIN -->
    <table role='presentation' cellspacing='0' cellpadding='0' border='0' align='center' width='100%' style='max-width: 600px;'>

        <!-- 1 Column Text + Button : BEGIN -->
        <tr>
            <td bgcolor='#ffffff'>
                <table role='presentation' cellspacing='0' cellpadding='0' border='0' width='100%'>
                    <tr>
                        <td style='padding: 40px; font-family: sans-serif; font-size: 15px; line-height: 20px; color: #555555;'>
                            <h1 style='margin: 0 0 10px 0; font-family: sans-serif; font-size: 24px; line-height: 27px; color: #333333; font-weight: normal;'>
                               $mess_heading 
                            </h1>
                                <p style='margin: 0;'>
                                $mess_body
                                </p>
                        </td>
                    </tr>
                    <tr>
                        <td style='padding: 0 40px; font-family: sans-serif; font-size: 15px; line-height: 20px; color: #555555;'>
                            <!-- Button : BEGIN -->
                            <table role='presentation' cellspacing='0' cellpadding='0' border='0' align='center' style='margin: auto;'>
                                <tr>
                                    <td style='border-radius: 3px; background: #ff9001; text-align: center;' class='button-td'>
                                        <a href='$h_url'; style='border: 15px solid #ff9001; font-family: sans-serif; font-size: 13px; line-height: 1.1; text-align: center; text-decoration: none; display: block; border-radius: 3px; font-weight: bold;' class='button-a'>
                                            <span style='color:#ffffff;' class='button-link'>&nbsp;&nbsp;&nbsp;&nbsp;$button_name&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                        </a>
                                    </td>
                                </tr>

                                <!-- Clear Spacer : BEGIN -->
                                    <tr>
                                        <td aria-hidden='true' height='40' style='font-size: 0; line-height: 0;'>
                                            &nbsp;
                                        </td>
                                    </tr>
                                <!-- Clear Spacer : END -->
                            </table>
                            <!-- Button : END -->
                        </td>
                    </tr>

                </table>
            </td>
        </tr>
        <!-- 1 Column Text + Button : END -->

        <!-- Clear Spacer : BEGIN -->
        <tr>
            <td aria-hidden='true' height='40' style='font-size: 0; line-height: 0;'>
                &nbsp;
            </td>
        </tr>
    <!-- Clear Spacer : END -->

    </table>
    <!-- Email Body : END -->
    </div>

</center>";