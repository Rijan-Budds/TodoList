defmodule TodoList do
  def new(), do: %{}

  def add_entry(todo_list, date, title) do
      Map.update(
         todo_list,
         date,
         [title],
         fn titles -> [title | titles] end
      )
  end

  def entries(todo_list, date) do
      Map.get(todo_list, date, [])
  end
end
#c("todo_list.ex")
#ctodo_list = TodoList.new()
#todo_list = TodoList.add_entry(todo_list, "2080-3-19", "watch oppenheimer") for adding to list
#entries_2080_3_19 = TodoList.entries(todo_list, "2080-3-19")
