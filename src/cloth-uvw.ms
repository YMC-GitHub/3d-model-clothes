boxGood = box()
select boxGood
$.wirecolor = color 177 88 27
$.name = "low"
-- 展开
/*
--3dmax2013
modPanel.addModToSelection (Unwrap_UVW ()) ui:on
$.modifiers[#unwrap_uvw].unwrap.move ()
$.modifiers[#Unwrap_UVW].texMapList.count = 0
$.modifiers[#Unwrap_UVW].texMapIDList.count = 0
$.modifiers[#Unwrap_UVW].baseMaterial_list.count = 1
$.modifiers[#Unwrap_UVW].baseMaterial_list[1] = undefined
$.modifiers[#Unwrap_UVW].texMapList.count = 0
$.modifiers[#Unwrap_UVW].texMapIDList.count = 0
$.modifiers[#Unwrap_UVW].texMapList.count = 1
$.modifiers[#Unwrap_UVW].texMapIDList.count = 1
$.modifiers[#Unwrap_UVW].texMapList[1] = Checker ()
$.modifiers[#Unwrap_UVW].texMapIDList[1] = -1
*/
-- --3dmax2018
modPanel.addModToSelection (Unwrap_UVW ()) ui:on
subobjectLevel = 2
$.modifiers[#unwrap_uvw].unwrap2.setFreeFormMode on
$.modifiers[#Unwrap_UVW].texMapList.count = 0
$.modifiers[#Unwrap_UVW].texMapIDList.count = 0
$.modifiers[#Unwrap_UVW].baseMaterial_list.count = 1
$.modifiers[#Unwrap_UVW].texMapList.count = 0
$.modifiers[#Unwrap_UVW].texMapIDList.count = 0
$.modifiers[#Unwrap_UVW].texMapList.count = 1
$.modifiers[#Unwrap_UVW].texMapIDList.count = 1
$.modifiers[#Unwrap_UVW].texMapList[1] = Checker ()
$.modifiers[#Unwrap_UVW].texMapIDList[1] = -1
$.modifiers[#Unwrap_UVW].TextureCheckerMaterial = Standardmaterial ()
--actionMan.executeAction 2077580866 "45346"  -- Unwrap UVW: Save Current Settings As Defaults
-- 展开成6个连续的面--十字架
-- 选中线
subobjectLevel = 2
boxGood.modifiers[#unwrap_uvw].unwrap6.setSelectedGeomEdgesByNode #{1, 3, 5..7, 16..17} $
-- 断开线
actionMan.executeAction 2077580866 "40013"  -- All Commands: Break Selected Vertices
subobjectLevel = 2
-- 剥离线
-- gui-快剥

/*
-- 展开成6个连续的面--错开的十字架
-- 选中线
subobjectLevel = 2
boxGood.modifiers[#unwrap_uvw].unwrap6.setSelectedGeomEdgesByNode #{5..7, 10, 14, 16..17} $
-- 断开线
actionMan.executeAction 2077580866 "40013"  -- All Commands: Break Selected Vertices
subobjectLevel = 2
-- 剥离线
-- gui-快剥
*/


--让模型“呈现出方格像素块”
--3dmax2013
--$.modifiers[#unwrap_uvw].unwrap.setCurrentMap 1
--3dmax2018
$.modifiers[#unwrap_uvw].unwrap.setCurrentMap 2

/*
-- 调整大小、位置、角度
$.modifiers[#unwrap_uvw].unwrap.move ()
$.modifiers[#unwrap_uvw].unwrap.rotate ()
$.modifiers[#unwrap_uvw].unwrap.scale ()
*/

select boxGood
-- curd TurboSmooth
-- 涡轮平滑
modPanel.addModToSelection (TurboSmooth ()) ui:on
$.modifiers[#TurboSmooth].iterations = 3 --3
-- curd Spherify
-- 盒子球化
modPanel.addModToSelection (Spherify ()) ui:on
$.modifiers[#Spherify].PERCENT = 98 --98
-- 涡轮平滑
modPanel.addModToSelection (TurboSmooth ()) ui:on
$.modifiers[#TurboSmooth].iterations = 0
$.modifiers[#TurboSmooth].useRenderIterations = on
$.modifiers[#TurboSmooth].renderIterations = 1



-- 让两个球重合在一起
unhide mybox
actionMan.executeAction 0 "557"  -- Views: Viewport Visual Style Edged Faces Toggle
select boxGood

SIZE=230 --230
SIZE=SIZE-1.0
boxGood.width = SIZE
boxGood.height = SIZE
boxGood.length = SIZE
-- boxGood.pos=[0,0,0]
boxGood.pos=[0,0,-SIZE/2]
boxGood.pos -- -117 -118
--[0,0,-20.625]
-- select boxGood
-- select mybox

--hide mybox
-- 把足球的纹理渲染到球体上
select boxGood
-- macros.run "Modifier Stack" "Convert_to_Poly"

macros.run "Render" "BakeDialog"

-- do sth. in ui ...
-- curd 投射
--c
-- modPanel.addModToSelection (Projection ()) ui:on
--r
--modPanel.setCurrentObject $.modifiers[#Projection]
--u
subobjectLevel = 1
$.modifiers[#Projection].pushValue = 0.5
-- $.modifiers[#Projection].pushValue = 5
-- showProperties $.modifiers[#Projection]




select mybox
-- showclass"box.*"
-- showclass"box.*"
-- boxGood.width
-- mybox.width
