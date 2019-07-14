defmodule Actions do
  def send_welcome_email(address) do
    address
    |> Infrastructure.Customers.get()
    |> Domain.email_for_signup()
    |> Infrastructure.send_email()
  end
end
