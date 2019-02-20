module d_glat.core_process;

import std.array;
import std.process;

void assertExecute( in string[] cmd )
{
  auto tmp = executeShell( cmd.join( ' ' ) );
  assert( tmp.status == 0, tmp.output );
}
