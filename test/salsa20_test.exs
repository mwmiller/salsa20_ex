defmodule Salsa20Test do
  use PowerAssert
  doctest Salsa20
  import Salsa20

  test "single crypt" do
    k = "this is 32 bytes long as our key"
    v = "8B nonce"

    encrypted = crypt("secret message", k, v)

    assert encrypted == <<32, 136, 123, 6, 144, 168, 3, 37, 50, 103, 126, 45, 240, 155>>
    assert encrypted |> crypt(k,v) == "secret message"

  end

  test "stream crypt" do
    k = "this is 32 bytes long as our key"
    v = "8B nonce"

    {s,p} = crypt_bytes("sec", {k,v,0,""},[])
    {full_message, _,} = crypt_bytes("ret message", p, [s])

    assert full_message == <<32, 136, 123, 6, 144, 168, 3, 37, 50, 103, 126, 45, 240, 155>>
  end

end
