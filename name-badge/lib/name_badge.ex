defmodule NameBadge do

  defp get_id(id) do
    if id !== nil, do: "[#{id}] - "
  end

  defp get_dep(department) do
    if department !== nil, do: department, else: "owner"
  end

  def print(id, name, department) do
    id_dep = get_id(id)
    department = get_dep(department)
    "#{id_dep}#{name} - #{String.upcase(department)}"
  end
end
