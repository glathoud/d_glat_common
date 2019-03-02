module d_glat.flatcode.mat_id;

import std.algorithm;
import std.stdio;

double[] flatcode_mat_id( in ulong I )
{
  return flatcode_mat_id( I, I );
}

double[] flatcode_mat_id( in ulong I, in ulong J )
{
  double[] ret = new double[ I*J ];
  ret[] = 0;
  
  for (ulong i = 0, ind = 0; i < min(I,J); ++i, ind += J+1)
    ret[ ind ] = 1;

  return ret;
}

unittest
{
  writeln;
  writeln( "unittest starts: mat_id" );

  assert( flatcode_mat_id( 4 )
          == [
              1.0, 0.0, 0.0, 0.0,
              0.0, 1.0, 0.0, 0.0,
              0.0, 0.0, 1.0, 0.0,
              0.0, 0.0, 0.0, 1.0
              ]
          );

  assert( flatcode_mat_id( 4, 6 )
          == [
              1.0, 0.0, 0.0, 0.0, 0.0, 0.0,
              0.0, 1.0, 0.0, 0.0, 0.0, 0.0,
              0.0, 0.0, 1.0, 0.0, 0.0, 0.0,
              0.0, 0.0, 0.0, 1.0, 0.0, 0.0
              ]
          );

  assert( flatcode_mat_id( 6, 4 )
          == [
              1.0, 0.0, 0.0, 0.0,
              0.0, 1.0, 0.0, 0.0,
              0.0, 0.0, 1.0, 0.0,
              0.0, 0.0, 0.0, 1.0,
              0.0, 0.0, 0.0, 0.0,
              0.0, 0.0, 0.0, 0.0
              ]
          );

  
  writeln("unittest passed: mat_id");
}