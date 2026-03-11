#!/usr/bin/perl
$max=1000000;
$primes[0]=2;
$next=1;
print "2\t";
for ($i=3; $i<$max; $i += 2)
{
       $dividable=0;
       $j=0;
       while ( $primes[$j] <= sqrt($i) && $dividable == 0 )
       {
               if (($i % $primes[$j++]) == 0)
               {
                       $dividable=1;
               }
       }
       if ($dividable == 0)
       {
               print "$i\t";
               $primes[$next++]=$i;
       }
}
print "\nNumber of primes to $max are $next\n";
