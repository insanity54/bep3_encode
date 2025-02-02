defmodule BepEncodeTest do
  use ExUnit.Case
  doctest BepEncode



  test "The WIRED CD - Rip. Sample. Mash. Share a8 8f da 59 54 e8 91 78 c3 72 71 6a 6a 78 b8 18 0e d4 da d3" do
    actual = BepEncode.bep_encode("a88fda5954e89178c372716a6a78b8180ed4dad3")
    expected = "%a8%8f%daYT%e8%91x%c3rqjjx%b8%18%0e%d4%da%d3"
    assert actual === expected
  end

  test "tails-amd64-6.10-img 07 b4 51 63 36 e4 af e9 23 2c 73 bc 31 26 42 59 0a 7d 7e 95" do
    actual = BepEncode.bep_encode("07b4516336e4afe9232c73bc312642590a7d7e95")
    expected = "%07%b4Qc6%e4%af%e9%23%2cs%bc1%26BY%0a%7d~%95"
    assert actual === expected
  end

  test "linuxmint-22-mate-64bit.iso e0 a4 05 8e 40 7d dd ad 1c ac f8 c9 ce db 0b 27 21 c0 7f 92" do
    actual = BepEncode.bep_encode("e0a4058e407dddad1cacf8c9cedb0b2721c07f92")
    expected = "%e0%a4%05%8e%40%7d%dd%ad%1c%ac%f8%c9%ce%db%0b%27!%c0%7f%92"
    assert actual === expected
  end

  test "debian-12.8.0-amd64-DVD-1.iso 56 3e 72 81 c0 00 e1 80 91 e5 c0 d3 9d 09 8c ff 13 5d ab 26" do
    actual = BepEncode.bep_encode("563e7281c000e18091e5c0d39d098cff135dab26")
    expected = "V%3er%81%c0%00%e1%80%91%e5%c0%d3%9d%09%8c%ff%13%5d%ab%26"
    assert actual === expected
  end

  test "KNOPPIX_V9.1DVD-2021-01-25-EN c0 3b b7 09 bd 7e fe 79 68 87 75 c4 fc 92 51 41 e4 1d b2 87" do
    actual = BepEncode.bep_encode("c03bb709bd7efe79688775c4fc925141e41db287")
    expected = "%c0%3b%b7%09%bd~%feyh%87u%c4%fc%92QA%e4%1d%b2%87"
    assert actual === expected
  end

  test "Peppermint-7-20160616-i386.iso 72 c3 7d bf e4 39 0f 1b 74 b9 b4 25 07 e8 97 01 b4 9e c7 a3" do
    actual = BepEncode.bep_encode("72c37dbfe4390f1b74b9b42507e89701b49ec7a3")
    expected = "r%c3%7d%bf%e49%0f%1bt%b9%b4%25%07%e8%97%01%b4%9e%c7%a3"
    assert actual === expected
  end

  test "crunchbang-11-20130506-i686.iso 88 fa 85 16 ca 2b 3d 3d 41 86 75 20 84 f9 3a 59 91 8f a3 51" do
    actual = BepEncode.bep_encode("88fa8516ca2b3d3d4186752084f93a59918fa351")
    expected = "%88%fa%85%16%ca%2b%3d%3dA%86u%20%84%f9%3aY%91%8f%a3Q"
    assert actual === expected
  end

  test "kali-linux-2024.3-installer-amd64.iso 7b 14 90 47 4e 51 53 6e 1a 7a c0 df ec 24 67 e8 6d a2 32 a4" do
    actual = BepEncode.bep_encode("7b1490474e51536e1a7ac0dfec2467e86da232a4")
    expected = "%7b%14%90GNQSn%1az%c0%df%ec%24g%e8m%a22%a4"
    assert actual === expected
  end

  test "6201484321_f1a88ca2cb_b ac c3 b2 e4 33 d7 c7 47 5a bb 59 41 b5 68 1c b7 a1 ea 26 e2" do
    actual = BepEncode.bep_encode("acc3b2e433d7c7475abb5941b5681cb7a1ea26e2")
    expected = "%ac%c3%b2%e43%d7%c7GZ%bbYA%b5h%1c%b7%a1%ea%26%e2"
    assert actual === expected
  end

end
