return function (page, offset)
  local percent = math.abs(offset/page.width)
  page:scale(1+percent, 1)
  page:translate(-offset/1.5)
end
