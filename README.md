--
--  Alternate sort
--

1. Design and implement a library/package to alternate sort the given array.
Examples:
    Input                    Output
    1, 7, 2, 3, 4, 5, 6      7, 1, 6, 2, 5, 3, 4
    2, -99, 7, 3, 5, 6       7, -99, 6, 2, 5, 3
    8, 8, 3, 1, -7, -7       8, -7, 8, -7, 3, 1
    5, 5, 5, 5, 5, 5, 5      5, 5, 5, 5, 5, 5, 5

   I used Perl to study the problem



2. How can we be reasonably sure about the correctness of the solution?

    We have to provid a complete set of successful tests, the algorithm is linear. 


3. Discuss the space-time complexity of the proposed solution (both in general and language related)

    There are two phases, first a built-in sort (usually a quicksort) and second a linear parse along the sorted array. 
    Time complexity remains ~ O( n log n )
    Space complexity is linear.
    

4. Is there any pathological input or possible corner case to be taken into account?

    I see none.


5. Provide this solution as a service a user can call via HTTP (preferred deployment method is docker but alternatives are welcome if justified)

    I'm not familiar with Dockerfile and I prefer using docker-compose technique: in trunk directory there is docker-compose.yaml that can be used directly via
    
      $ docker-compose up
    
    that builds and starts the container. PHP page can be accessed via browser providing a DATA parameter, for example
    
      http://localhost:8000/asort.php?DATA=1,2,3,4,5,6
      
    or via curl
    
      curl "http://localhost:8000/asort.php" --get --data DATA="1,2,3,4,5,6"
  


