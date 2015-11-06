<?php
    class DB{

		function dbConnection(){
			$conn = mysqli_connect('localhost','root','fumoffu','fanradio');
			if(!$conn){
				die("Conexion Fallida".mysqli_errno($conn));
			}
			return $conn;
		}

		function query($query){
            $row = "";

            try{
                $conn =  $this->dbConnection($query);
                $result = mysqli_query($conn,$query);
                if(!$result){
                    return null;
                }
                $count = mysqli_num_rows($result);
                if( $count == 1){
                    $row = mysqli_fetch_assoc($result);
                    mysqli_free_result($result);
                    mysqli_close($conn);
                }else if($count == 0){
                    throw new mysqli_sql_exception('AutoDj');
                }
            }catch(Exception $e){;
            }

            return $row;
		}


	}
?>