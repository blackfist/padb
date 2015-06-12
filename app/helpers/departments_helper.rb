module DepartmentsHelper
  def department_levels
    [
      ["Federal","federal"],
      ["State","state"],
      ["County","county"],
      ["City","city"],
      ["Unknown","unknown"],
      ["Other","other"]
    ]
  end
end
