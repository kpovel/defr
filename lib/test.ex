defmodule Test do
  use Defr

  defr foo(value) do
    dbg(value)

    # condition = true
    #
    # if condition do
    #   Defr.return(:early_return)
    # end

    value
  end
end
