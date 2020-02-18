-- ball
ball=Sphere  isSelected:on
ball.radius = 500
ball.segs = 30
ball.pos = [0,0,0]
ball.name = "ball"

bed = box()
select bed
bed.width = 2000
bed.height = 500
bed.length = 1800
bed.widthsegs=1
bed.heightsegs=1
bed.lengthsegs=1
bed.mapcoords = on
bed.name = "bed"

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

/*
case for ball
sliderTime = 20
select clothes
macros.run "Modifier Stack" "Convert_to_Poly"
*/

/*
case for bed
sliderTime = 11
select clothes
macros.run "Modifier Stack" "Convert_to_Poly"
*/

-- 视图模式
actionMan.executeAction 0 "616"  -- Nitrous Views: Nitrous Visual Style Clay
--actionMan.executeAction 0 "553"  -- Views: Viewport Render Level Facets
--actionMan.executeAction 0 "611"  -- Nitrous Views: Nitrous Visual Style Acrylic

/*
delete ball
delete bed
*/
