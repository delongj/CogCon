<?php
//Variable Declaration and sanitation
            $username = "root";
            $password = "adgqet";
            $hostname = "localhost";
            $message = "Please enter your first and last name";
            $fname = mysql_real_escape_string(filter_input(INPUT_POST, "fname"));
            $lname = mysql_real_escape_string(filter_input(INPUT_POST, "lname"));
            $age = mysql_real_escape_string(filter_input(INPUT_POST, "age"));
            //Concatenate fname and lname to create new table name
            $name = $fname.$lname;

            //connection to the mysql
            $connection = mysql_connect($hostname, $username, $password) 
                or die("Unable to connect to MySQL");
            
            //select database to work with
            mysql_select_db("cogcon_DB", $connection) 
                or die("Could not select database");
            
            //Create new table with correct name and newClient_TB structure
            mysql_query("CREATE TABLE `".$name."` like newClient_TB");
            
            //Store data in table
            mysql_query("INSERT INTO `".$name."`(Info) VALUES('$fname.$lname.$age')");
            
            
            if($fname != NULL && $lname != NULL)
            {
                header("Location: questions.php");
            }
?>
