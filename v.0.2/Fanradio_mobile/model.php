<?php
	include('db.php');
	class Model{
		public function getLocutor($id){
			$db = new DB();
            $sql = "select locutor from locutor where idlocutor='".$id."'";
			$row = $db->query($sql);
			return $row['locutor'];
		}

		public function getPrograma($id){
            $db = new DB();
            $sql = "select titulo from programa where idprograma='".$id."'";
			$row = $db->query($sql);
			return $row['titulo'];
		}

        public function getHorario(){
            $db = new DB();
            date_default_timezone_set("America/Lima");
            $hour  = date("H:i:s");
            $day = date("w");
            $sql = "select idprograma,idlocutor from horario where dia=".(int)$day." and ( horainicio <='".$hour."' and horafin >='". $hour ."')";
            $row =$db->query($sql);
            if($row != null){
                $result = $this->getPrograma($row['idprograma'])." , ".$this->getLocutor($row['idlocutor']);
                return $result;
            }else{
                return $this->getPrograma('P000').','.$this->getLocutor('L000');
            }

        }
	}
?>