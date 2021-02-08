defmodule KeyLearningWeb.CourseLive do
  use KeyLearningWeb, :live_view

  @impl true
  def mount(_params, session, socket) do
    socket = assing_default(session, socket)
    {:ok, socket}
  end
end
