-- -----------------   function   -------------
-- 随机颜色
fn randomColor arr =(
  RANDOM_NUM=1
  if( arr.count>1)then(RANDOM_NUM=random 1  arr.count)
  return arr[RANDOM_NUM]
)
-- 随机图片
fn randomImage arr =(
  return randomColor arr
)
fn dumStr str len = (
  local result=""
  for m=1 to len do (
    result=result+str
  )
  return result
)
-- dumStr "0" 5
-- "00000"

fn formatStr str len prefix = (
  local result=""
  if( str.count<len)then(
    result=(dumStr prefix (len - str.count))+str
  )else(
    result=str
  )
  return result
)

-- -----------------   config   -------------
PROJECT_PATH="D:\\code-store\\maxscript\\3d-model-cloth"
TEXTURE_PATH=PROJECT_PATH+"\\dist\\texture\\"
MAT_PATH=PROJECT_PATH+"\\dist\\material\\"
MAT_NAME="cloth"
-- -----------------   type   -------------
-- 纹理图片
IMAGE_ARR=#()
S_NUM=1
E_NUM=9

for m=S_NUM to E_NUM do (
index = m as string
file=TEXTURE_PATH+"texture"+(formatStr index 2 "0")+".jpg"
IMAGE_ARR[m]=file
)
S_NUM=1
E_NUM=IMAGE_ARR.count --24
--E_NUM=9

-- 标准材质
/*
for m=S_NUM to E_NUM do (
index = m as string
meditmaterials[m] = standard()
)
*/
-- 贴图材质
for m=S_NUM to E_NUM do (
index = m as string
meditmaterials[m] = standard()
meditmaterials[m].name="texture"+(formatStr index 2 "0")
meditmaterials[m].diffusemap = bitmaptexture filename:IMAGE_ARR[m]
)
-- 赋予物体材质
$.material = meditmaterials[random 1 E_NUM]
showtexturemap $.material on

-- 导出到材质库
file=MAT_PATH+MAT_NAME +".mat"
saveMaterialLibrary file
-- 导入某材质库
-- loadMaterialLibrary file

-- getMatLibFileName()

