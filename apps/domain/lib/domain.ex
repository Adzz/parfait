defmodule Domain do
  def email_for_signup(%{preffered_name: name, address: address}) do
    %{
      to: name,
      subject: "Give us all your data",
      body: "#{name} welcome to the app of your life..."
    }
  end
end
