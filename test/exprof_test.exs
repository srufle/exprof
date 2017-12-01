defmodule ExprofTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "sample runner" do
    assert capture_io(fn ->
      assert :ok = SampleRunner.run
    end) =~ ~r/FUNCTION\s+CALLS/m
  end
end
