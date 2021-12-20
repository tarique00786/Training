require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    check "Active" if @student.active
    fill_in "Address", with: @student.address
    fill_in "Date of birth", with: @student.date_of_birth
    fill_in "Gender", with: @student.gender
    fill_in "Name", with: @student.name
    fill_in "Semester", with: @student.semester
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    check "Active" if @student.active
    fill_in "Address", with: @student.address
    fill_in "Date of birth", with: @student.date_of_birth
    fill_in "Gender", with: @student.gender
    fill_in "Name", with: @student.name
    fill_in "Semester", with: @student.semester
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end
