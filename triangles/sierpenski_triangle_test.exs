if System.get_env("EXERCISM_TEST_EXAMPLES") do
  Code.load_file("example.exs")
else
  Code.load_file("sierpinski_triangle.exs")
end

ExUnit.start
ExUnit.configure exclude: :pending, trace: true

defmodule SierpinskiTriangleTest do
  use ExUnit.Case

  test "it outputs one input" do 
    output = String.strip """
      *
     """
    assert SierpinskiTriangle.build(0) === IO.puts(output)
  end

  test "it creates with input > 0" do 
    output = String.strip """
      *
     * *
     """
    assert SierpinskiTriangle.build(1) === IO.puts(output)
  end

   test "it creates with input 4" do 
    output = String.strip """
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
     """
    assert SierpinskiTriangle.build(4) === IO.puts(output)
  end
end
