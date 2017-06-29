using MiscUtils
using Base.Test

@def makesomevars begin
  x = 1
end
@makesomevars
@test x == 1
