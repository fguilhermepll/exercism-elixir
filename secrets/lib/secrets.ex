defmodule Secrets do
  def secret_add(secret) do
    fn adder -> adder + secret end
  end

  def secret_subtract(secret) do
    fn subs -> subs - secret end
  end

  def secret_multiply(secret) do
    fn mult -> mult * secret end
  end

  def secret_divide(secret) do
    fn divide -> div(divide, secret) end
  end

  def secret_and(secret) do
    fn and_op -> Bitwise.&&&(secret, and_op) end
  end

  def secret_xor(secret) do
    fn xor_op -> Bitwise.^^^(secret, xor_op) end
  end

  def secret_combine(secret_function1, secret_function2) do
    fn combined -> secret_function2.(secret_function1.(combined)) end
  end
end
