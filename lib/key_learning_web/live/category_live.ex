defmodule KeyLearningWeb.CategoryLive do
  use KeyLearningWeb, :live_view
  alias KeyLearning.School

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(courses: School.list_courses())}
  end
end
