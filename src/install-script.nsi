; Script generated by the HM NIS Edit Script Wizard.
Unicode True

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Structuraid"
!define PRODUCT_VERSION "0.1.0"
!define PRODUCT_PUBLISHER "PradaIng"
!define PRODUCT_WEB_SITE "https://github.com/pradaing"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\elevate.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "assets\structuraid-icon.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "..\LICENSE"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\UI\Structuraid Desktop.exe"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "Structuraid.exe"
InstallDir "$PROGRAMFILES64\Structuraid"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  File "..\dist\.keep"
  SetOutPath "$INSTDIR\daemon\app\controllers"
  File "..\dist\daemon\app\controllers\application_controller.rb"
  SetOutPath "$INSTDIR\daemon\app\controllers\concerns"
  File "..\dist\daemon\app\controllers\concerns\.keep"
  SetOutPath "$INSTDIR\daemon\app\controllers"
  File "..\dist\daemon\app\controllers\health_controller.rb"
  SetOutPath "$INSTDIR\daemon\app\models"
  File "..\dist\daemon\app\models\application_record.rb"
  SetOutPath "$INSTDIR\daemon\app\models\concerns"
  File "..\dist\daemon\app\models\concerns\.keep"
  SetOutPath "$INSTDIR\daemon\bin"
  File "..\dist\daemon\bin\bundle"
  File "..\dist\daemon\bin\rails"
  File "..\dist\daemon\bin\rake"
  File "..\dist\daemon\bin\setup"
  SetOutPath "$INSTDIR\daemon\config"
  File "..\dist\daemon\config\application.rb"
  File "..\dist\daemon\config\boot.rb"
  File "..\dist\daemon\config\credentials.yml.enc"
  File "..\dist\daemon\config\database.yml"
  File "..\dist\daemon\config\environment.rb"
  SetOutPath "$INSTDIR\daemon\config\environments"
  File "..\dist\daemon\config\environments\development.rb"
  File "..\dist\daemon\config\environments\production.rb"
  File "..\dist\daemon\config\environments\test.rb"
  SetOutPath "$INSTDIR\daemon\config\initializers"
  File "..\dist\daemon\config\initializers\cors.rb"
  File "..\dist\daemon\config\initializers\filter_parameter_logging.rb"
  File "..\dist\daemon\config\initializers\inflections.rb"
  SetOutPath "$INSTDIR\daemon\config\locales"
  File "..\dist\daemon\config\locales\en.yml"
  SetOutPath "$INSTDIR\daemon\config"
  File "..\dist\daemon\config\puma.rb"
  File "..\dist\daemon\config\routes.rb"
  SetOutPath "$INSTDIR\daemon"
  File "..\dist\daemon\config.ru"
  SetOutPath "$INSTDIR\daemon\db"
  File "..\dist\daemon\db\seeds.rb"
  SetOutPath "$INSTDIR\daemon"
  File "..\dist\daemon\Gemfile"
  File "..\dist\daemon\Gemfile.lock"
  SetOutPath "$INSTDIR\daemon\lib\tasks"
  File "..\dist\daemon\lib\tasks\.keep"
  SetOutPath "$INSTDIR\daemon\log"
  File "..\dist\daemon\log\.keep"
  SetOutPath "$INSTDIR\daemon\public"
  File "..\dist\daemon\public\robots.txt"
  SetOutPath "$INSTDIR\daemon"
  File "..\dist\daemon\Rakefile"
  File "..\dist\daemon\README.md"
  SetOutPath "$INSTDIR\daemon\spec\controllers"
  File "..\dist\daemon\spec\controllers\health_controller_spec.rb"
  SetOutPath "$INSTDIR\daemon\spec"
  File "..\dist\daemon\spec\rails_helper.rb"
  File "..\dist\daemon\spec\spec_helper.rb"
  SetOutPath "$INSTDIR\daemon\spec\support"
  File "..\dist\daemon\spec\support\factory_bot.rb"
  File "..\dist\daemon\spec\support\shoulda_matchers.rb"
  SetOutPath "$INSTDIR\daemon\tmp"
  File "..\dist\daemon\tmp\.keep"
  SetOutPath "$INSTDIR\daemon\tmp\pids"
  File "..\dist\daemon\tmp\pids\.keep"
  SetOutPath "$INSTDIR\daemon\vendor"
  File "..\dist\daemon\vendor\.keep"
  SetOutPath "$INSTDIR\UI"
  File "..\dist\UI\chrome_100_percent.pak"
  File "..\dist\UI\chrome_200_percent.pak"
  File "..\dist\UI\d3dcompiler_47.dll"
  File "..\dist\UI\ffmpeg.dll"
  File "..\dist\UI\icudtl.dat"
  File "..\dist\UI\libEGL.dll"
  File "..\dist\UI\libGLESv2.dll"
  File "..\dist\UI\LICENSE.electron.txt"
  File "..\dist\UI\LICENSES.chromium.html"
  SetOutPath "$INSTDIR\UI\locales"
  File "..\dist\UI\locales\af.pak"
  File "..\dist\UI\locales\am.pak"
  File "..\dist\UI\locales\ar.pak"
  File "..\dist\UI\locales\bg.pak"
  File "..\dist\UI\locales\bn.pak"
  File "..\dist\UI\locales\ca.pak"
  File "..\dist\UI\locales\cs.pak"
  File "..\dist\UI\locales\da.pak"
  File "..\dist\UI\locales\de.pak"
  File "..\dist\UI\locales\el.pak"
  File "..\dist\UI\locales\en-GB.pak"
  File "..\dist\UI\locales\en-US.pak"
  File "..\dist\UI\locales\es-419.pak"
  File "..\dist\UI\locales\es.pak"
  File "..\dist\UI\locales\et.pak"
  File "..\dist\UI\locales\fa.pak"
  File "..\dist\UI\locales\fi.pak"
  File "..\dist\UI\locales\fil.pak"
  File "..\dist\UI\locales\fr.pak"
  File "..\dist\UI\locales\gu.pak"
  File "..\dist\UI\locales\he.pak"
  File "..\dist\UI\locales\hi.pak"
  File "..\dist\UI\locales\hr.pak"
  File "..\dist\UI\locales\hu.pak"
  File "..\dist\UI\locales\id.pak"
  File "..\dist\UI\locales\it.pak"
  File "..\dist\UI\locales\ja.pak"
  File "..\dist\UI\locales\kn.pak"
  File "..\dist\UI\locales\ko.pak"
  File "..\dist\UI\locales\lt.pak"
  File "..\dist\UI\locales\lv.pak"
  File "..\dist\UI\locales\ml.pak"
  File "..\dist\UI\locales\mr.pak"
  File "..\dist\UI\locales\ms.pak"
  File "..\dist\UI\locales\nb.pak"
  File "..\dist\UI\locales\nl.pak"
  File "..\dist\UI\locales\pl.pak"
  File "..\dist\UI\locales\pt-BR.pak"
  File "..\dist\UI\locales\pt-PT.pak"
  File "..\dist\UI\locales\ro.pak"
  File "..\dist\UI\locales\ru.pak"
  File "..\dist\UI\locales\sk.pak"
  File "..\dist\UI\locales\sl.pak"
  File "..\dist\UI\locales\sr.pak"
  File "..\dist\UI\locales\sv.pak"
  File "..\dist\UI\locales\sw.pak"
  File "..\dist\UI\locales\ta.pak"
  File "..\dist\UI\locales\te.pak"
  File "..\dist\UI\locales\th.pak"
  File "..\dist\UI\locales\tr.pak"
  File "..\dist\UI\locales\uk.pak"
  File "..\dist\UI\locales\ur.pak"
  File "..\dist\UI\locales\vi.pak"
  File "..\dist\UI\locales\zh-CN.pak"
  File "..\dist\UI\locales\zh-TW.pak"
  SetOutPath "$INSTDIR\UI\resources"
  File "..\dist\UI\resources\app-update.yml"
  File "..\dist\UI\resources\app.asar"
  SetOutPath "$INSTDIR\UI\resources\assets"
  File "..\dist\UI\resources\assets\assets.d.ts"
  File "..\dist\UI\resources\assets\entitlements.mac.plist"
  File "..\dist\UI\resources\assets\icon.icns"
  File "..\dist\UI\resources\assets\icon.ico"
  File "..\dist\UI\resources\assets\icon.png"
  File "..\dist\UI\resources\assets\icon.svg"
  SetOutPath "$INSTDIR\UI\resources\assets\icons"
  File "..\dist\UI\resources\assets\icons\1024x1024.png"
  File "..\dist\UI\resources\assets\icons\128x128.png"
  File "..\dist\UI\resources\assets\icons\16x16.png"
  File "..\dist\UI\resources\assets\icons\24x24.png"
  File "..\dist\UI\resources\assets\icons\256x256.png"
  File "..\dist\UI\resources\assets\icons\32x32.png"
  File "..\dist\UI\resources\assets\icons\48x48.png"
  File "..\dist\UI\resources\assets\icons\512x512.png"
  File "..\dist\UI\resources\assets\icons\64x64.png"
  File "..\dist\UI\resources\assets\icons\96x96.png"
  SetOutPath "$INSTDIR\UI\resources"
  File "..\dist\UI\resources\elevate.exe"
  SetOutPath "$INSTDIR\UI"
  File "..\dist\UI\resources.pak"
  File "..\dist\UI\snapshot_blob.bin"
  File "..\dist\UI\Structuraid Desktop.exe"
  CreateDirectory "$SMPROGRAMS\Structuraid"
  CreateShortCut "$SMPROGRAMS\Structuraid\Structuraid Desktop.lnk" "$INSTDIR\UI\Structuraid Desktop.exe"
  CreateShortCut "$DESKTOP\Structuraid Desktop.lnk" "$INSTDIR\UI\Structuraid Desktop.exe"
  File "..\dist\UI\v8_context_snapshot.bin"
  File "..\dist\UI\vk_swiftshader.dll"
  File "..\dist\UI\vk_swiftshader_icd.json"
  File "..\dist\UI\vulkan-1.dll"
