def overlap rec1, rec2
  rec1[1].min > rec2[0].max && rec1[1].max < rec2[1].min ? true : false
end
