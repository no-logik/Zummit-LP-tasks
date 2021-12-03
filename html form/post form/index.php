<!DOCTYPE html>
<html>
    <head>
        <title>form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <style>
            .container{
                padding: 30px;
                display: flex;
                justify-content: center;
            }

            fieldset{
                border: #444 solid 2px;
                border-radius: 5px;
            }
            label{
                padding: 10px;
                display: inline-block;
            }
            button{
                margin-left: 10px;
                margin-top: 10px;
            }
            #reset-btn{
                margin-left: 20px;
            }
        </style>
    </head>
    <body>
        <div class="container">
        <form action="./results.php" method="post">
            <fieldset>
            <label for="name">Name: </label>
            <input type="text" name="name" placeholder="name"><br>
            <label for="username">UserName: </label>
            <input type="text" name="username" placeholder="username"><br>
            <label for="password">Password:</label>
            <input type="password" name="password" placeholder="password"><br>
            <button type="submit">Submit</button>
            <button type="reset" id="reset-btn">Reset</button>
            </fieldset>
        </form>
        </div>
    </body>
</html>