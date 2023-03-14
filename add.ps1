    $Path = '/balraj.nuspec'
    [XML] $xmlfile = (Get-Content $Path)

    $files = $xmlfile.CreateElement('files')
    $file = $xmlfile.CreateElement('file')
    $file.SetAttribute("src","**")
    $file.SetAttribute("target","./*")
    $files.AppendChild($file)
    $xmlfile.package.AppendChild($files)

    $xmlfile.Save($Path)
