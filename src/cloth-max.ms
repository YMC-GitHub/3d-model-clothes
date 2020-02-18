-- ball
ball=Sphere  isSelected:on
ball.radius = 500
ball.segs = 30
ball.pos = [0,0,0]
ball.name = "ball"

-- clothes
clothes = Plane()
select clothes
clothes.length = 2500
clothes.width = 2400
clothes.lengthsegs = 15
clothes.widthsegs = 15
clothes.renderScale = 1.0
clothes.density = 1.0
clothes.name = "clothes"

clothes.pos = [0,0,500]
clothes.lengthsegs = 60
clothes.widthsegs = 60

clothes.pos = [0,0,500]


select clothes
selectMore ball
-- curd 布化
modPanel.addModToSelection (Cloth ()) ui:on
-- do sth. for cloth and ball
-- ...

