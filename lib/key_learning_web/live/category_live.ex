defmodule KeyLearningWeb.CategoryLive do
  use KeyLearningWeb, :live_view
  alias KeyLearning.School

  @impl true
  def mount(_params, _session, socket) do
    if connected?(socket), do: School.subscribe()

    {:ok,
     socket
     |> assign(
       courses: School.list_courses(),
       search: "",
       loading: false,
       matches: []
     )}
  end

  @impl true
  def handle_event("options-available", %{"search" => search}, socket) do
    option_courses =
      search
      |> School.list_courses()
      |> Enum.map(& &1.name)
      |> IO.inspect()

    {:noreply, socket |> assign(matches: option_courses)}
  end

  @impl true
  def handle_event("search", %{"search" => search}, socket) do
    send(self(), {:search_filter, search})

    {:noreply,
     socket
     |> assign(
       courses: [],
       search: search,
       loading: true,
       matches: []
     )}
  end

  @impl true
  def handle_info({:course_created, course}, socket) do
    {:noreply, socket |> update(:courses, &[course | &1])}
  end

  @impl true
  def handle_info({:search_filter, search}, socket) do
    :timer.sleep(2000)

    search
    |> School.list_courses()
    |> case do
      [] ->
        socket =
          socket
          |> put_flash(:error, "Course Does not exist")
          |> assign(courses: [], search: search, matches: [], loading: false)

        {:noreply, socket}

      courses ->
        {:noreply,
         socket |> assign(courses: courses, search: search, matches: [], loading: false)}
    end
  end
end
