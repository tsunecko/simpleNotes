defmodule SimpleNotes.NotesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `SimpleNotes.Notes` context.
  """

  @doc """
  Generate a note.
  """
  def note_fixture(attrs \\ %{}) do
    {:ok, note} =
      attrs
      |> Enum.into(%{
        text: "some text"
      })
      |> SimpleNotes.Notes.create_note()

    note
  end
end
