<?php	
	function query_get($params="*",$table,$id=""){
		$row = "";

		$query = "select".$params."from".$table;
		if($id != ""){
			$sql_where = "where ".$id;
		}

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



		

		$row = query($sql);
		return $row['locutor'];
	}
?>