defmodule Flightex do
  alias Flightex.Bookings.CreateOrUpdate, as: CreateOrUpdateBooking
  alias Flightex.Bookings.Agent, as: BookingsAgent
  alias Flightex.Users.Agent, as: UserAgent

  def start_agents() do
    BookingsAgent.start_link(%{})
    UserAgent.start_link(%{})
  end

  defdelegate create_or_update_booking(params), to: CreateOrUpdateBooking, as: :call
end
