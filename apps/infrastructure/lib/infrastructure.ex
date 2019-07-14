defmodule Infrastructure do
  def send_email(email_data) do
    email_data |> Sendgrid.send()
  end

  def signup_for(address) do
    with {:ok, _sent} <- Actions.send_welcome_email(address) do
      "Plz check your inbox"
    end
  end
end
