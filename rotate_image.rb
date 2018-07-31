def rotate_image(a)
  a.transpose.each { |row| row.reverse! }
end