SectionEnd

Section -AdditionalIcons
  SetOutPath $INSTDIR
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\Structuraid\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\Structuraid\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\UI\resources\elevate.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\UI\resources\elevate.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\UI\vulkan-1.dll"
  Delete "$INSTDIR\UI\vk_swiftshader_icd.json"
  Delete "$INSTDIR\UI\vk_swiftshader.dll"
  Delete "$INSTDIR\UI\v8_context_snapshot.bin"
  Delete "$INSTDIR\UI\Structuraid Desktop.exe"
  Delete "$INSTDIR\UI\snapshot_blob.bin"
  Delete "$INSTDIR\UI\resources.pak"
  Delete "$INSTDIR\UI\resources\elevate.exe"
  Delete "$INSTDIR\UI\resources\assets\icons\96x96.png"
  Delete "$INSTDIR\UI\resources\assets\icons\64x64.png"
  Delete "$INSTDIR\UI\resources\assets\icons\512x512.png"
  Delete "$INSTDIR\UI\resources\assets\icons\48x48.png"
  Delete "$INSTDIR\UI\resources\assets\icons\32x32.png"
  Delete "$INSTDIR\UI\resources\assets\icons\256x256.png"
  Delete "$INSTDIR\UI\resources\assets\icons\24x24.png"
  Delete "$INSTDIR\UI\resources\assets\icons\16x16.png"
  Delete "$INSTDIR\UI\resources\assets\icons\128x128.png"
  Delete "$INSTDIR\UI\resources\assets\icons\1024x1024.png"
  Delete "$INSTDIR\UI\resources\assets\icon.svg"
  Delete "$INSTDIR\UI\resources\assets\icon.png"
  Delete "$INSTDIR\UI\resources\assets\icon.ico"
  Delete "$INSTDIR\UI\resources\assets\icon.icns"
  Delete "$INSTDIR\UI\resources\assets\entitlements.mac.plist"
  Delete "$INSTDIR\UI\resources\assets\assets.d.ts"
  Delete "$INSTDIR\UI\resources\app.asar"
  Delete "$INSTDIR\UI\resources\app-update.yml"
  Delete "$INSTDIR\UI\locales\zh-TW.pak"
  Delete "$INSTDIR\UI\locales\zh-CN.pak"
  Delete "$INSTDIR\UI\locales\vi.pak"
  Delete "$INSTDIR\UI\locales\ur.pak"
  Delete "$INSTDIR\UI\locales\uk.pak"
  Delete "$INSTDIR\UI\locales\tr.pak"
  Delete "$INSTDIR\UI\locales\th.pak"
  Delete "$INSTDIR\UI\locales\te.pak"
  Delete "$INSTDIR\UI\locales\ta.pak"
  Delete "$INSTDIR\UI\locales\sw.pak"
  Delete "$INSTDIR\UI\locales\sv.pak"
  Delete "$INSTDIR\UI\locales\sr.pak"
  Delete "$INSTDIR\UI\locales\sl.pak"
  Delete "$INSTDIR\UI\locales\sk.pak"
  Delete "$INSTDIR\UI\locales\ru.pak"
  Delete "$INSTDIR\UI\locales\ro.pak"
  Delete "$INSTDIR\UI\locales\pt-PT.pak"
  Delete "$INSTDIR\UI\locales\pt-BR.pak"
  Delete "$INSTDIR\UI\locales\pl.pak"
  Delete "$INSTDIR\UI\locales\nl.pak"
  Delete "$INSTDIR\UI\locales\nb.pak"
  Delete "$INSTDIR\UI\locales\ms.pak"
  Delete "$INSTDIR\UI\locales\mr.pak"
  Delete "$INSTDIR\UI\locales\ml.pak"
  Delete "$INSTDIR\UI\locales\lv.pak"
  Delete "$INSTDIR\UI\locales\lt.pak"
  Delete "$INSTDIR\UI\locales\ko.pak"
  Delete "$INSTDIR\UI\locales\kn.pak"
  Delete "$INSTDIR\UI\locales\ja.pak"
  Delete "$INSTDIR\UI\locales\it.pak"
  Delete "$INSTDIR\UI\locales\id.pak"
  Delete "$INSTDIR\UI\locales\hu.pak"
  Delete "$INSTDIR\UI\locales\hr.pak"
  Delete "$INSTDIR\UI\locales\hi.pak"
  Delete "$INSTDIR\UI\locales\he.pak"
  Delete "$INSTDIR\UI\locales\gu.pak"
  Delete "$INSTDIR\UI\locales\fr.pak"
  Delete "$INSTDIR\UI\locales\fil.pak"
  Delete "$INSTDIR\UI\locales\fi.pak"
  Delete "$INSTDIR\UI\locales\fa.pak"
  Delete "$INSTDIR\UI\locales\et.pak"
  Delete "$INSTDIR\UI\locales\es.pak"
  Delete "$INSTDIR\UI\locales\es-419.pak"
  Delete "$INSTDIR\UI\locales\en-US.pak"
  Delete "$INSTDIR\UI\locales\en-GB.pak"
  Delete "$INSTDIR\UI\locales\el.pak"
  Delete "$INSTDIR\UI\locales\de.pak"
  Delete "$INSTDIR\UI\locales\da.pak"
  Delete "$INSTDIR\UI\locales\cs.pak"
  Delete "$INSTDIR\UI\locales\ca.pak"
  Delete "$INSTDIR\UI\locales\bn.pak"
  Delete "$INSTDIR\UI\locales\bg.pak"
  Delete "$INSTDIR\UI\locales\ar.pak"
  Delete "$INSTDIR\UI\locales\am.pak"
  Delete "$INSTDIR\UI\locales\af.pak"
  Delete "$INSTDIR\UI\LICENSES.chromium.html"
  Delete "$INSTDIR\UI\LICENSE.electron.txt"
  Delete "$INSTDIR\UI\libGLESv2.dll"
  Delete "$INSTDIR\UI\libEGL.dll"
  Delete "$INSTDIR\UI\icudtl.dat"
  Delete "$INSTDIR\UI\ffmpeg.dll"
  Delete "$INSTDIR\UI\d3dcompiler_47.dll"
  Delete "$INSTDIR\UI\chrome_200_percent.pak"
  Delete "$INSTDIR\UI\chrome_100_percent.pak"
  Delete "$INSTDIR\daemon\vendor\.keep"
  Delete "$INSTDIR\daemon\tmp\pids\.keep"
  Delete "$INSTDIR\daemon\tmp\.keep"
  Delete "$INSTDIR\daemon\spec\support\shoulda_matchers.rb"
  Delete "$INSTDIR\daemon\spec\support\factory_bot.rb"
  Delete "$INSTDIR\daemon\spec\spec_helper.rb"
  Delete "$INSTDIR\daemon\spec\rails_helper.rb"
  Delete "$INSTDIR\daemon\spec\controllers\health_controller_spec.rb"
  Delete "$INSTDIR\daemon\README.md"
  Delete "$INSTDIR\daemon\Rakefile"
  Delete "$INSTDIR\daemon\public\robots.txt"
  Delete "$INSTDIR\daemon\log\.keep"
  Delete "$INSTDIR\daemon\lib\tasks\.keep"
  Delete "$INSTDIR\daemon\Gemfile.lock"
  Delete "$INSTDIR\daemon\Gemfile"
  Delete "$INSTDIR\daemon\db\seeds.rb"
  Delete "$INSTDIR\daemon\config.ru"
  Delete "$INSTDIR\daemon\config\routes.rb"
  Delete "$INSTDIR\daemon\config\puma.rb"
  Delete "$INSTDIR\daemon\config\locales\en.yml"
  Delete "$INSTDIR\daemon\config\initializers\inflections.rb"
  Delete "$INSTDIR\daemon\config\initializers\filter_parameter_logging.rb"
  Delete "$INSTDIR\daemon\config\initializers\cors.rb"
  Delete "$INSTDIR\daemon\config\environments\test.rb"
  Delete "$INSTDIR\daemon\config\environments\production.rb"
  Delete "$INSTDIR\daemon\config\environments\development.rb"
  Delete "$INSTDIR\daemon\config\environment.rb"
  Delete "$INSTDIR\daemon\config\database.yml"
  Delete "$INSTDIR\daemon\config\credentials.yml.enc"
  Delete "$INSTDIR\daemon\config\boot.rb"
  Delete "$INSTDIR\daemon\config\application.rb"
  Delete "$INSTDIR\daemon\bin\setup"
  Delete "$INSTDIR\daemon\bin\rake"
  Delete "$INSTDIR\daemon\bin\rails"
  Delete "$INSTDIR\daemon\bin\bundle"
  Delete "$INSTDIR\daemon\app\models\concerns\.keep"
  Delete "$INSTDIR\daemon\app\models\application_record.rb"
  Delete "$INSTDIR\daemon\app\controllers\health_controller.rb"
  Delete "$INSTDIR\daemon\app\controllers\concerns\.keep"
  Delete "$INSTDIR\daemon\app\controllers\application_controller.rb"
  Delete "$INSTDIR\.keep"

  Delete "$SMPROGRAMS\Structuraid\Uninstall.lnk"
  Delete "$SMPROGRAMS\Structuraid\Website.lnk"
  Delete "$DESKTOP\Structuraid Desktop.lnk"
  Delete "$SMPROGRAMS\Structuraid\Structuraid Desktop.lnk"

  RMDir "$SMPROGRAMS\Structuraid"
  RMDir "$INSTDIR\UI\resources\assets\icons"
  RMDir "$INSTDIR\UI\resources\assets"
  RMDir "$INSTDIR\UI\resources"
  RMDir "$INSTDIR\UI\locales"
  RMDir "$INSTDIR\UI"
  RMDir "$INSTDIR\daemon\vendor"
  RMDir "$INSTDIR\daemon\tmp\pids"
  RMDir "$INSTDIR\daemon\tmp"
  RMDir "$INSTDIR\daemon\spec\support"
  RMDir "$INSTDIR\daemon\spec\controllers"
  RMDir "$INSTDIR\daemon\spec"
  RMDir "$INSTDIR\daemon\public"
  RMDir "$INSTDIR\daemon\log"
  RMDir "$INSTDIR\daemon\lib\tasks"
  RMDir "$INSTDIR\daemon\db"
  RMDir "$INSTDIR\daemon\config\locales"
  RMDir "$INSTDIR\daemon\config\initializers"
  RMDir "$INSTDIR\daemon\config\environments"
  RMDir "$INSTDIR\daemon\config"
  RMDir "$INSTDIR\daemon\bin"
  RMDir "$INSTDIR\daemon\app\models\concerns"
  RMDir "$INSTDIR\daemon\app\models"
  RMDir "$INSTDIR\daemon\app\controllers\concerns"
  RMDir "$INSTDIR\daemon\app\controllers"
  RMDir "$INSTDIR\daemon"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd