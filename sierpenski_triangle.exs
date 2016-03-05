defmodule SierpinskiTriangle do

  def build(n) do
    f = fn(x) -> IO.puts "#{x}" end
    Enum.each(triangle(n, ["*"], " "), f)
  end
 
  defp triangle(0, down, _), do: down
  defp triangle(n, down, sp) do
    next = (for x <- down, do: sp<>x<>sp) ++ (for x <- down, do: x<>" "<>x)
    triangle(n-1, next, sp<>sp)
  end
end

`$ iex`
`$ SierpinskiTriangle.build(4)`
               *
              * *
             *   *
            * * * *
           *       *
          * *     * *
         *   *   *   *
        * * * * * * * *
       *               *
      * *             * *
     *   *           *   *
    * * * *         * * * *
   *       *       *       *
  * *     * *     * *     * *
 *   *   *   *   *   *   *   *
* * * * * * * * * * * * * * * *
:ok
