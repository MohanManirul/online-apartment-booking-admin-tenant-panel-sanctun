<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>New Apartment Available</title>
</head>
<body style="margin:0;padding:0;background:#f4f4f4;font-family:Arial,Helvetica,sans-serif;">

<table width="100%" cellpadding="0" cellspacing="0" style="background:#f4f4f4;padding:20px;">
<tr>
<td align="center">

<table width="600" cellpadding="0" cellspacing="0" style="background:#ffffff;border-radius:8px;overflow:hidden;">

    <!-- Header -->
    <tr>
        <td style="background:#0d6efd;color:#fff;padding:20px;text-align:center;">
            <h1 style="margin:0;">🏢 New Apartment Available</h1>
        </td>
    </tr>

    <!-- Image -->
    <tr>
        <td style="text-align:center;">
            <img src="{{ asset('storage/apartment/'.$apartment->image) }}"
                 alt="Apartment Image"
                 style="width:100%;max-height:300px;object-fit:cover;">
        </td>
    </tr>

    <!-- Body -->
    <tr>
        <td style="padding:20px;color:#333;">
            <p style="font-size:16px;">Hello 👋,</p>

            <p style="font-size:16px;">
                A brand new apartment is now available for rent. Check the details below:
            </p>

            <table width="100%" cellpadding="6" cellspacing="0" style="border:1px solid #ddd;">
                <tr>
                    <td><strong>Name</strong></td>
                    <td>{{ $apartment->name }}</td>
                </tr>
                <tr>
                    <td><strong>Rent</strong></td>
                    <td>৳ {{ $apartment->rent }}</td>
                </tr>
            </table>

            <p style="margin-top:20px;text-align:center;">
                <a href="{{ url('/apartments/'.$apartment->id) }}"
                   style="background:#0d6efd;color:#fff;padding:12px 20px;
                          text-decoration:none;border-radius:5px;">
                    View Apartment
                </a>
            </p>
        </td>
    </tr>

    <!-- Footer -->
    <tr>
        <td style="background:#f1f1f1;padding:15px;text-align:center;font-size:12px;color:#555;">
            © {{ date('Y') }} Apartment Management System
        </td>
    </tr>

</table>

</td>
</tr>
</table>

</body>
</html>
