defmodule Defr do
  defmacro __using__(_opts) do
    quote do
      require Defr
      import Defr
    end
  end

  defmacro defr(name, opts) do
    quote do
      def unquote(name) do
        [do: result] = unquote(opts)
        result
      catch
        {:return, value} -> value
      end
    end
  end

  def return(value) do
    throw({:return, value})
  end
end
