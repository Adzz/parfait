defmodule Actions do
  def send_welcome_email(address) do
    address
    # We can't do this because Actions doesn't know about infra.
    # The decoupling we want is to not know about the specifics of
    # the db, for example. But we still need to be able to say get
    # me more data so I can create domain concepts out of it.
    |> Infrastructure.Customers.get()
    |> Domain.email_for_signup()
    |> Infrastructure.send_email()
  end
end
