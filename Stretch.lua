return function(page, offset, screen_width, screen_height)
  page.layer.x = page.layer.x + offset
  local percent = math.abs(offset/page.width)

  for i, icon in subviews(page) do
    -- icon center
    local icon_centerx = icon.x + icon.width/2
    local icon_offsetx =  math.abs((page.width/2)-icon_centerx)

    if offset < 0 then -- right page
      local percent2 = (icon_centerx+50) / page.width
      icon:translate(icon_centerx*percent*percent2*1.5, 0, 0)
      --icon:scale(1+(percent*percent2)*2, 1)
    else -- left page
      local percent2 = (page.width-icon_centerx) / page.width
      icon:translate(-((page.width-icon_centerx)*percent*percent2)*1.5, 0, 0)
      --icon:scale(1+(percent*percent2)*2, 1)
    end
  end
  page.layer.x = page.layer.x - offset * 1.2
end
