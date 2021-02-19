defmodule KeyLearningWeb.CourseLive do
  use KeyLearningWeb, :live_view
  alias KeyLearning.School

  @impl true
  def mount(%{"id" => id}, _session, socket) do
    course =  id
    |> School.get_course!

    # socket = KeyLearningWeb.LiveHelpers.assign_default(session, socket)
    {:ok, socket |> assign(course: course)}
  end
end
