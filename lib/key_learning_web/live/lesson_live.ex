defmodule KeyLearningWeb.LessonLive do
  use KeyLearningWeb, :live_view
  alias KeyLearning.School

  @impl true
  def mount(%{"id" => id}, _session, socket) do
    lecture =  id
    |> School.get_lecture!
    |> IO.inspect
    {:ok, socket |> assign(lecture: lecture)}
  end
end
