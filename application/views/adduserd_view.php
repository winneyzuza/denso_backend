<head>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/add.css">
    <style>
        input{ width: 100%; }
    </style>
</head>
<body>
    <?PHP
            if(validation_errors())
                echo "<script>window.onload = function(){alert('".validation_errors()."');}</script>";
        ?>
    <form method="POST">
        <table>
            <tr>
                <td>Username</td>
                <td><input type="text" name="Username" value="<?php echo set_value('Username'); ?>" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="Password" /></td>
            </tr>
            <tr>
                <td>Password Confirmation</td>
                <td><input type="password" name="Passconf" /></td>
            </tr>
            <tr>
                <td>Full Name</td>
                <td><input type="text" name="FullName" value="<?php echo set_value('FullName'); ?>" /></td>
            </tr>
            <tr>
                <td><button type="submit" class="button blue_back">Add</button></td>
                <td><button type="reset" class="button blue_back">Clear</button></td>
            </tr>
        </table>
    </form>
    <script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>
</body>
