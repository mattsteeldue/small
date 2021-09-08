<?php 
    
        $data = $_GET["DATA"] ;
        
        $ary = explode( ',', $data ) ;
        sort( $ary ) ;
        
        $output = array( ) ;
        
        $i = 0 ;
        while ( count($ary) ) {
            array_push( $output, array_pop( $ary ) ) ;
            if ( count($ary) ) {
                array_push( $output, array_shift( $ary ) ) ;
            }
        }
        
        $result = implode(',', $output) ;

        echo "$result" ;
        
        
    ?>