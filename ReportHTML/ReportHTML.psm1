#region Included Base64 Sources

$Script:SAMPLE_LOGO_SOURCE=@"
data:image/jpeg;base64,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
"@

$Script:CORPORATE_LOGO_SOURCE=@"
data:image/jpeg;base64,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
"@

$Script:ALTERNATE_LOGO_SOURCE=@'
data:image/jpeg;base64,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
'@


#endregion

#region Report Options

Function New-HTMLReportOptions
{
    [CmdletBinding(DefaultParameterSetName='NoSave')]
    param 
    (
        [Parameter(Mandatory=$false,ParameterSetName='NoSave')]
        [Parameter(Mandatory=$false,ParameterSetName='Save')]
        [System.Collections.Hashtable]
		$LogoSources,
		[Parameter(Mandatory=$false,ParameterSetName='NoSave')]
        [Parameter(Mandatory=$false,ParameterSetName='Save')]
        [System.Collections.Hashtable]
        $ColorSchemes,
        [Parameter(Mandatory=$false,ParameterSetName='NoSave')]
        [Parameter(Mandatory=$false,ParameterSetName='Save')]
        $CSSName = "default",
        [Parameter(Mandatory=$false,ParameterSetName='NoSave')]
        [Parameter(Mandatory=$false,ParameterSetName='Save')]
        [String]
        $CSSPath,
        [Parameter(Mandatory=$false,ParameterSetName='NoSave')]
        [Parameter(Mandatory=$false,ParameterSetName='Save')]
        [String]
        $ScriptPath,
        [Parameter(Mandatory=$false,ParameterSetName='NoSave')]
        [Parameter(Mandatory=$false,ParameterSetName='Save')]
        [String]
        $ColorSchemePath,
        [Parameter(Mandatory=$false,ParameterSetName='NoSave')]
        [Parameter(Mandatory=$false,ParameterSetName='Save')]
        [String]
        $LogoPath,
        [Parameter(Mandatory=$false,ParameterSetName='Save')]
        [String]$SaveOptionsPath 
    )

    if($LogoSources -eq $null)
    {
		$LogoSources = get-htmllogos -Logopath $LogoPath	
    }
	
	if($ColorSchemes -eq $null)
    {
		$ColorSchemes=Get-HTMLColorSchemes -SchemePath $ColorSchemePath
	}
    if ($LogoSources -eq $null)
	{
		$LogoSources = Get-HTMLLogos -LogoPath $LogoPath
	}
    $ScriptHeaderContent=Get-HTMLJavaScripts -ScriptPath $ScriptPath
    $CSSFiles = Get-HTMLCSS -CSSPath $CSSPath
	get-content ($CSSFiles | ? {$_.name -eq "$CSSName.css"}).fullname | ForEach-Object{$StyleHeaderContent  += "`r`n" + $_  }
	

    $Options=New-Object psobject -Property @{
        Logos=$LogoSources;
        ScriptContent=$ScriptHeaderContent;
        StyleContent=$StyleHeaderContent;
        ColorSchemes=$ColorSchemes;
    }
	set-variable -Name GlobalColorSchemes -Value $ColorSchemes -Scope Global
    if ([string]::IsNullOrEmpty($SaveOptionsPath)) {
		Write-Output $Options
	}

    if(![string]::IsNullOrEmpty($SaveOptionsPath))
    {
        if([String]::IsNullOrEmpty($SaveOptionsPath))
        {
            if([string]::IsNullOrEmpty($PSScriptRoot))
            {
                $SaveOptionsPath=$PSCmdlet.SessionState.Path.CurrentLocation.Path
            }
            else
            {
                $SaveOptionsPath=$PSScriptRoot
            }
        }

        Write-Verbose "Saving Report CSS to $SaveOptionsPath" 
        $StyleHeaderContent|Set-Content -Path (Join-Path $SaveOptionsPath default.css)
        Write-Verbose "Saving Report Color Schemes to $SaveOptionsPath" 
        foreach ($SchemeName in $ColorSchemes.Keys)
        {
			$ColorSchemes[$SchemeName]| ConvertTo-Csv  -NoTypeInformation -Delimiter ';' | % {$_.Replace('"','')} | Out-File (Join-Path $SaveOptionsPath "$schemeName.rcs")
        }
		foreach ($LogoSource in $LogoSources.keys)
		{
			[IO.File]::WriteAllBytes((Join-Path $SaveOptionsPath "$LogoSource.jpg"), [Convert]::FromBase64String($LogoSources[$LogoSource].split(',')[1]))			 
		}
		foreach ($CSSFile in $CSSFiles)
		{
			get-content $CSSFile.FullName | set-content (Join-Path $SaveOptionsPath $CSSFile.name)
		}
		
    }
}

Function Get-HTMLLogos
{
	<#
	 	.SYNOPSIS
		    Get Base64 HTML 
	
	#>
 	[CmdletBinding()]
    param 
    (
        [Parameter(Mandatory=$false)]
        [String]
        $LogoPath
    )
	if([String]::IsNullOrEmpty($LogoPath))
	{
	    if([string]::IsNullOrEmpty($PSScriptRoot))
	    {
	        $LogoPath=$PSCmdlet.SessionState.Path.CurrentLocation.Path
	    }
	    else
	    {
	        $LogoPath = $PSScriptRoot 
			#$LogoPath = 'C:\Users\matt.quickenden\Documents\GitHub\AzureFieldNotes\ReportHTML\ReportHTML'
        } 
    }

	$LogoSources = @{}
    $ImageFiles = Get-ChildItem -Path (join-path $LogoPath '\*') -Include *.jpg,*.png,*.bmp
    foreach ($ImageFile in $ImageFiles)
    {
        Write-Verbose "Importing base64 for $($ImageFile.Name) from $ScriptPath"
		$LogoSources.Add($ImageFile.BaseName,'data:image/jpeg;base64,' + [Convert]::ToBase64String((Get-Content $ImageFile.FullName -Encoding Byte)))
    }
	Write-Output $LogoSources

}

Function Get-HTMLCSS
{
    <#
	    .SYNOPSIS
		    Get's HTML Cascading Style Sheet
        .PARAMETER CSSName
		    Name of the CSS 
    #>
    [CmdletBinding()]
    param 
    (
        [Parameter(Mandatory=$false)]
        [String]
        $CSSPath,
		[Parameter(Mandatory=$false)]
        [String]
		$CSSName
    )
    if([String]::IsNullOrEmpty($CSSPath))
    {
        if([string]::IsNullOrEmpty($PSScriptRoot))
        {
            $CSSPath=$PSCmdlet.SessionState.Path.CurrentLocation.Path
        }
        else
        {
            $CSSPath=$PSScriptRoot
        }   
    }
    Write-Verbose "Retrieving *.css from $CSSPath"
	$CSSFiles = @((get-childitem $CSSPath -Filter '*.css'))
	if ([string]::IsNullOrEmpty($CSSName))
	{
		Write-Output $CSSFiles
	}
	Else
	{
		get-content ($CSSFiles | ? {$_.basename -eq $CSSName}).fullname
	}
}

Function Get-HTMLJavaScripts
{
<#
	.SYNOPSIS
		Get's Script File from module directory
#>
    [CmdletBinding()]
    param 
    (
        [Parameter(Mandatory=$false)]
        [String]
        $ScriptPath
    )
    if([String]::IsNullOrEmpty($ScriptPath))
    {
        if([string]::IsNullOrEmpty($PSScriptRoot))
        {
            $ScriptPath=$PSCmdlet.SessionState.Path.CurrentLocation.Path
        }
        else
        {
            $ScriptPath=$PSScriptRoot
        } 
    }
    Write-Verbose "Retrieving *.js from $ScriptPath"
	$ScriptFiles = @((get-childitem $ScriptPath -Filter '*.js' ).fullname)
	
	$ScriptHeaders = @()
	foreach ($ScriptFile in $ScriptFiles) {
		Write-Verbose "Generating Script Header from $ScriptFile"
        $ScriptHeaders += "`r`n" + '<script type="text/javascript">  '+ "`r`n" 
		Get-Content $ScriptFile | ForEach-Object{$ScriptHeaders += $_ + "`r`n"  }
		$ScriptHeaders += '</script> '
	}
	
	Write-Output $ScriptHeaders

}

Function Get-HTMLColorSchemes
{
    [CmdletBinding()]
	param
    (
        [Parameter(Mandatory=$false)]
        [String]$SchemePath
    )
    if([String]::IsNullOrEmpty($SchemePath))
    {
        if([string]::IsNullOrEmpty($PSScriptRoot))
        {
            $SchemePath=$PSCmdlet.SessionState.Path.CurrentLocation.Path
        }
        else
        {
            $SchemePath=$PSScriptRoot
        } 
    }
    $Schemes=@{}
    Write-Verbose "Retrieving *.rcs from $SchemePath"
    $SchemeFiles = @(get-childitem $SchemePath -Filter '*.rcs' )
    foreach ($SchemeFile in $SchemeFiles)
    {
        $SchemeContent=Import-Csv -Delimiter ';' -Path $SchemeFile.FullName
        $Schemes.Add($SchemeFile.BaseName,$SchemeContent)
    }
    $Schemes.add('Generated1',(GenerateRandomColorScheme -NumberOfSchemes 80))
	$Schemes.add('Generated2',(GenerateRandomColorScheme -NumberOfSchemes 80))
	$Schemes.add('Generated3',(GenerateRandomColorScheme -NumberOfSchemes 80))
	$Schemes.add('Generated4',(GenerateRandomColorScheme -NumberOfSchemes 80))
	$Schemes.add('Generated5',(GenerateRandomColorScheme -NumberOfSchemes 80))
	$Schemes.add('Generated6',(GenerateRandomColorScheme -NumberOfSchemes 80))
	$Schemes.add('Generated7',(GenerateRandomColorScheme -NumberOfSchemes 80))
	$Schemes.add('Generated8',(GenerateRandomColorScheme -NumberOfSchemes 80))
	Write-Output $Schemes
}

Function Connect-HTMLToAzure 
{

	[CmdletBinding()]
	Param 
	(
		
	)
	Write-Warning "In development"
	Write-Output ("Prepare Azure Connection")
	$connectionName = "AzureRunAsConnection"
	try
	{
	    # Get the connection "AzureRunAsConnection "
	    $servicePrincipalConnection=Get-AutomationConnection -Name $connectionName         

	    #"Logging in to Azure..."
	    Add-AzureRmAccount `
	        -ServicePrincipal `
	        -TenantId $servicePrincipalConnection.TenantId `
	        -ApplicationId $servicePrincipalConnection.ApplicationId `
	        -CertificateThumbprint $servicePrincipalConnection.CertificateThumbprint | Out-Null 
	}
	catch {
	    if (!$servicePrincipalConnection)
	    {
	        $ErrorMessage = "Connection $connectionName not found."
	        throw $ErrorMessage
	    } else{
	        Write-Error -Message $_.Exception
	        throw $_.Exception
	    }
	}
}

#endregion

#region Internal Functions

Function Get-Functions 
{
	PAram ($pattern, $path="$pwd\*", [switch]$Recurse = $false) 
      $parser = [System.Management.Automation.PSParser]
      Get-ChildItem (join-Path $path '\*') -Recurse:$Recurse -Include *.ps1, *.psm1 | ForEach {
            $content = [IO.File]::ReadAllText($_.FullName)
            $tokens = $parser::Tokenize($content, [ref] $null)
            $count = $tokens.Count
            $(
                  for($idx=0; $idx -lt $count; $idx += 1) {
                        if($tokens[$idx].Content -eq 'function') {
                              $targetToken = $tokens[$idx+1]
                              New-Object PSObject -Property @{
                                    FileName = $_.FullName
                                    FunctionName = $targetToken.Content -replace "global:",""
      
                              Line = $targetToken.StartLine
                              } | Select FunctionName, FileName, Line
                        }
                  }
            ) | Where {$_.FunctionName -match $pattern}
      }
}

function Get-Parameters 
{
	Param ( $Cmdlet, [switch]$ShowCommon, [switch]$Full ) 
      $command = Get-Command $Cmdlet -ea silentlycontinue 

      # resolve aliases (an alias can point to another alias)
      while ($command.CommandType -eq "Alias") {
            $command = Get-Command ($command.definition)
      }
      if (-not $command) { return }

      foreach ($paramset in $command.ParameterSets){
            $Output = @()
            foreach ($param in $paramset.Parameters) {
                  if ( ! $ShowCommon ) {
                        if ($param.aliases -match "vb|db|ea|wa|ev|wv|ov|ob|wi|cf") { continue }
                  }
                  $process = "" | Select-Object Name, Type, ParameterSet, Aliases, Position, IsMandatory,
                  Pipeline, PipelineByPropertyName
                  $process.Name = $param.Name
                  if ( $param.ParameterType.Name -eq "SwitchParameter" ) {
                        $process.Type = "Boolean"
                  }
                  else {
                        switch -regex ( $param.ParameterType ) {
                              "Nullable``1\[(.+)\]" { $process.Type = $matches[1].Split('.')[-1] + " (nullable)" ; break }
                              default { $process.Type = $param.ParameterType.Name }
                        }
                  }
                  if ( $paramset.name -eq "__AllParameterSets" ) { $process.ParameterSet = "Default" }
                  else { $process.ParameterSet = $paramset.Name }
                  $process.Aliases = $param.aliases
                  if ( $param.Position -lt 0 ) { $process.Position = $null }
                  else { $process.Position = $param.Position }
                  $process.IsMandatory = $param.IsMandatory
                  $process.Pipeline = $param.ValueFromPipeline
                  $process.PipelineByPropertyName = $param.ValueFromPipelineByPropertyName
                  $output += $process
            }
            if ( ! $Full ) { 
                  $Output | Select-Object Name, Type, ParameterSet, IsMandatory, Pipeline
            }
            else { Write-Output $Output }
      }
}

Function grc 
{
	param(
		[int]$Min =0,
		[int]$max =255
	)
	Write-Output ([string](Get-Random -Maximum $max -Minimum $Min) + ',' )
}

Function GenerateRandomColorScheme
{
	param
	(
		[Parameter(Mandatory=$false)]
		[int]
		$NumberOfSchemes =1
	)
	
	$Hover = '0.3)'
	$color = '0.6)'
	$border = '1)'
	$background =  '0.7)'
	$ColorSwing = 10
	
	$ColorReference  = Get-Random -Minimum 1 -Maximum 3
	$BaseColor = (Get-Random -Maximum (200 - $ColorSwing) -Minimum (50 + $ColorSwing))
	$BCMax = $BaseColor + $ColorSwing
	$BCMin = $BaseColor - $ColorSwing
	
	$ColorScheme = @()
	$i = 0
	while ($i -ne $NumberOfSchemes ) {
		switch ($ColorReference)
		{
			1 {$base = 'rgba('+ (grc -min  $BCMin -max $BCMax) + (grc) + (grc) }
			2 {$base = 'rgba('+ (grc) + (grc -min  $BCMin -max $BCMax) + (grc) }
			3 {$base = 'rgba('+ (grc) + (grc) + (grc -min  $BCMin -max $BCMax) }
		}
		
		$Scheme = '' | select Colour,Background, Hover ,Border
		$Scheme.Background 	= $base + $background
		$Scheme.Border 		= $base + $border
		$Scheme.Colour 		= $base + $color
		$Scheme.Hover 		= $base + $Hover
		$ColorScheme += $Scheme
		$i++
	}
	
	Write-Output $ColorScheme
}


#endregion

#region Legacy
Write-Warning "Get-HTMLOpen, Get-HTMLClose, New-HTMLBarChartObject, New-HTMLBarChart, New-HTMLPieChartObject, New-HTMLPieChart"
Write-Warning "These are Legacy cmdlets and have been removed as of version 1.3.0.4"
Write-Warning "use new cmdlets Get-HTMLOpenPage, Get-HTMLClosePage, Get-HTMLBarChartObject, Get-HTMLBarChart, Get-HTMLPieChartObject, Get-HTMLPieChart"
Write-Warning "Currently the code is commented out, uncomment if you need but please update to new functions.  "
Write-Warning "The Code will be removed soon to make space for new and exciting code."

Function Get-HTMLOpen
{
Write-Warning "Function has been Removed.  Please use Get-HTMLOpenPage"
pause
#<#
#	.SYNOPSIS
#		Get's HTML for the header of the HTML report
#    .PARAMETER TitleText
#		The title of the report
#	.PARAMETER CSSLocation 
#		Directory containing CSS files. used in conjuction with CSSName
#	.PARAMETER CSSName
#		If only used with CSSLocation path will search for CSS file with CSSName, otherwise the CSSName can refernce one of the three built in templates.  This function will Append .css extension 
##>
#    [CmdletBinding()]
#    param
#    (
#	    [Parameter(Mandatory=$false)]
#        [String] $TitleText,
#	    [Parameter(Mandatory=$false)]
#        [String] $CSSPath,
#        [Parameter(Mandatory=$false)]
#	    [String] $CSSName = "default"
#    )
#    
#    $CurrentDate = Get-Date -format "MMM d, yyyy hh:mm tt"
#	
#	if ($CSSPath -ne '') {
#		if (test-path $CSSPath) {
#			if ($CSSName -like "*.css") {
#				$CSSName =  ($CSSName.Split('.'))[0]
#			}
#			$CSSFile = Get-childitem $CSSPath -File ($CSSName + ".css")
#			IF ($CSSFile -ne $null) {
#				$Report = Get-Content $CSSFile.FullName
#			} else {
#				Write-Warning "Parameter CSSLocation using $CSSPath is Valid.  CSS File name $CSSName is invalid, using defaults"	
#				$Report = Get-HTMLCSS -cssname $CSSName
#			}
#		} else {
#			Write-Warning "Parameter CSSLocation using $CSSPath is invalid.  Using defaults"
#			$Report = Get-HTMLCSS -cssname $CSSName
#		}
#			
#	} else {
#		$Report = Get-HTMLCSS -cssname $CSSName
#	}
#	
#	Write-Output $Report
}

Function Get-HTMLClose
{
Write-Warning "Function has been Removed.  Please use Get-HTMLClosePage"
pause

#<#
#	.SYNOPSIS
#		Get's the closing segment for the HTML
#	    .PARAMETER ClientLogoType
#			The type of logo
#		.PARAMETER AdditionalContent
#		     Some additional pish
##>	
#    [CmdletBinding(DefaultParameterSetName='explicitLogo')]
#    param
#    (
#        [Parameter(Mandatory=$false)]
#	    [string] $MainLogoFile,
#	    [Parameter(Mandatory=$false)]
#        [string] $ClientLogoFile,
#        [Parameter(Mandatory=$false)]
#	    [string] $ClientLogoType = "ClientLogo1",
#        [string] $AdditionalContent,
#        [Parameter(Mandatory=$false)]
#	    [string] $ClientLogoBase64,
#        [Parameter(Mandatory=$false)]
#	    [string] $MainLogoBase64
#    )
#    if ([String]::IsNullOrEmpty($ClientLogoFile) -eq $false) {
#	    $ClientLogo = [Convert]::ToBase64String((Get-Content $ClientLogoFile -Encoding Byte))
#    } elseif ([String]::IsNullOrEmpty($ClientLogoBase64)) {
#        $ClientLogo = $ClientLogoBase64
#    }
#    elseif([String]::IsNullOrEmpty($ClientLogo))
#    {
#        $ClientLogo=$Script:LEGACY_CLIENT_LOGOS[$ClientLogoType]
#    }
#
#    if ($MainLogoFile -ne '') {
#		    $MainLogo = [Convert]::ToBase64String((Get-Content $MainLogoFile -Encoding Byte))
#    } elseif ($MainLogoBase64 -ne $null) {
#	    $MainLogo = $MainLogoBase64
#    }
#    else
#    {
#        $MainLogo=$Script:CORPORATE_LOGO_SOURCE
#    }
#	$Report = @"
#
#<div class="section">
#    <hr />
#    <div class="footer">Copyright &#169; $([DateTime]::Now.Year) Azure Cloud Enablement. All Rights Reserved.</div>
#</div>
#    
#</body>
#</html>
#--PART
#Content-Type: image/gif
#Content-ID: <MainLogo>
#Content-Transfer-Encoding: base64
#Content-Disposition: inline; filename="MainLogo.gif"
#
#$MainLogo
#
#--PART
#Content-Type: image/gif
#Content-ID: <clientlogo>
#Content-Transfer-Encoding: base64
#Content-Disposition: inline; filename="clientlogo.gif"
#
#$ClientLogo
#
#$AdditionalContent
#
#--PART--
#"@
#	Write-Output $Report
#}
#
#Function New-HTMLBarChartObject
#{
#<#
#	.SYNOPSIS
#		create a Bar chart object for use with Create-HTMLPieChart
##>
#    [CmdletBinding()]
#    param()
#
#	[void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
#	[void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms.DataVisualization")
#	
#	$ChartSize = New-Object PSObject -Property @{`
#		Width = 500
#		Height = 400
#		Left = 40
#		Top = 30
#	}
#	
#	$DataDefinition = New-Object PSObject -Property @{`
#		AxisXTitle = "AxisXTitle"
#		AxisYTitle = "AxisYTitle"
#		DataNameColumnName = "name"
#		DataValueColumnName = "count"
#		
#	}
#	
#	$ChartStyle = New-Object PSObject -Property @{`
#		BackColor = [System.Drawing.Color]::White
#		DrawingStyle = "Cylinder"
#		ExplodeMaxValue = $false 
#		Anchor = [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right -bor	[System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left
#	}
#	
#	$ChartObject = New-Object PSObject -Property @{`
#		Type = "Column"
#		Title = "Chart Title"
#		Size = $ChartSize
#		DataDefinition = $DataDefinition
#		ChartStyle = $ChartStyle
#	}
#	
#	return $ChartObject
}

Function New-HTMLBarChart
{
Write-Warning "Function has been Removed.  Please use Get-HTMLBarChartObject"
pause

#<#
#	.SYNOPSIS
#		adds a row colour field to the array of object for processing with htmltable
#	    .PARAMETER BarChartObject
#			This is a custom object with Pie chart properties, Create-HTMLPieChartObject
#		.PARAMETER BarChartData
#			Required an array with the headings Name and Count.  Using Powershell Group-object on an array
#		.PARAMETER $TestChart
#			Switch will generate a Form with the chart for easier development
##>
#    [CmdletBinding()]
#	param
#    (
#		[Parameter(Mandatory=$true)]
#        [Object]
#        $ChartObject,
#		[Parameter(Mandatory=$true)]
#        [Object]
#        $ChartData,
#        [Parameter(Mandatory=$false)]
#		[switch]$TestChart
#		
#	)
#	[void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
#	[void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms.DataVisualization")
#	
#	#Create our chart object 
#	$Chart = New-object System.Windows.Forms.DataVisualization.Charting.Chart
#	$Chart.ti
#	$Chart.Width = $ChartObject.Size.Width
#	$Chart.Height = $ChartObject.Size.Height
#	$Chart.Left = $ChartObject.Size.Left
#	$Chart.Top = $ChartObject.Size.Top
#	
#	#Create a chartarea to draw on and add this to the chart 
#	$ChartArea = New-Object System.Windows.Forms.DataVisualization.Charting.ChartArea
#	$Chart.ChartAreas.Add($ChartArea)
#	[void]$Chart.Series.Add("Data")
#	
#	#Add a datapoint for each value specified in the arguments (args) 
#	foreach ($value in $ChartData)
#	{
#		$datapoint = new-object System.Windows.Forms.DataVisualization.Charting.DataPoint(0, $value.($ChartObject.DataDefinition.DataValueColumnName))
#		$datapoint.AxisLabel = [string]$value.($ChartObject.DataDefinition.DataNameColumnName)
#		$Chart.Series["Data"].Points.Add($datapoint)
#	}
#	
#	#Set the title of the Chart to the current date and time 
#	$Title = new-object System.Windows.Forms.DataVisualization.Charting.Title
#	[Void]$Chart.Titles.Add($Title)
#	$Chart.Titles[0].Text = $ChartObject.Title
#	$Chart.BackColor = $ChartObject.ChartStyle.BackColor
#	
#	# Axixs Labels 
#	if ($ChartObject.DataDefinition.AxisXTitle -ne 'AxisXTitle') {	
#		$Chartarea.AxisX.Title = $ChartObject.DataDefinition.AxisXTitle
#	} else {
#		$Chartarea.AxisX.Title = $ChartObject.DataDefinition.DataNameColumnName
#	}
#	
#	if ($ChartObject.DataDefinition.AxisYTitle -ne 'AxisYTitle') {	
#		$Chartarea.AxisY.Title = $ChartObject.DataDefinition.AxisYTitle
#	} else {
#		$Chartarea.AxisY.Title = $ChartObject.DataDefinition.DataValueColumnName
#	}
#	
#	# Style and Background
#	$Chart.Series["Data"]["DrawingStyle"] = $ChartObject.ChartStyle.DrawingStyle
#	$Chart.BackColor = $ChartObject.ChartStyle.BackColor
#	
#	#Final output test form or HTML
#	if ($TestChart) 
#	{
#		# display the chart on a form 
#		$Chart.Anchor = [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right -bor 
#		                [System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left 
#		$Form = New-Object Windows.Forms.Form 
#		$Form.Text = $ChartObject.Title
#		$Form.Width = $Chart.Width + 100 
#		$Form.Height = $Chart.Height + 100 
#		$Form.controls.add($Chart) 
#		$Form.Add_Shown({$Form.Activate()}) 
#		[Void]$Form.ShowDialog()
#	} 
#	else
#	{	
#		# Save the chart to a file
#		$tempfile = (Join-Path $env:TEMP $ChartObject.Title.replace(' ', '')) + ".png"
#		if ((test-path $tempfile)) { Remove-Item $tempfile -Force }
#		$Chart.SaveImage($tempfile, "png")
#		$Base64Chart = [Convert]::ToBase64String((Get-Content $tempfile -Encoding Byte))
#		$HTMLCode = '<IMG SRC="data:image/gif;base64,' + $Base64Chart + '" ALT="' + $ChartObject.Title + '">'
#		# Invoke-Item $tempfile
#		return $HTMLCode
#	}	
}

Function New-HTMLPieChartObject 
{
Write-Warning "Function has been Removed.  Please use Get-HTMLPieChartObject"
pause
#<#
#	.SYNOPSIS
#		create a Pie chart object for use with Create-HTMLPieChart
##>	
#    [CmdletBinding()]
#    param()	
#	
#	[void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
#	[void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms.DataVisualization")
#	
#	$ChartSize = New-Object PSObject -Property @{`
#		Width = 350
#		Height = 350 
#		Left = 1
#		Top = 1
#	}
#	
#	$DataDefinition = New-Object PSObject -Property @{`
#		DataNameColumnName = "name"
#		DataValueColumnName = "count"
#	}
#	
#	$ChartStyle = New-Object PSObject -Property @{`
#		PieLabelStyle = "Outside"
#		PieLineColor = "Black"
#		PieDrawingStyle = "Concave"
#		ExplodeMaxValue = $false
#	}
#	
#	$PieChartObject = New-Object PSObject -Property @{`
#		Type = "Pie"
#		Title = "Chart Title"
#		Size = $ChartSize
#		DataDefinition = $DataDefinition
#		ChartStyle = $ChartStyle
#	}
#	
#	return $PieChartObject
}

Function New-HTMLPieChart
{
Write-Warning "Function has been Removed.  Please use Get-HTMLPieChart"
pause
#<#
#	.SYNOPSIS
#		adds a row colour field to the array of object for processing with htmltable
#	    .PARAMETER PieChartObject
#			This is a custom object with Pie chart properties, Create-HTMLPieChartObject
#		.PARAMETER PieChartData
#			Required an array with the headings Name and Count.  Using Powershell Group-object on an array
#		    
##>
#	param(
#		$PieChartObject,
#		$PieChartData,
#		[switch]$TestChart
#		)
#	      
#		  
#	[void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
#	[void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms.DataVisualization")
#
#	#Create our chart object 
#	$Chart = New-object System.Windows.Forms.DataVisualization.Charting.Chart 
#	$Chart.Width = $PieChartObject.Size.Width
#	$Chart.Height = $PieChartObject.Size.Height
#	$Chart.Left = $PieChartObject.Size.Left
#	$Chart.Top = $PieChartObject.Size.Top
#
#	#Create a chartarea to draw on and add this to the chart 
#	$ChartArea = New-Object System.Windows.Forms.DataVisualization.Charting.ChartArea
#	$Chart.ChartAreas.Add($ChartArea) 
#	[void]$Chart.Series.Add("Data") 
#
#	#Add a datapoint for each value specified in the arguments (args) 
#	foreach ($value in $PieChartData) {
#		$datapoint = new-object System.Windows.Forms.DataVisualization.Charting.DataPoint(0, $value.Count)
#		$datapoint.AxisLabel = [string]$value.Name
#		$Chart.Series["Data"].Points.Add($datapoint)
#	}
#	
#	$Chart.Series["Data"].ChartType = [System.Windows.Forms.DataVisualization.Charting.SeriesChartType]::Pie
#	$Chart.Series["Data"]["PieLabelStyle"] = $PieChartObject.ChartStyle.PieLabelStyle
#	$Chart.Series["Data"]["PieLineColor"] = $PieChartObject.ChartStyle.PieLineColor 
#	$Chart.Series["Data"]["PieDrawingStyle"] = $PieChartObject.ChartStyle.PieDrawingStyle
#	($Chart.Series["Data"].points.FindMaxByValue())["Exploded"] = [Boolean]$PieChartObject.ChartStyle.ExplodeMaxValue
#
#	#Set the title of the Chart to the current date and time 
#	$Title = new-object System.Windows.Forms.DataVisualization.Charting.Title 
#	[Void]$Chart.Titles.Add($Title) 
#	$Chart.Titles[0].Text = $PieChartObject.Title
#	
#
#	if ($TestChart) 
#	{
#		# display the chart on a form 
#		$Chart.Anchor = [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right -bor 
#		                [System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left 
#		$Form = New-Object Windows.Forms.Form 
#		$Form.Text = $PieChartObject.Title
#		$Form.Width = $Chart.Width + 100 
#		$Form.Height = $Chart.Height + 100 
#		$Form.controls.add($Chart) 
#		$Form.Add_Shown({$Form.Activate()}) 
#		[Void]$Form.ShowDialog()
#	} 
#	else
#	{	
#		# Save the chart to a file	
#		$tempfile = (Join-Path $env:TEMP $PieChartObject.Title.replace(' ', '')) + ".png"
#		if ((test-path $tempfile)) { Remove-Item $tempfile -Force }
#		$Chart.SaveImage($tempfile, "png")
#		$Base64Chart = [Convert]::ToBase64String((Get-Content $tempfile -Encoding Byte))
#		$HTMLCode = '<IMG SRC="data:image/gif;base64,' + $Base64Chart + '" ALT="' + $PieChartObject.Title + '">'
#		# Invoke-Item $tempfile
#		return $HTMLCode
#	}		
}

#endregion

#Region HTML Functions

Function Get-HTMLOpenPage
{
<#
	.SYNOPSIS
		Get's HTML for the header of the HTML report
    .PARAMETER TitleText
		The title of the report
	.PARAMETER CSSLocation 
		Directory containing CSS files. used in conjuction with CSSName
	.PARAMETER CSSName
		If only used with CSSLocation path will search for CSS file with CSSName, otherwise the CSSName can refernce one of the three built in templates.
        This function will Append .css extension 
#>

    [CmdletBinding(DefaultParameterSetName='options')]
    param
    (
        [Parameter(Mandatory=$false,ParameterSetName='options')]    	
        [Parameter(Mandatory=$false,ParameterSetName='explicit')]
        [String]$TitleText,
        [Parameter(Mandatory=$false,ParameterSetName='explicit')]
	    [String]$CSSPath,
        [Parameter(Mandatory=$false,ParameterSetName='explicit')]
	    [String]$CSSName = "default",
	    [Parameter(Mandatory=$false,ParameterSetName='explicit')]
	    [String]$ScriptPath,
        [Parameter(Mandatory=$false,ParameterSetName='explicit')]
	    [String]$ColorSchemePath,
	    [Parameter(Mandatory=$false,ParameterSetName='explicit')]
	    [String]$LogoPath,
		[Parameter(Mandatory=$false,ParameterSetName='explicit')]
	    [string]$LeftLogoName = "Sample",
	    [Parameter(Mandatory=$false,ParameterSetName='explicit')]
        [string]$RightLogoName = "Alternate",
	    [Parameter(Mandatory=$false,ParameterSetName='explicit')]
        [string]$LeftLogoString,
	    [Parameter(Mandatory=$false,ParameterSetName='explicit')]
        [string]$RightLogoString,
        [Parameter(Mandatory=$false,ParameterSetName='options')]
	    [Parameter(Mandatory=$false,ParameterSetName='explicit')]
	    [switch]$HideLogos,
        [Parameter(Mandatory=$false,ParameterSetName='options')]
	    [Parameter(Mandatory=$false,ParameterSetName='explicit')]
        [switch]$NoScript,
        [Parameter(Mandatory=$false,ParameterSetName='options')]
        [PSobject]$Options
    )

    if($PSCmdlet.ParameterSetName -eq 'options')
    {
        if($Options -eq $null)
        {
            $Options=New-HTMLReportOptions
        }
    }
    else
    {
        if([String]::IsNullOrEmpty($RightLogoString) -eq $false -or [String]::IsNullOrEmpty($LeftLogoString) -eq $false)
        {
            $LogoSources=@{}
            if([String]::IsNullOrEmpty($RightLogoString) -eq $false)
            {
                $LogoSources.Add($RightLogoName,$RightLogoString)
            }
            if([String]::IsNullOrEmpty($LeftLogoString) -eq $false)
            {
                $LogoSources.Add($LeftLogoName,$LeftLogoString)
            }
        }
		if(!([String]::IsNullOrEmpty($LogoPath))){
			$LogoSources = Get-HTMLLogos -logopath $LogoPath
		 
		}
		
		
        $Options=New-HTMLReportOptions -LogoSources $LogoSources -CSSName $CSSName `
            -CSSPath $CSSPath -ScriptPath $ScriptPath -ColorSchemePath $ColorSchemePath
    }  
    if($HideLogos.IsPresent -eq $false)
    {
        $Leftlogo=$Options.Logos[$LeftLogoName]
        $Rightlogo=$Options.Logos[$RightLogoName]
        $LogoContent=@"
            <table><tbody>
            <tr>
                <td class="clientlogo"><img src="$Leftlogo" /></td>
                <td class="MainLogo"><img src="$Rightlogo" /></td>
            </tr>
            </tbody></table>
"@
    }

    $HtmlContent=@"
    <!DOCTYPE HTML>
    <!--- This page was autogenerated $CurrentDate By $env:USERNAME -->
    <html>
        <!-- Header -->
        <head>
        <Title>$TitleText</Title>
            <!-- Styles -->
            $($Options.StyleContent)
            <!-- Scripts -->
            $($Options.ScriptContent)
        </head>
        <!-- Body -->
        <body onload="hide();">
            <!-- Report Header -->
            $LogoContent
            <div class="pageTitle">$TitleText</div>
            <hr />
            <div class="ReportCreated">Report created on $(Get-Date -format "MMM d, yyyy hh:mm tt")</div>
"@
    Write-Output $HtmlContent
}

Function Get-HTMLClosePage 
{
<#
	.SYNOPSIS
		Get's the closing segment for the HTML
	    .PARAMETER ClientLogoType
			The type of logo
		.PARAMETER AdditionalContent
		     Some additional pish
#>
    [CmdletBinding()]
    param()
	$Report = @"
<hr />
<!-- FOOTER -->
<div class="footer">Copyright &#169; $([DateTime]::Now.Year) Azure Cloud Enablement. All Rights Reserved.</div>

<!-- END BODY -->
</body>
</html>

"@
	Write-Output $Report
}

Function Get-HTMLContentOpen 
{
<#
	.SYNOPSIS
		Creates a section in HTML
	    .PARAMETER HeaderText
			The heading for the section
		.PARAMETER IsHidden
		    Switch parameter to define if the section can collapse
		.PARAMETER BackgroundShade
		    An int for 1 to 6 that defines background shading
#>
    [CmdletBinding()]
    Param
    (
	    [Parameter(Mandatory=$false)]
        [string]$HeaderText,
	    [Parameter(Mandatory=$false)]
        [switch]$IsHidden,
	    [Parameter(Mandatory=$false)]
        [string]$Anchor,
	    [Parameter(Mandatory=$false)]
        [validateset(1,2,3,4,5,6)]
        [int]$BackgroundShade
    )

    switch ($BackgroundShade)
    {
        1 { $bgColorCode = "#F8F8F8" }
	    2 { $bgColorCode = "#D0D0D0" }
        3 { $bgColorCode = "#A8A8A8" }
        4 { $bgColorCode = "#888888" }
        5 { $bgColorCode = "#585858" }
        6 { $bgColorCode = "#282828" }
        default { $bgColorCode = "#ffffff" }
    }

    if ([String]::IsNullOrEmpty($Anchor)) {
	    $InsertAnchor = 'name="' + $Anchor +'"'
    }

if ($IsHidden) {
	$RandomNumber = Get-Random
	$Report = @"
<div class="section">
<div class="header">
    <a name="$($HeaderText)">$($HeaderText)</a> (<a id="show_$RandomNumber" href="#" onclick="show('$RandomNumber');" style="color: #ffffff;">Show</a><a id="hide_$RandomNumber" href="#" onclick="hide('$RandomNumber');" style="color: #ffffff; display:none;">Hide</a>)
</div>
<div class="content" id="$RandomNumber" style="display:none;background-color:$($bgColorCode);"> 
"@	
}
else {
	$Report = @"
<div class="section">
<div class="header">
    <a name="$($HeaderText)">$($HeaderText)</a>
</div>
<div class="content" style="background-color:$($bgColorCode);"> 
"@
}
	Return $Report
}

Function Get-HTMLContentClose
{
<#
	.SYNOPSIS
		Closes an HTML section
#>
    [CmdletBinding()]
    param()
	$Report = @"
    </div>
    </div>
"@
	Return $Report
}

Function Get-HTMLContentTable 
{
<#
	.SYNOPSIS
		Creates an HTML table from an array of objects
	    .PARAMETER ArrayOfObjects
			An array of objects
		.PARAMETER Fixed
		    fixes the html column width by the number of columns
		.PARAMETER GroupBy
		    The column to group the data.  make sure this is first in the array
#>	
param(
	[Array]$ArrayOfObjects, 
	[String]$GroupBy,
	[Switch]$Fixed
	
)
	if ($GroupBy -eq '') {
		$Report = $ArrayOfObjects | ConvertTo-Html -Fragment
		$Report = $Report -replace '<col/>', "" -replace '<colgroup>', "" -replace '</colgroup>', ""
		$Report = $Report -replace "<tr>(.*)<td>Green</td></tr>","<tr class=`"green`">`$+</tr>"
		$Report = $Report -replace "<tr>(.*)<td>Yellow</td></tr>","<tr class=`"yellow`">`$+</tr>"
    	$Report = $Report -replace "<tr>(.*)<td>Red</td></tr>","<tr class=`"red`">`$+</tr>"
		$Report = $Report -replace "<tr>(.*)<td>Odd</td></tr>","<tr class=`"odd`">`$+</tr>"
		$Report = $Report -replace "<tr>(.*)<td>Even</td></tr>","<tr class=`"even`">`$+</tr>"
		$Report = $Report -replace "<tr>(.*)<td>None</td></tr>","<tr>`$+</tr>"
		$Report = $Report -replace '<th>RowColor</th>', ''

		if ($Fixed.IsPresent) {	$Report = $Report -replace '<table>', '<table class="fixed">' }
		else {	$Report = $Report -replace '<table>', '<table class="sortable">' }
	}
	else {
		$NumberOfColumns = ($ArrayOfObjects | Get-Member -MemberType NoteProperty  | Select-Object Name).Count
		$Groupings = @()
		$ArrayOfObjects | Select-Object $GroupBy -Unique  | Sort-Object $GroupBy | ForEach-Object { $Groupings += [String]$_.$GroupBy}
		if ($Fixed.IsPresent) {	$Report = '<table class="fixed">' }
		else { $Report = '<table>' }
		$GroupHeader = $ArrayOfObjects | ConvertTo-Html -Fragment 
		$GroupHeader = $GroupHeader -replace '<col/>', "" -replace '<colgroup>', "" -replace '</colgroup>', "" -replace '<table>', "" -replace '</table>', "" -replace "<td>.+?</td>" -replace "<tr></tr>", ""
		$GroupHeader = $GroupHeader -replace '<th>RowColor</th>', ''
		$Report += $GroupHeader
		foreach ($Group in $Groupings) {
			$Report += "<tr><td colspan=`"$NumberOfColumns`" class=`"groupby`">$Group</td></tr>"
			$GroupBody = $ArrayOfObjects | Where-Object { [String]$($_.$GroupBy) -eq $Group } | Select-Object * -ExcludeProperty $GroupBy | ConvertTo-Html -Fragment
			$GroupBody = $GroupBody -replace '<col/>', "" -replace '<colgroup>', "" -replace '</colgroup>', "" -replace '<table>', "" -replace '</table>', "" -replace "<th>.+?</th>" -replace "<tr></tr>", "" -replace '<tr><td>', "<tr><td></td><td>"
			$GroupBody = $GroupBody -replace "<tr>(.*)<td>Green</td></tr>","<tr class=`"green`">`$+</tr>"
			$GroupBody = $GroupBody -replace "<tr>(.*)<td>Yellow</td></tr>","<tr class=`"yellow`">`$+</tr>"
    		$GroupBody = $GroupBody -replace "<tr>(.*)<td>Red</td></tr>","<tr class=`"red`">`$+</tr>"
			$GroupBody = $GroupBody -replace "<tr>(.*)<td>Odd</td></tr>","<tr class=`"odd`">`$+</tr>"
			$GroupBody = $GroupBody -replace "<tr>(.*)<td>Even</td></tr>","<tr class=`"even`">`$+</tr>"
			$GroupBody = $GroupBody -replace "<tr>(.*)<td>None</td></tr>","<tr>`$+</tr>"
			$Report += $GroupBody
		}
		$Report += "</table>" 
	}
	$Report = $Report -replace 'URL01', '<a href="'
	$Report = $Report -replace 'URL02', '">'
	$Report = $Report -replace 'URL03', '</a>'
	
	if ($Report -like "*<tr>*" -and $report -like "*odd*" -and $report -like "*even*") {
			$Report = $Report -replace "<tr>",'<tr class="header">'
	}
	
	return $Report
}

Function Get-HTMLContentText
{
<#
	.SYNOPSIS
		Creates an HTML entry with heading and detail
	    .PARAMETER Heading
			The type of logo
		.PARAMETER Detail
		     Some additional pish
#>
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory=$false)]
	    [String]
        $Heading,
	    [Parameter(Mandatory=$false)]
        [String]
        $Detail
    )

    $Report = @"
<table><tbody>
	<tr>
	<th class="content">$Heading</th>
	<td class="content">$($Detail)</td>
	</tr>
</tbody></table>
"@
    $Report = $Report -replace 'URL01', '<a href="'
    $Report = $Report -replace 'URL02', '">'
    $Report = $Report -replace 'URL03', '</a>'
    Return $Report
}

Function Set-TableRowColor 
{
<#
	.SYNOPSIS
		adds a row colour field to the array of object for processing with htmltable
	    .PARAMETER ArrayOfObjects
			The type of logo
		.PARAMETER Green
		     Some additional pish
		.PARAMETER Yellow
		     Some additional pish
		.PARAMETER Red
		    use $this and an expression to measure the value
		.PARAMETER Alertnating
			a switch the will define Odd and Even Rows in the rowcolor column 
#>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory=$false)]
	    [Object[]]$ArrayOfObjects, 
	    [Parameter(Mandatory=$false)]
        [string]$Green = '$this -eq $false', 
	    [Parameter(Mandatory=$false)]
        [string]$Yellow = '$this -eq $false', 
	    [Parameter(Mandatory=$false)]
        [string]$Red = '$this -eq $false',
	    [Parameter(Mandatory=$false)]
        [switch]$Alternating
    )
	if ($Alternating) {
		$ColoredArray = $ArrayOfObjects | Add-Member -MemberType ScriptProperty -Name RowColor -Value {
		if ((([array]::indexOf($ArrayOfObjects,$this)) % 2) -eq 0) {'Odd'}
		if ((([array]::indexOf($ArrayOfObjects,$this)) % 2) -eq 1) {'Even'}
		} -PassThru -Force | Select-Object *
	} else {
		$ColoredArray = $ArrayOfObjects | Add-Member -MemberType ScriptProperty -Name RowColor -Value {
			if (Invoke-Expression $Green) {'Green'} 
			elseif (Invoke-Expression $Red) {'Red'} 
			elseif (Invoke-Expression $Yellow) {'Yellow'} 
			else {'None'}
			} -PassThru -Force | Select-Object *
	}
	
	return $ColoredArray
}

Function Get-HTMLColumn1of2
{
<#
	.SYNOPSIS
		adds a row colour field to the array of object for processing with htmltable
	    .PARAMETER PieChartObject
			This is a custom object with Pie chart properties, Create-HTMLPieChartObject
		.PARAMETER PieChartData
			Required an array with the headings Name and Count.  Using Powershell Group-object on an array
		    
#>
    [CmdletBinding()]
    param()
	$report = '<div class="first column">'
	return $report
}

Function Get-HTMLColumn2of2
{
<#
	.SYNOPSIS
		adds a row colour field to the array of object for processing with htmltable
	    .PARAMETER PieChartObject
			This is a custom object with Pie chart properties, Create-HTMLPieChartObject
		.PARAMETER PieChartData
			Required an array with the headings Name and Count.  Using Powershell Group-object on an array
		    
#>
    [CmdletBinding()]
    param()
	$report = '<div class="second column">'
	return $report
}

Function Get-HTMLColumnClose
{
<#
	.SYNOPSIS
		Closing Div Tag
#>
    [CmdletBinding()]
    param()
	$report = '</div>'
	return $report
}

Function Get-HTMLAnchorLink 
{
<#
	.SYNOPSIS
		creates Hyperlink for an Anchor
		.PARAMETER AnchorName
			The Actual name of the Anchor (Hidden)
		.PARAMETER AnchorText
			The HyperLink text.  Will default to $AnchorNname if not specified
#>
    [CmdletBinding()]
	Param
    (
		[Parameter(Mandatory=$false)]
        [String]
        $AnchorName,
		[Parameter(Mandatory=$true)]
        [String]
        $AnchorText
	)
	if ($AnchorText -eq $null -or $AnchorText -eq '') {$AnchorText=$AnchorName}
	$report = '<a class="alink" href="#' + $AnchorName + '">' +  $AnchorText +'</a>'

	Write-Output $report
}

Function Get-HTMLAnchor 
{
<#
	.SYNOPSIS
		creates an Anchor
		.PARAMETER AnchorName
			The Actual Anchor 
#>
    [CmdletBinding()]
    Param
    (
	    [Parameter(Mandatory=$true)]
        [String]
        $AnchorName
    )
	
	$Anchor = '<a name="' + $AnchorName + '"></a>'
	Write-Output $Anchor
}

Function Get-HTMLTabHeader 
{
	[CmdletBinding()]
	Param 
	(
		[Parameter(Mandatory=$true)]
        [Array]
        $TabNames
	)

	$TabHeader = @()
	$TabHeader += '<ul class="tab">'
	$FirstTab = $true
  	Foreach ($TabName in $TabNames) {
		if ($FirstTab) 
		{
			$TabHeader += '		<li><a href="javascript:void(0)" class="tablinks" onclick="openTab(event, ''' + $TabName + ''')" id="defaultOpen">' + $TabName + '</a></li>'
			$FirstTab = $false
		}
		else
		{
			$TabHeader += '		<li><a href="javascript:void(0)" class="tablinks" onclick="openTab(event, ''' + $TabName + ''')">' + $TabName + '</a></li>'
		}
		
  	}
	$TabHeader += '</ul>'
	Set-Variable -Scope global -Name TabHeaderCreated -Value $true
	Write-output $TabHeader 
}

Function Get-HTMLTabContentOpen 
{
	[CmdletBinding()]
	Param 
	(
		[Parameter(Mandatory=$true)]
        [String]
        $TabName,
		[Parameter(Mandatory=$true)]
        [String]
        $TabHeading
	)
	$TabContent  = @()
	$TabContent  += '<div id="' + $TabName +'" class="tabcontent">'
  	$TabContent  += "<h3>$TabHeading</h3>"
 	write-output $TabContent 
}

Function Get-HTMLTabContentClose
{
	$tabclose = @()
	$tabclose += "</p>"
	$tabclose += '</div>'
	$tabclose += @"
<script>
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
"@
	write-output $tabclose 
}


Function Get-HTMLCodeBlock
{
	[CmdletBinding()]
	Param 
	(
		[Parameter(Mandatory=$true)]
        [String]
        $Code,
		[Parameter(Mandatory=$false)]
        [String]
        $Style = 'PowerShell'
	)
	$CodeBlock = @()
	switch ($Style) {
		'PowerShell' 
		{
			$CodeBlock += '<pre class="PowerShell">'
		}
		'othercodestyleneedsACSSStyle' 
		{
			$CodeBlock += '<pre class="PowerShell">'
		}
		default 
		{
			$CodeBlock += '<pre>'
		}
	}
	
	$CodeBlock  += $Code
	$CodeBlock  += '</pre>'
	[string]$CodeBlock = $CodeBlock
	Write-Output $CodeBlock
}

#endregion

#Region Chart JS Functions

Function Get-HTMLBarChartObject
{
<#
	.SYNOPSIS
		create a Bar chart object for use with Get-HTMLBarChart
#>
    [CmdletBinding()]
    param(
		[Parameter(Mandatory=$false)]
		[ValidateSet("Random","Generated")]
		$ColorScheme
	)
	

	$ChartSize = New-Object PSObject -Property @{`
		Width = 500
		Height = 400
	}
	
	$DataDefinition = New-Object PSObject -Property @{`
		DataSetName = "Data"
		AxisXTitle = "AxisXTitle"
		AxisYTitle = "AxisYTitle"
		DataNameColumnName = "name"
		DataValueColumnName = "count"
		
	}
	
	if ($ColorScheme -eq "Generated") {$thisColorScheme = 'Generated' + [string](Get-Random -Minimum 1 -Maximum 8)}
	elseif ($ColorScheme -eq "Random") {$thisColorScheme = 'Random' }
	else {$thisColorScheme = 'ColorScheme1'}

	$ChartStyle = New-Object PSObject -Property @{`
		ChartType = "bar"
		ColorSchemeName = "$thisColorScheme"
		Showlabels= $true
		borderWidth = "1"
		responsive = 'false'
		legendPosition = 'bottom'
	
	}
	
	$ChartObject = New-Object PSObject -Property @{`
		ObjectName = -join ((65..90) + (97..122) | Get-Random -Count 12 | ForEach-Object {[char]$_})
		Title = ""
		Size = $ChartSize
		DataDefinition = $DataDefinition
		ChartStyle = $ChartStyle
	}
	
	return $ChartObject
}

Function Get-HTMLBarChart
{
<#
	.SYNOPSIS
	
#>
	[CmdletBinding()]
	Param (
		[Parameter(Mandatory=$true)]
		$ChartObject,
		[Parameter(Mandatory=$true)]
		[Array]
		$DataSet,
		[Parameter(Mandatory=$false)]
        $Options
	)

	$DataCount = $DataSet.Count
	Write-Verbose "Data Set counnt is $DataCount"
	if ($ChartObject.ChartStyle.ColorSchemeName -ne 'Random')
	{
		if ($Options -eq $null) {
			#Write-Verbose "Default Colour Schemes selected, selecting $($ChartObject.ChartStyle.ColorSchemeName)"
			#$ColorSchemes =	Get-HTMLColorSchemes 
			$ChartColorScheme = $GlobalColorSchemes.($ChartObject.ChartStyle.ColorSchemeName) | select -First $DataCount
		} else {
			Write-Verbose "Options Colour Schemes selected, selecting $($ChartObject.ChartStyle.ColorSchemeName)"
			$ChartColorScheme = $Options.ColorSchemes.($ChartObject.ChartStyle.ColorSchemeName) | select -First $DataCount
		}
		if ($ChartColorScheme.Count -lt $DataCount) {
			Write-Warning ("Colorscheme " +  $ChartObject.ChartStyle.ColorSchemeName + " only has " + $ChartColorScheme.Count + " schemes, you have $DataCount Records.  ")
			sleep 1
			Write-Warning "Relex, "
			sleep 1
			Write-Warning "I'm generating one for you" 
			$ChartColorScheme = GenerateRandomColorScheme -numberofschemes $DataCount
		}
	}
	else
	{
		$ChartColorScheme = GenerateRandomColorScheme -numberofschemes $DataCount
	}
		
	$ofs = ','
	$CJSHeader  = @()
	$CJSHeader += '<canvas id="' + $ChartObject.ObjectName + '" width="'+ $ChartObject.Size.Width + '" height="' + $ChartObject.Size.Height +'"></canvas>'
	$CJSHeader += '<script>'
	$CJSHeader += 'var ctx = document.getElementById("' + $ChartObject.ObjectName + '");'
	$CJSHeader += 'var ' + $ChartObject.ObjectName + ' = new Chart(ctx, {'
	$CJSHeader += "	type: '$($ChartObject.ChartStyle.ChartType)',"
	
	
	$CJSData = @()
	$CJSData = "	data:	{"+ "`n"
	if ($ChartObject.ChartStyle.Showlabels) {
		$ofs ='","'
		$CJSData += '		labels: ["' +"$($DataSet.($ChartObject.DataDefinition.DataNameColumnName))" + '"],' + "`n"
	}
	
	$CJSData += "		datasets: [{" + "`n"
	$CJSData += "			label: '$($chartobject.DataDefinition.datasetname)'," + "`n"
	$ofs =","
	$CJSData += "			data: [" + "$($DataSet | % {$_.($ChartObject.DataDefinition.DataValueColumnName)})" +"]," + "`n"
	$ofs ="','"
	$CJSData += "			backgroundColor: ['" + "$($ChartColorScheme.Background)" + "']," + "`n"
	$CJSData += "			borderColor:  ['" + "$($ChartColorScheme.border)" + "']," + "`n"
	$CJSData += "			hoverBackgroundColor:  ['" + "$($ChartColorScheme.border)" + "']," + "`n"
	$CJSData += "			borderWidth: $($ChartObject.ChartStyle.borderWidth)" + "`n"
	$CJSData += "		}]"+ "`n"
	$CJSData += "	},"
	$ofs =""
		
	$CJSOptions = @()
	$cjsOptions += '	options: {'
	#responsive
	$cjsOptions += "		responsive: $($ChartObject.ChartStyle.responsive),"
	#legend
	$cjsOptions += "		legend: {
                position: '$($ChartObject.ChartStyle.legendposition)',
            },"
	#title
	if ($ChartObject.Title -ne '') {
		$cjsOptions += "		title: {
				display: true,
				text: '$($ChartObject.Title)'
			},"
	}
	#scale
	$CJSOptions += "
		scales: {
			yAxes: [{
    			ticks: {
					beginAtZero:true
				}
			}]
		}"
	$cjsOptions += "	}" +"`n"
	$CJSOptions += "});	"
		
	$CJSFooter = " </script>"
	


	$CJS  = @()
	$CJS += $CJSHeader
	$CJS += $CJSData
	$CJS += $CJSOptions 
	$CJS += $CJSFooter

	write-output $CJS
}

Function Get-HTMLPieChartObject
{
<#
	.SYNOPSIS
		create a Bar chart object for use with Get-HTMLBarChart
#>
    [CmdletBinding()]
    param(
		[ValidateSet("pie","doughnut")]
		[String]
		$ChartType = 'pie',
		[Parameter(Mandatory=$false)]
		[ValidateSet("Random","Generated")]
		$ColorScheme
	)

	$ChartSize = New-Object PSObject -Property @{`
		Width = 500
		Height = 400
	}
	
	$DataDefinition = New-Object PSObject -Property @{`
		DataSetName = "Data"
		DataNameColumnName = "name"
		DataValueColumnName = "count"
	}
	
	if ($ColorScheme -eq "Generated") {$thisColorScheme = 'Generated' + [string](Get-Random -Minimum 1 -Maximum 8)}
	elseif ($ColorScheme -eq "Random") {$thisColorScheme = 'Random' }
	else {$thisColorScheme = 'ColorScheme2'}

	$ChartStyle = New-Object PSObject -Property @{`
		ChartType = $ChartType
		ColorSchemeName = "$thisColorScheme"
		Showlabels= $true
		borderWidth = "1"
		responsive = 'false'
		animateScale = 'true'
        animateRotate = 'true'
		legendPosition = 'bottom'
	}
	
	$ChartObject = New-Object PSObject -Property @{`
		ObjectName = -join ((65..90) + (97..122) | Get-Random -Count 12 | ForEach-Object {[char]$_})
		Title = ""
		Size = $ChartSize
		DataDefinition = $DataDefinition
		ChartStyle = $ChartStyle
	}
	
	return $ChartObject
}

Function Get-HTMLPieChart
{
<#
	.SYNOPSIS
	
#>
	[CmdletBinding()]
	Param (
		[Parameter(Mandatory=$true)]
		$ChartObject,
		[Parameter(Mandatory=$true)]
		[Array]
		$DataSet,
		[Parameter(Mandatory=$false)]
        $Options
	)

	$DataCount = $DataSet.Count
	Write-Verbose "Data Set counnt is $DataCount"

	if ($ChartObject.ChartStyle.ColorSchemeName -ne 'Random')
	{
		if ($Options -eq $null) {
			#Write-Verbose "Default Colour Schemes selected, selecting $($ChartObject.ChartStyle.ColorSchemeName)"
			#$ColorSchemes =	Get-HTMLColorSchemes 
			$ChartColorScheme = $GlobalColorSchemes.($ChartObject.ChartStyle.ColorSchemeName) | select -First $DataCount
		} else {
			Write-Verbose "Options Colour Schemes selected, selecting $($ChartObject.ChartStyle.ColorSchemeName)"
			$ChartColorScheme = $Options.ColorSchemes.($ChartObject.ChartStyle.ColorSchemeName) | select -First $DataCount
		}
		if ($ChartColorScheme.Count -lt $DataCount) {
			Write-Warning ("Colorscheme " +  $ChartObject.ChartStyle.ColorSchemeName + " only has " + $ChartColorScheme.Count + " schemes, you have $DataCount Records.  ");sleep 1
			Write-Warning "Relex, ";sleep 2;Write-Warning "I'm generating one for you" 
			$ChartColorScheme = GenerateRandomColorScheme -numberofschemes $DataCount
		}
	}
	else
	{
		$ChartColorScheme = GenerateRandomColorScheme -numberofschemes $DataCount
	}
		
	$ofs = ','
	$CJSHeader  = @()
	$CJSHeader += '<canvas id="' + $ChartObject.ObjectName + '" width="'+ $ChartObject.Size.Width + '" height="' + $ChartObject.Size.Height +'"></canvas>'
	$CJSHeader += '<script>'
	$CJSHeader += 'var ctx = document.getElementById("' + $ChartObject.ObjectName + '");'
	$CJSHeader += 'var ' + $ChartObject.ObjectName + ' = new Chart(ctx, {'
	$CJSHeader += "	type: '$($ChartObject.ChartStyle.ChartType)',"
	
	
	$CJSData = @()
	$CJSData = "	data:	{"+ "`n"
	if ($ChartObject.ChartStyle.Showlabels) {
		$ofs ='","'
		$CJSData += '		labels: ["' +"$($DataSet.($ChartObject.DataDefinition.DataNameColumnName))" + '"],' + "`n"
	}
	
	$CJSData += "		datasets: [{" + "`n"
	$CJSData += "			label: '$($chartobject.DataDefinition.datasetname)'," + "`n"
	$ofs =","
	$CJSData += "			data: [" + "$($DataSet | % {$_.($ChartObject.DataDefinition.DataValueColumnName)})" +"]," + "`n"
	$ofs ="','"
	$CJSData += "			backgroundColor: ['" + "$($ChartColorScheme.Background)" + "']," + "`n"
	$CJSData += "			hoverBackgroundColor:  ['" + "$($ChartColorScheme.border)" + "']," + "`n"
	$CJSData += "			borderWidth: $($ChartObject.ChartStyle.borderWidth)" + "`n"
	$CJSData += "		}]"+ "`n"
	$CJSData += "	},"	
	$ofs =""
	
	
	$CJSOptions = @()
	$cjsOptions += '	options: {'
	#responsive
	$cjsOptions += "		responsive: $($ChartObject.ChartStyle.responsive),"
	#legend
	$cjsOptions += "		legend: {
                position: '$($ChartObject.ChartStyle.legendposition)',
            },"
	#Title
	if ($ChartObject.Title -ne '') {
		$cjsOptions += "		title: {
				display: true,
				text: '$($ChartObject.Title)'
			},"
	}
	$cjsOptions += "	},"
	#animation
	$cjsOptions += "	animation: {
                animateScale: $($ChartObject.ChartStyle.animateScale),
                animateRotate: $($ChartObject.ChartStyle.animateRotate)
            }"
	$CJSOptions += "});	"
	
	
	
	$CJSFooter = " </script>"
	


	$CJS  = @()
	$CJS += $CJSHeader
	$CJS += $CJSData
	$CJS += $CJSOptions 
	$CJS += $CJSFooter

	write-output $CJS
}



#Endregion

#Region Output Functions


Function Save-HTMLReport 
{
<#
	.SYNOPSIS
		generation of  report and invokes the file to open
	.PARAMETER ReportName
		with generate a random file name if noone is specified 
	.PARAMETER ReportPath 
		specifiy test directory, will use %TEMP% by default
	.PARAMETER ReportContent
		This should be the complete HTML code
#>
    [CmdletBinding()]
    Param 
    (
        [Parameter(Mandatory=$false)]
	    [string]$ReportName,
	    [Parameter(Mandatory=$false)]
        [string]$ReportPath = $env:temp,
	    [Parameter(Mandatory=$true)]
        [Array]$ReportContent,
        [Parameter(Mandatory=$false)]
	    [switch]$ShowReport
    )
   
	if ((Test-Path $ReportPath) -eq $false) 
	{
		Write-Warning "ReportOutputPath parameter $ReportOutputPath is not a valid directory, using Temp"
		$ReportPath = $env:temp
	}
	
	
	$ReportName = $ReportName.replace('.html','')
	if ($ReportName -eq $null -or $ReportName -eq ""){
        $ReportName = -join ((65..90) + (97..122) | Get-Random -Count 12 | ForEach-Object {[char]$_})
	}
	$rptFile = join-path $ReportPath ($ReportName.replace(" ","") + ".html")
    Write-Verbose "Generating Report File at $rptFile"
	
	   
    $ReportContent | Set-Content -Path $rptFile -Force
	Write-Verbose $rptFile
    if ($ShowReport) {
		Start-Sleep -Seconds 1
		Invoke-Item $rptFile
	}
	Write-Output $rptFile
}

Function Save-HTMLToBlobStorage  
{
<#
	.SYNOPSIS
		generation of  report and invokes the file to open
#>
	 [CmdletBinding()]
	 Param
	 (
		[Parameter(Mandatory=$true)]
		[Array]
		$ReportContent,
		[Parameter(Mandatory=$true)]
		[string]
		$resourceGroupName = "",
		[Parameter(Mandatory=$true)]
		[string]
		$storageAccountName = "",
		[Parameter(Mandatory=$true)]
		[string]
		$storageContainerName = "",
		[Parameter(Mandatory=$false)]
		[string]
		$ReportPrefix = "HTMLReport"
		
	)

	$localFileName ="{0}\report.html" -f $env:TEMP
	$ReportContent | Set-Content -Path $localFileName
	$blobFileName = $ReportPrefix + "-{0}" -f [guid]::NewGuid() + ".html"

	Write-Output ("Saving the report to storage")
	Write-Output ("Resource Group: {0}" -f $resourceGroupName)
	Write-Output ("Storage Account: {0}" -f $storageAccountName)
	Write-Output ("Storage Container: {0}" -f $storageContainerName)
	Write-Output ("Blob: {0}" -f $blobFileName)

	Set-AzureRmCurrentStorageAccount `
	    -ResourceGroupName $resourceGroupName `
	    -Name $storageAccountName | Out-Null

	$storageAccount = Get-AzureRmStorageAccount `
	    -ResourceGroupName $resourceGroupName `
	    -Name $storageAccountName

	$storageAccountContainer = Get-AzureStorageContainer `
	    -Name $storageContainerName

	$blob = Set-AzureStorageBlobContent `
	    -Container $storageContainerName `
	    -Blob $blobFileName `
	    -File $localFileName
		
	Write-Output ("Click the link below to view the report")
	$url = "https://{0}.blob.core.windows.net/{1}/{2}" -f $storageAccountName, $storageContainerName, $blob.Name
	$hash = @{
	    type = "hyperlink";
	    name = "Report: {0}" -f $blob.Name;
	    value = $url
	}
	Write-Output($hash)
}

function Send-HTMLReport 
{
	<#
	.SYNOPSIS
		rudimentary send report via email function.  Suggest finding more comprehensive function it must already exist :)
	.PARAMETER To
	.PARAMETER From 
	.PARAMETER SMTPServer
	.PARAMETER SMTPPort
#>
	[CmdletBinding()]
	Param (
		[string]$ReportName,
		[string]$To,
		[string]$From,
		[string]$SMTPServer = "smtp.gmail.com",
		[string]$SMTPPort = "587",
		[string]$Body = 'HTML Report Attached',
		$Rptfile,
		[System.Management.Automation.PSCredential]
		$Credentials,
		[hashtable]
		$StoredReport
	)
	
	Write-Warning "...this is in development, mainly as a placeholder.  Expect Breaking changes."
	sleep 3
	Send-MailMessage -From $From -to $To -Subject $ReportName `
		-Body $Body -SmtpServer $SMTPServer -port $SMTPPort -UseSsl -Credential $Credentials -Attachments $Rptfile

}


#Endregion

#Region Help Documentation
#FYI, This is mostly a terrible example of how to write a report. But if you must look under the covers, enjoy.

Write-Warning ""
Write-Warning "Need a little help getting started?  Get-HTMLReportHelp"

Function Get-HTMLReportHelp {
	Param (
	    [switch]$GenerateReport
	)

#Region Housekeeping


	if([String]::IsNullOrEmpty($ModulePath))
	{
	    if([string]::IsNullOrEmpty($PSScriptRoot))
	    {
	        $ModulePath=$PSCmdlet.SessionState.Path.CurrentLocation.Path
	    }
	    else
	    {
	        $ModulePath = $PSScriptRoot 
        } 
    }

$process = Get-Process | select Name,Id,PriorityClass,Handles,FileVersion,WorkingSet,PrivateMemorySize, PagedMemorySize 


if ($GenerateReport) {
	$tabarray = @('Welcome','Reports','Logos','Styles','Options','Tabs','Sections','Columns','Tables','Row Colour','HyperLinks','Charts','JavaScript','HTML','Functions')
	$rpt = @()
	$rpt += Get-HTMLOpenPage -TitleText "ReportHTML Cmdlets Usage, Help & Examples" -LeftLogoName Corporate -RightLogoName Alternate
	$rpt += Get-HTMLTabHeader -TabNames $tabarray 
#endregion

#region Welcome
      $Tab = 'Welcome'
      $rpt += get-htmltabcontentopen -TabName $Tab -tabheading ' '
            $rpt += Get-HTMLContentOpen -HeaderText "About" 
				$rpt += Get-HTMLContentText -Heading "Why we wrote this" -Detail "PowerShell is an amazing tool for gathering, collecting, slicing, grouping, filtering and collating data.  However, trying to show that information or several sets of it on one report is not as easy.  A few years we ago built our own solution, we created a set of HTML reporting functions.  I have been using these functions for years to help myself, my team and customers to deliver Powershell data to people that just need the details and not a CSV file or a code snippet. We’ve now decided to make these available to the rest of you."
                $rpt += Get-HTMLContentText -Heading "Original Credits" -detail "This code was originally borrowed from Alan Renouf for a vSphere healthcheck report by Andrew Storrs and myself for a more dynamic reporting style, being able to create reports on the fly with minimal effort. "
				$rpt += Get-HTMLContentText -Heading "Recent Credits" -Detail "Jennifier Han, Giovanni Fleres, Chris Speers, Keith Ellis, Blake and Moep"
				$rpt += Get-HTMLContentText -Heading "Running Reports" -Detail "These reports, once built can be scheduled to run, dropped on a file share emailed or saved to an Azure Storage Blob. "
				$rpt += Get-HTMLContentText -Heading "This Help Report" -Detail "Will walk through several examples of how to use the functions to generate different types of reports."
				$rpt += Get-HTMLContentText -Heading "Module Version" -Detail (get-Module -Name reporthtml).version
				$rpt += Get-HTMLContentText -Heading "Beta Help File" -Detail ("Please note this help is in a first draft")
			$rpt += Get-HTMLContentClose
			$rpt += Get-HTMLContentOpen -HeaderText  'Something missing? Got an idea? Found a bug? Contribute'
                  $rpt += Get-HTMLContentText -Heading "PowerShell Gallery" -Detail "URL01https://www.powershellgallery.com/packages/ReportHTML/URL02Add A Comment on powershell galleryURL03"
                  $rpt += Get-HTMLContentText -Heading "Github" -Detail "URL01https://www.github.com/azurefieldnotes/ReportHTML/URL02Write some code, branch it, merge it, Join me and lets hack and slash together.URL03"
				  $rpt += Get-HTMLContentText -Heading "Log Issue" -Detail "URL01https://github.com/azurefieldnotes/ReportHTML/URL02Log an IssueURL03"
            $rpt += Get-HTMLContentClose

      $rpt += get-htmltabcontentclose
#endregion

#region Reports Tab
$BuildingRpt = @'
$rpt = @()
$rpt += Get-HTMLOpenPage -TitleText "ReportHTML" 
	$rpt += Get-HTMLContentOpen 
		$rpt += Get-HTMLContentText -Heading "Header" -Detail "Detailed Information" 
	$rpt += Get-HTMLContentClose 
$rpt += Get-HTMLClosePage 
'@

$SavingRpt1 =@'
$rpt | set-content -path "c:\temp\MyReport.html"  
Set-Content -Value $rpt -path "c:\temp\MyReport.html"  
Invoke-item "c:\temp\MyReport.html"
'@

$SavingRpt2 =@'
Save-HTMLReport -Reportcontent $rpt -ReportPath c:\temp -ReportName "MyReport" -showreport
Save-HTMLReport -Reportcontent $rpt -ReportPath c:\temp -ReportName "MyReport.html" 
Save-HTMLReport -Reportcontent $rpt -ReportPath c:\temp -ReportName "MyReport" 
Save-HTMLReport -ShowReport 
$SavedFile = Save-HTMLReport -ShowReport 
'@

$SavingRpt3 =@'
Save-HTMLToBlobStorage -Needs an Azure Account #More to come
'@

$BuildingOutput = @() 
$BuildingOutput += Get-HTMLOpenPage -TitleText "ReportHTML" 
$BuildingOutput += Get-HTMLContentOpen 
$BuildingOutput += Get-HTMLContentText -Heading "Header" -Detail "Detailed Information" 
$BuildingOutput += Get-HTMLContentClose 
$BuildingOutput += Get-HTMLClosePage 

      # 'Reports'
      $Tab = 'Reports'
      $rpt += get-htmltabcontentopen -TabName $Tab -tabheading ' '
            $rpt += Get-HTMLContentOpen -HeaderText "Building Reports" -BackgroundShade 2
                  $rpt += Get-HTMLContentOpen -HeaderText "How this fucntion set works" 
                        $rpt += Get-HTMLContentText -Heading "Functions" -Detail "Each function return HTML code, the parameters you send in will be return with HTML code.  "
                        $rpt += Get-HTMLContentText -Heading "Building an Array" -Detail 'To build a report create an array object and add parts of your report together. <br> Eg, create an array variable $Rpt = @() <br>  Next add to the array. <BR> $RPT += get-htmlpageopen -title "Welcome"'
                        $rpt += Get-HTMLContentText -Heading "Open / Close" -Detail "Although these functions help you with HTML its still HTML.  HTML uses tags and everything you open you must close <BR> Get-HTMLContentOpen -HeaderText, creates a section header.  You can then add other functions and code.  However you must eventually add get-HTMLContentClose.  <BR>  Using Indenting is an easy way to keep track of what tag your in."
                        $rpt += Get-HTMLContentText -Heading "Saving Reports" -Detail 'The Array need to be saved to a file, there are a couple of options for this. <BR>  You can save the array to a file using set-content.  <BR>  $rpt | set-content -path "c:\temp\MyReport.html" <BR> You can use the Save-HTMLReport Function.  There is also a save to storage azure blob option'
                  $rpt += Get-HTMLContentClose  
                  $rpt += Get-HTMLContentOpen -HeaderText "Example" 
                        $rpt += Get-HTMLContentText -Heading "Building Report Code" -Detail (Get-HTMLCodeBlock -Code $BuildingRpt -Style PowerShell)
						$rpt += Get-HTMLContentText -Heading "Saving a Report - Write Array to file" -Detail (Get-HTMLCodeBlock -Code $SavingRpt1 -Style PowerShell)
						$rpt += Get-HTMLContentText -Heading "Saving a Report - Use the builtin function (1 Liner Options)" -Detail (Get-HTMLCodeBlock -Code $SavingRpt2 -Style PowerShell)
						$rpt += Get-HTMLContentText -Heading "Saving a Report - Save To Azure Storage Blob" -Detail (Get-HTMLCodeBlock -Code $SavingRpt3 -Style PowerShell)
                  $rpt += Get-HTMLContentClose  
                  $rpt += Get-HTMLContentOpen -HeaderText "Report Output" 
                        $rpt += $BuildingOutput
                  $rpt += Get-HTMLContentClose  

            $rpt += Get-HTMLContentClose  
      $rpt += Get-HTMLTabContentClose
#endregion

#region Logos
      # 'Loading Logos'
      $Tab = 'Logos'
      $rpt += get-htmltabcontentopen -TabName $Tab -tabheading ' '
      
#endregion

#region Logo names
            $rpt += Get-HTMLContentOpen -HeaderText "Adding logos to the header" -BackgroundShade 3
                  $rpt += Get-HTMLContentOpen -HeaderText "Parameters" 
                        $rpt += Get-HTMLContentText -Heading "Mixed and Match" -Detail "You can use the following parameters in a mix and match format"
						$rpt += Get-HTMLContentText -Heading "-LeftLogoName" -Detail "These switch will load logos to the top left of the report from JPG files saved in the module directory.  There are 4 image files in the module for examples 'Alternate','Blank','Sample' and 'Corporate' (this uses Get-HTMLLogos)"
                        $rpt += Get-HTMLContentText -Heading "-RightLogoName" -Detail "These switch will load logos to the top of the report right from JPG files saved in the module directory.  There are 4 image files in the module for examples 'Alternate','Blank','Sample' and 'Corporate' (this uses Get-HTMLLogos)"
						$rpt += Get-HTMLContentText -Heading "-LeftLogoString" -Detail "You can eith use a URL reference here, or Base 64 encoded string"
                        $rpt += Get-HTMLContentText -Heading "-RightLogoString" -Detail "You can eith use a URL reference here, or Base 64 encoded string"
						$rpt += Get-HTMLContentText -Heading "-hidelogos" -Detail "Remove the header"
						$rpt += Get-HTMLContentText -Heading "-LogoPath" -Detail "Use in conjunction with LeftLogoName and RightLogo Name. Specify the File Name in the directory"
                  $rpt += Get-HTMLContentClose  
					#### From examples
                  $rpt += Get-HTMLContentOpen -HeaderText "From Image Examples"  -BackgroundShade 2 
                        $rpt += Get-HTMLContentOpen -HeaderText "Exmaple 1"  -BackgroundShade 1
                              $rpt += Get-HTMLContentOpen -HeaderText "Code"
                                    $rpt += Get-HTMLContentText -Heading "Load Images from Files" -Detail (get-htmlcodeblock  -Style PowerShell -Code 'Get-HTMLOpenPage -TitleText "Example 1" -LeftLogoName Corporate -RightLogoName Alternate')
                              $rpt += Get-HTMLContentClose  
                              $rpt += Get-HTMLContentOpen -HeaderText "Output"
                                    $rpt += Get-HTMLOpenPage -TitleText "Example 1" -LeftLogoName Corporate -RightLogoName Alternate
                              $rpt += Get-HTMLContentClose  
                        $rpt += Get-HTMLContentClose  

                        $rpt += Get-HTMLContentOpen -HeaderText "Exmaple 2" -BackgroundShade 1
                              $rpt += Get-HTMLContentOpen -HeaderText "Code"
                                    $rpt += Get-HTMLContentText -Heading "Load Images from Files" -Detail (get-htmlcodeblock  -Style PowerShell -Code 'Get-HTMLOpenPage -TitleText "Example 2" -LeftLogoName Blank -RightLogoName Sample')
                              $rpt += Get-HTMLContentClose  
                              $rpt += Get-HTMLContentOpen -HeaderText "Output"
                                    $rpt += Get-HTMLOpenPage -TitleText "Example 2" -LeftLogoName Blank -RightLogoName Sample
                              $rpt += Get-HTMLContentClose  
                        $rpt += Get-HTMLContentClose
                  $rpt += Get-HTMLContentClose
#            		####URL Examples
                  $rpt += Get-HTMLContentOpen -HeaderText "Logo String Examples (URL and Base64)"  -BackgroundShade 2 
                        $rpt += Get-HTMLContentOpen -HeaderText "Exmaple 3"  -BackgroundShade 1
                              $rpt += Get-HTMLContentOpen -HeaderText "Code"
                                    $rpt += Get-HTMLContentText -Heading "Load Images from a URL" -Detail (get-htmlcodeblock  -Style PowerShell -Code 'Get-HTMLOpenPage -TitleText "Example 1" -LeftLogoString "https://azurefieldnotesblog.blob.core.windows.net/wp-content/2016/07/powershell.jpg" ` <BR> -RightLogoString "https://azurefieldnotesblog.blob.core.windows.net/wp-content/2016/07/datacenter.jpg"')
                              $rpt += Get-HTMLContentClose  
                              $rpt += Get-HTMLContentOpen -HeaderText "Output"
                                    $rpt += Get-HTMLOpenPage -TitleText "Example 3" -LeftLogoString "https://azurefieldnotesblog.blob.core.windows.net/wp-content/2016/07/powershell.jpg" -RightLogoString "https://azurefieldnotesblog.blob.core.windows.net/wp-content/2016/07/datacenter.jpg"
                              $rpt += Get-HTMLContentClose  
                        $rpt += Get-HTMLContentClose  

                        $rpt += Get-HTMLContentOpen -HeaderText "Exmaple 4" -BackgroundShade 1
                              $rpt += Get-HTMLContentOpen -HeaderText "Code"
                                    $rpt += Get-HTMLContentText -Heading "Use Base 64 code" -Detail (get-htmlcodeblock  -Style PowerShell -Code '$OurLogos = Get-HTMLLogos <BR>$YourLogos = get-htmlLogos -LogoPath c:\YourPath\ <br>$Base64Logo = $OurLogos.get_item("Corporate") <BR>Get-HTMLOpenPage -TitleText "Example 2" -LeftLogoName Blank -RightLogoString $Base64Logo' )
                              $rpt += Get-HTMLContentClose  
                              $rpt += Get-HTMLContentOpen -HeaderText "Output"
                                    $OurLogos = Get-HTMLLogos 
									$Base64Logo = $OurLogos.get_item("Corporate") 
									$rpt += Get-HTMLOpenPage -TitleText "Example 4" -LeftLogoName Blank -RightLogoString $Base64Logo
                              $rpt += Get-HTMLContentClose  
                        $rpt += Get-HTMLContentClose
                  $rpt += Get-HTMLContentClose
			
				### Other
				
				  $rpt += Get-HTMLContentOpen -HeaderText "Logo String Examples (URL and Base64)"  -BackgroundShade 2 
                        $rpt += Get-HTMLContentOpen -HeaderText "Exmaple 5"  -BackgroundShade 1
                              $rpt += Get-HTMLContentOpen -HeaderText "Code"
                                    $rpt += Get-HTMLContentText -Heading "We dont need no stinking logos!" -Detail (get-htmlcodeblock  -Style PowerShell -Code 'Get-HTMLOpenPage -TitleText "Example 5" -HideLogos')
                                    $rpt += Get-HTMLContentText -Heading "Use a Logo Path" -Detail (get-htmlcodeblock  -Style PowerShell -Code 'Get-HTMLOpenPage -LogoPath "C:\path\" -LeftLogoName "NameOfFileInPath" -RightLogoName Blank' )
                        		$rpt += Get-HTMLContentClose
						$rpt += Get-HTMLContentClose
                  $rpt += Get-HTMLContentClose
      		$rpt += Get-HTMLContentClose
      $rpt += get-htmltabcontentclose
#Endregion

#region Styles
$CodeBlock =@'
$rpt += Get-HTMLOpenPage -CSSName Sample
$rpt += Get-HTMLContentOpen "Orange"
$rpt += Get-HTMLContentText -Heading "Sample Style" -Detail "whooo, coool."
$rpt += Get-HTMLContentClose
$rpt += Get-HTMLClosePage
Save-HTMLReport -ReportContent $rpt -ShowReport
'@

$Samplerpt =@()
$Samplerpt += Get-HTMLOpenPage -CSSName Sample
$Samplerpt += Get-HTMLContentOpen "Orange"
$Samplerpt += Get-HTMLContentText -Heading "Sample Style" -Detail "whooo, coool."
$Samplerpt += Get-HTMLContentClose 
$Samplerpt += Get-HTMLClosePage

	  
	  $Tab = 'Styles'
      $rpt += get-htmltabcontentopen -TabName $Tab -tabheading ' '
            $rpt += Get-HTMLContentOpen -HeaderText $Tab 
				$rpt += Get-HTMLContentOpen "Custom Style"
                  $rpt += Get-HTMLContentText -Heading "Customzie the Look" -detail "All style is in a CSS file so if you want to change it, you can"
				  $rpt += Get-HTMLContentText -Heading "Sample Style" -detail "This is just an example when you use get-htmlopenpage use the CSSName switch<BR>use the name of the css style sheet in the directory"
				  $rpt += Get-HTMLContentText -Heading "Usage" -detail "Style Sheets are best best used in conjuction with New-HTMLReportOptions from a custom local directory"
				  $rpt += Get-HTMLContentText -Heading "Code" -Detail (get-htmlcodeblock -style powershell -code $CodeBlock)
            	$rpt += Get-HTMLContentClose
			$rpt += Get-HTMLContentClose
      $rpt += get-htmltabcontentclose
#endregion

#region Options

$OptionCode =@'
$MyPath  ='C:\temp\Custom'
if ((Test-Path $MyPath ) -eq $false) {New-Item -ItemType	Directory -Path $mypath}
New-HTMLReportOptions -SaveOptionsPath $MyPath 
$Options = new-HTMLReportOptions -CSSPath c:\temp\ -cssname sample -ColorSchemePath c:\temp\ -LogoPath c:\temp\
$Rpt = @()
$Rpt += get-htmlopenpage -TitleText "External Options" -Options $Options
$Rpt += Get-HTMLContentOpen
$Rpt += Get-HTMLContenttext -Heading "this is custom" -Detail "nice"
$Rpt += Get-HTMLContentClose
$Rpt += Get-HTMLClosePage
Save-HTMLReport -ReportContent $rpt -ShowReport
'@
      $Tab = 'Options'
      $rpt += get-htmltabcontentopen -TabName $Tab -tabheading ' '
            $rpt += Get-HTMLContentOpen -HeaderText $Tab 
                  $rpt += Get-HTMLContentText -Heading "Creating Options" -detail "You can saver the options from the Module directory locally and modify them.<BR> for instance your logo files, css stlyes and even graph colour schemes"
				  $rpt += Get-HTMLContentText -Heading "Code" -Detail (get-htmlcodeblock -style powershell -code $OptionCode)
            $rpt += Get-HTMLContentClose
			
      $rpt += get-htmltabcontentclose
#endregion

#region Tabs
                        
$TabCode = @'
$tabarray = @('Sample1','Sample2','Sample3','Sample4')
$rpt = @()
$rpt += Get-HTMLOpenPage -TitleText 'Tab Test' 
$rpt += Get-HTMLTabHeader -TabNames $tabarray 
foreach ($tab in $tabarray ){
	$rpt += get-htmltabcontentopen -TabName $tab -tabheading ($tab + ' this is your tab' )
		$rpt += Get-HTMLContentText -Heading "$tab" -Detail "$tab" 
	$rpt += get-htmltabcontentclose
}
$rpt += Get-HTMLClosePage
Save-HTMLReport -ReportContent $rpt -ShowReport
'@


$tabarray = @('Sample1','Sample2','Sample3','Sample4')
$TabExample = @()
$TabExample += Get-HTMLTabHeader -TabNames $tabarray 
foreach ($tab in $tabarray ){
       $TabExample += get-htmltabcontentopen -TabName $tab -tabheading ($tab + ' this is your tab' )
       $TabExample += Get-HTMLContentText -Heading "$tab" -Detail "$tab"
       $TabExample += get-htmltabcontentclose
}
      
      # 'Tabs'
      $Tab = 'Tabs'
      $rpt += get-htmltabcontentopen -TabName $Tab -tabheading ' '
            $rpt += Get-HTMLContentOpen -HeaderText "Using Tabs in your Reports" -BackgroundShade 2
                  $rpt += Get-HTMLContentOpen -HeaderText "Creating Tabs"
				  		$rpt += Get-HTMLContentText -Heading "Tabs" -Detail 'If you are here, you already know what tabs are.  Here is the code'
                        $rpt += Get-HTMLContentText -Heading "Code" -Detail (get-htmlcodeblock -style powershell -code $TabCode)
                  $rpt += Get-HTMLContentClose  
                  $rpt += Get-HTMLContentOpen -HeaderText "Output"
                        $rpt +=  $TabExample
                  $rpt += Get-HTMLContentClose
            $rpt += Get-HTMLContentClose
      $rpt += get-htmltabcontentclose
#endregion

#region Sections
      
$Content1Code = @'
$rpt += Get-HTMLContentOpen -HeaderText "Welcome to your content" 
	$rpt += Get-HTMLContentText -Heading "This is simple content open" -Detail "Every time you use get-htmlContentopen you need to use Get-HTMLContentClose " 
$rpt += Get-HTMLContentClose 
'@
      
$Content1Output = @()
$Content1Output += Get-HTMLContentOpen -HeaderText "Welcome to your content" 
$Content1Output += Get-HTMLContentText -Heading "This is simple content open" -Detail "Every time you use get-htmlContentopen you need to use Get-HTMLContentClose " 
$Content1Output += Get-HTMLContentClose
      
$Content2Code = @'
$process = Get-Process | select -First 10
$rpt += Get-HTMLContentOpen -HeaderText "Hiding content" -IsHidden 
	$rpt += Get-HTMLContentTable $process 
$rpt += Get-HTMLContentClose 
'@

$Content2Output = @()
$Content2Output += Get-HTMLContentOpen -HeaderText "Hiding content" -IsHidden 
$Content2Output += Get-HTMLContentTable ($process | Select -First 5)
$Content2Output += Get-HTMLContentClose

$Content3Code = @'
$process = Get-Process | select -First 10
$rpt= @()
$rpt+= Get-HTMLContentOpen -HeaderText "Background Shade level 5" -BackgroundShade 5
	$rpt+= Get-HTMLContentOpen -HeaderText "Background Shade level 4" -BackgroundShade 4
		$rpt+= Get-HTMLContentOpen -HeaderText "Background Shade level 3" -BackgroundShade 3
			$rpt+= Get-HTMLContentOpen -HeaderText "Background Shade level 2" -BackgroundShade 2
				$rpt+= Get-HTMLContentOpen -HeaderText "Background Shade level 1" -BackgroundShade 1
					$rpt+= Get-HTMLContentTable ($process | Select -First 5)
				$rpt+= Get-HTMLContentClose
			$rpt+= Get-HTMLContentClose
		$rpt+= Get-HTMLContentClose
	$rpt+= Get-HTMLContentClose
$rpt+= Get-HTMLContentClose
'@

$Content3Output = @()
$Content3Output += Get-HTMLContentOpen -HeaderText "Background Shade level 5" -BackgroundShade 5
	$Content3Output += Get-HTMLContentOpen -HeaderText "Background Shade level 4" -BackgroundShade 4
		$Content3Output += Get-HTMLContentOpen -HeaderText "Background Shade level 3" -BackgroundShade 3
			$Content3Output += Get-HTMLContentOpen -HeaderText "Background Shade level 2" -BackgroundShade 2
				$Content3Output += Get-HTMLContentOpen -HeaderText "Background Shade level 1" -BackgroundShade 1
					$Content3Output += Get-HTMLContentTable ($process | Select -First 5)
				$Content3Output += Get-HTMLContentClose
			$Content3Output += Get-HTMLContentClose
		$Content3Output += Get-HTMLContentClose
	$Content3Output += Get-HTMLContentClose
$Content3Output += Get-HTMLContentClose

      # 'Loading Sections'
      $Tab = 'Sections'
      $rpt += get-htmltabcontentopen -TabName $Tab -tabheading ' '
      
            $rpt += Get-HTMLContentOpen -HeaderText "Sections" -BackgroundShade 3
                $rpt += Get-HTMLContentOpen -HeaderText "Creating Sections" -BackgroundShade 2
                	$rpt += Get-HTMLContentOpen -HeaderText "Code" 
                    	    $rpt += Get-HTMLContentText -Heading "Example" -Detail (get-htmlcodeblock -style powershell -code $Content1Code)
                  	$rpt += Get-HTMLContentClose
                        $rpt += $Content1Output
                  	$rpt += Get-HTMLContentClose  
            		
					$rpt += Get-HTMLContentOpen -HeaderText "Hiding Sections" -BackgroundShade 2
                  		$rpt += Get-HTMLContentOpen -HeaderText "Code" 
                        	$rpt += Get-HTMLContentText -Heading "Example" -Detail (get-htmlcodeblock -style powershell -code $Content2Code)
                  		$rpt += Get-HTMLContentClose
                        	$rpt += $Content2Output
                  	$rpt += Get-HTMLContentClose  
	            
					$rpt += Get-HTMLContentOpen -HeaderText "Shading" -BackgroundShade 2
                  		$rpt += Get-HTMLContentOpen -HeaderText "Code" 
                        	$rpt += Get-HTMLContentText -Heading "Example" -Detail (get-htmlcodeblock -style powershell -code $Content3Code)
                  		$rpt += Get-HTMLContentClose
                        	$rpt += $Content3Output
                  	$rpt += Get-HTMLContentClose  
	            
					
				$rpt += Get-HTMLContentClose
			
			$rpt += Get-HTMLContentClose
			
      $rpt += get-htmltabcontentclose
#endregion

#region Columns

$ColumnCode = @'
$MyProcesses= get-process | select Name,Id,PriorityClass,PagedMemorySize
$rpt= @()
$rpt+= Get-HtmlContentOpen -BackgroundShade 3 -HeaderText "Top and Bottom 5 Process"
	$rpt+= get-HtmlColumn1of2
		$rpt+= Get-HtmlContentOpen -BackgroundShade 2 -HeaderText 'Bottom 5 Process by Paged Memory'
			$rpt+= Get-HtmlContentTable  ($MyProcesses  | sort PagedMemorySize | select -First 5) 
		$rpt+= Get-HtmlContentClose
	$rpt+= get-htmlColumnClose
	$rpt+= get-htmlColumn2of2
		$rpt+= Get-HtmlContentOpen -BackgroundShade 2 -HeaderText 'Top 5 Process by Paged Memory'
			$rpt+= Get-HtmlContentTable  ($MyProcesses | sort PagedMemorySize | select -last 5) 
		$rpt+= Get-HtmlContentClose
	$rpt+= get-htmlColumnClose
$rpt+= Get-HtmlContentClose
'@
$MyProcesses= $process | select Name,Id,PriorityClass,Handles,FileVersion
$ColumnExample = @()
$ColumnExample += Get-HtmlContentOpen -BackgroundShade 3 -HeaderText "Top and Bottom 5 Process"
$ColumnExample += get-HtmlColumn1of2
$ColumnExample += Get-HtmlContentOpen -BackgroundShade 2 -HeaderText 'Bottom 5 Process by Paged Memory'
$ColumnExample += Get-HtmlContentTable  ($MyProcesses  | sort PagedMemorySize | select -First 5) 
$ColumnExample += Get-HtmlContentClose
$ColumnExample += get-htmlColumnClose
$ColumnExample += get-htmlColumn2of2
$ColumnExample += Get-HtmlContentOpen -BackgroundShade 2 -HeaderText 'Top 5 Process by Paged Memory'
$ColumnExample += Get-HtmlContentTable  ($MyProcesses | sort PagedMemorySize | select -last 5) 
$ColumnExample += Get-HtmlContentClose
$ColumnExample += get-htmlColumnClose
$ColumnExample += Get-HtmlContentClose

# 'Tabs'
      $Tab = 'Columns'
      $rpt += get-htmltabcontentopen -TabName $Tab -tabheading ' '
            $rpt += Get-HTMLContentOpen -HeaderText "Creating Columns in your Reports" -BackgroundShade 2
                  $rpt += Get-HTMLContentOpen -HeaderText "Code"
                        $rpt += Get-HTMLContentText -Heading "Example" -Detail (get-htmlcodeblock -style powershell -code $ColumnCode)
                  $rpt += Get-HTMLContentClose  
                  $rpt += Get-HTMLContentOpen -HeaderText "Output" -BackgroundShade 4
                        $rpt +=  $ColumnExample
                  $rpt += Get-HTMLContentClose
            $rpt += Get-HTMLContentClose
      $rpt += get-htmltabcontentclose

#endregion

#region Tables 

$TableCode1 = @'
$SampleList = get-process | select Name,Id,PriorityClass,PagedMemorySize,PrivateMemorySize,VirtualMemorySize -First 10 
$rpt= @() 
$rpt+= Get-HtmlContentOpen -HeaderText "Processes"
	$rpt+= Get-HtmlContentTable $SampleList 
$rpt+= Get-HtmlContentClose 
'@

$SampleList1 = $process | select -First 10
$TableExample1 = @()
$TableExample1 += Get-HtmlContentOpen -HeaderText "Processes"
$TableExample1 += Get-HtmlContentTable -ArrayOfObjects $SampleList1
$TableExample1 += Get-HtmlContentClose


$TableCode2 = @'
$SampleList = get-process 
$rpt= @()
$rpt+= Get-HtmlContentOpen -HeaderText "Processes" 
	$rpt+= Get-HtmlContentTable $SampleList 
$rpt+= Get-HtmlContentClose
'@

$SampleList2 = $process | select -First 20
$TableExample2 = @()
$TableExample2 += Get-HtmlContentOpen -HeaderText "Processes"
$TableExample2 += Get-HtmlContentTable -ArrayOfObjects $SampleList2 -GroupBy PriorityClass
$TableExample2 += Get-HtmlContentClose

$TableCode3 = @'
$SampleList3 = get-process
$rpt = @()
$rpt += Get-HtmlContentOpen -HeaderText "Processes, 2 fixed table one not."
$rpt += Get-HtmlContentTable -ArrayOfObjects ($SampleList3 | select -first 4) -Fixed
$rpt += Get-HTMLContentText -Heading ' ' -Detail ' '
$rpt += Get-HtmlContentTable -ArrayOfObjects ($SampleList3 | select -last 4) -Fixed
$rpt += Get-HtmlContentClose
'@

$SampleList3 = $process
$TableExample3 = @()
$TableExample3 += Get-HtmlContentOpen -HeaderText "Processes, 2 fixed tables."
$TableExample3 += Get-HtmlContentTable -ArrayOfObjects ($SampleList3 | select -first 4)  -Fixed
$TableExample3 += Get-HTMLContentText -Heading ' ' -Detail ' ' 
$TableExample3 += Get-HtmlContentTable -ArrayOfObjects ($SampleList3 | select -last 8) -Fixed
$TableExample3 += Get-HtmlContentClose




# 'Tabs'
      $Tab = 'Tables'
      $rpt += get-htmltabcontentopen -TabName $Tab -tabheading ' '
            $rpt += Get-HTMLContentOpen -HeaderText "Display PowerShell arrays using tables" -BackgroundShade 3          
                  $rpt += Get-HTMLContentOpen -HeaderText "Simple Example" -BackgroundShade 2
                        $rpt += Get-HTMLContentOpen -HeaderText "Example"
                              $rpt += Get-HTMLContentText -Heading "Sortable Headers" -Detail 'Simple Tables are sortable click the header'
							  $rpt += Get-HTMLContentText -Heading "Code" -Detail (Get-HTMLcodeblock -style powershell -code $TableCode1)
                        $rpt += Get-HTMLContentClose  
                        $rpt +=  $TableExample1
                  $rpt += Get-HTMLContentClose
            
				#GROUPED      
                  $rpt += Get-HTMLContentOpen -HeaderText "Grouped Example" -BackgroundShade 2
                        $rpt += Get-HTMLContentOpen -HeaderText "Example"
                              $rpt += Get-HTMLContentText -Heading "Using Expressions" -Detail 'If you want to rename your column header or use calculated columns you can use expressions.  <br> @{Name="Virtual Memory Size";Expression={$_.VirtualMemorySize  / 1Kb }' 
                              $rpt += Get-HTMLContentText -Heading "Code" -Detail (Get-HTMLcodeblock -style powershell -code $TableCode2)
                        $rpt += Get-HTMLContentClose  
                        $rpt +=  $TableExample2
                  $rpt += Get-HTMLContentClose
				  
				  #fixed width
				   $rpt += Get-HTMLContentOpen -HeaderText "Fixed Width" -BackgroundShade 2
                        $rpt += Get-HTMLContentOpen -HeaderText "Example"
                              $rpt += Get-HTMLContentText -Heading "Column Width" -Detail 'Sometimes you may be display data and the column will dynamically shift.  You can use the -fixed switch' 
                              $rpt += Get-HTMLContentText -Heading "Code" -Detail (Get-HTMLcodeblock -style powershell -code $TableCode3)
                        $rpt += Get-HTMLContentClose  
                        $rpt +=  $TableExample3
                  $rpt += Get-HTMLContentClose
				  
            $rpt += Get-HTMLContentClose  
      $rpt += get-htmltabcontentclose

#endregion

#region Row Colour

$TableCode4 = @'
$SampleList = get-process | select -First 20
$rpt= @()
$rpt+= Get-HtmlContentOpen -HeaderText "Processes"
$SampleListColour = Set-TableRowColor $SampleList2 -Alternating
$rpt+= Get-HtmlContentTable -ArrayOfObjects $SampleListColour 
$rpt+= Get-HtmlContentClose
'@

$SampleList2 = $process | select -First 20
$TableExample4 = @()
$TableExample4 += Get-HtmlContentOpen -HeaderText "Processes"
$SampleListColour = Set-TableRowColor $SampleList2 -Alternating
$TableExample4 += Get-HtmlContentTable -ArrayOfObjects $SampleListColour 
$TableExample4 += Get-HtmlContentClose

$ColourRow = @'
# You must use single quotes here for the expression
$Red = '$this.Handles   -ge 800'
$Yellow = '$this.Handles   -gt 200 -or $this.Handles -lt 800'
$Green = '$this.Handles  -le 200'
 
# call the function and pass the array and color expressions
$ProcessColoured = Set-TableRowColor ($process | select -first 40) -Red $Red -Yellow $Yellow -Green $Green
 
# let's just see what the function did
$ProcessColoured | select name, Handles , RowColor 
 
$rpt = @()
$rpt += Get-HtmlContentOpen -HeaderText "Process with Row Colour Logic"
$rpt += Get-HtmlContentTable  ($ProcessColoured | Sort Handles) 
$rpt += Get-HtmlContentClose
'@

# You must use single quotes here for the expression and the work $this
$Red = '$this.Handles   -ge 400'
$Yellow = '$this.Handles   -gt 250 -or $this.Handles -lt 400'
$Green = '$this.Handles  -le 250'
 
# call the function and pass the array and color expressions
$ProcessColoured = Set-TableRowColor ($process | select -first 40) -Red $Red -Yellow $Yellow -Green $Green
 
$ProcessColouredrpt = @()
$ProcessColouredrpt += Get-HtmlContentOpen -HeaderText "Process with Row Colour Logic"
$ProcessColouredrpt += Get-HtmlContentTable ($ProcessColoured | Sort Handles)
$ProcessColouredrpt += Get-HtmlContentClose

      $Tab = 'Row Colour'
      $rpt += get-htmltabcontentopen -TabName $Tab -tabheading ' '
            $rpt += Get-HTMLContentOpen -HeaderText $Tab -BackgroundShade 2
			
				   $rpt += Get-HTMLContentOpen -HeaderText "Alternating" -BackgroundShade 2
                        $rpt += Get-HTMLContentOpen -HeaderText "Example"
                              $rpt += Get-HTMLContentText -Heading "Alternating Row Colour" -Detail 'How to set alternating row colour on an array' 
                              $rpt += Get-HTMLContentText -Heading "Code" -Detail (Get-HTMLcodeblock -style powershell -code $TableCode4)
                        $rpt += Get-HTMLContentClose  
                        $rpt +=  $TableExample4
                  $rpt += Get-HTMLContentClose
			
				$rpt += Get-HTMLContentOpen "Code"
                	  $rpt += Get-HTMLContentText -Heading "How to add colours to tables" -Detail "You can apply colours to a row using logic."
				  	$rpt += Get-HTMLContentText -Heading "Code" -Detail (get-htmlcodeblock -style PowerShell -code $ColourRow)
            	$rpt += Get-HTMLContentClose
					$rpt += $ProcessColouredrpt
			$rpt += Get-HTMLContentClose	
      $rpt += get-htmltabcontentclose
#endregion

#region HyperLinks

$HyperLinkCode1 = @'
#again this uses O but you should use 0
get-htmlcontenttext -heading "HyperLink" -Detail "URLO1https://www.azurefieldnotes.comURLO2Azure Field NotesURLO3"
'@

$HyperLinkExample1 = @()
$HyperLinkExample1 += "URL01https://www.azurefieldnotes.comURL02Azure Field NotesURL03"


$AnchorCode2 = @'
$rpt = @()
$Links = Get-HTMLContentText -Heading "Anchor Links" -Detail (( Get-HTMLAnchorLink -AnchorName "This" -AnchorText "This" ) + " | " + (Get-HTMLAnchorLink -AnchorName "Here" -AnchorText "Here"))
$rpt += $Links  
$rpt += Get-HTMLContentOpen -Anchor This
$rpt += Get-HTMLContentText -Heading "Anchor Example" -Detail "You can add anchors to HTMLContent open as well"
$rpt += Get-HTMLContentText -Heading "Anchors" -Detail "Used"
$rpt += Get-HTMLAnchor -AnchorName Here
$rpt += Get-HTMLContentClose
$rpt += $Links 
'@



$AnchorExample2 = @()
$Links = Get-HTMLContentText -Heading "Anchor Links" -Detail (( Get-HTMLAnchorLink -AnchorName "SampleTop" -AnchorText "SampleTop" ) + " | " + (Get-HTMLAnchorLink -AnchorName "SampleBottom" -AnchorText "SampleBottom"))
$AnchorExample2 += Get-HTMLContentOpen 
$AnchorExample2 += Get-HTMLContentText -Heading "Anchor Example" -Detail "You can add anchors to HTMLContent open as well"
$AnchorExample2 += Get-HTMLContentText -Heading "1 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "2 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "3 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "4 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "5 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "6 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "7 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "8 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "9 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "10 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "11 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "12 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "13 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "14 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "15 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "16 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "17 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "18 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "19 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "20 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "21 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "22 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "23 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "24 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "25 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "26 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "26.5 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "26.7 " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading ".... " -Detail " "
$AnchorExample2 += Get-HTMLContentText -Heading "30 " -Detail " "
$AnchorExample2 += Get-HTMLContentClose



# 'Tabs'
      $Tab = 'HyperLinks'
	  $rpt +=  Get-HTMLAnchor -AnchorName "SampleTop"
      $rpt += get-htmltabcontentopen -TabName $Tab -tabheading ' '
            #HyperLinks
            $rpt += Get-HTMLContentOpen -HeaderText "Adding Hyperlinks" -BackgroundShade 2
                  $rpt += Get-HTMLContentOpen -HeaderText "Code"
                        $rpt += Get-HTMLContentText -Heading "How it works" -Detail "A hyper link is uses A tags and a link with a hyperlink behind it.  <BR>  To build a hyper link we use a find and replace style.  This allows you to create a hyperlink in any data set.  <BR> To create a hyper link you need to use U R L 0 1, U R L 0 2 and U R L 0 3 as text (with no spaces).  <BR>or written with O's not 0's The format you need to follows is URLO1 HyperLink URLO2 LinkText URLO3"
                        $rpt += Get-HTMLContentText -Heading "Example" -Detail (get-htmlcodeblock -style powershell -code $HyperLinkCode1)
                  $rpt += Get-HTMLContentClose  
                  $rpt += Get-HTMLContentOpen -HeaderText "Output" -BackgroundShade 3
                        $rpt +=  get-htmlcontenttext -heading "HyperLink" -Detail "URL01https://www.azurefieldnotes.comURL02Azure Field NotesURL03"
                  $rpt += Get-HTMLContentClose
            $rpt += Get-HTMLContentClose
            
            #Anchors
            $rpt += Get-HTMLContentOpen -HeaderText "Adding Anchors and Links" -BackgroundShade 2
                  $rpt += Get-HTMLContentOpen -HeaderText "Code"
                        $rpt += Get-HTMLContentText -Heading "Example" -Detail  (get-htmlcodeblock -style powershell -code $AnchorCode2)
                  $rpt += Get-HTMLContentClose  
                  $rpt += Get-HTMLContentOpen -HeaderText "Output" -BackgroundShade 3 -Anchor "SampleTop"
                        $rpt +=  $links
						$rpt +=  $AnchorExample2
						$rpt +=  $links
                  $rpt += Get-HTMLContentClose
            $rpt += Get-HTMLContentClose
			$rpt +=  Get-HTMLAnchor -AnchorName "SampleBottom"
      $rpt += get-htmltabcontentclose

#endregion

#region Charts

$ChartCode1 =@'
$Process = Get-Process
$PieProcess = $process | group ProcessName | sort count -Descending |select -First 5

$PieObject = Get-HTMLPieChartObject

$rpt = @()
$rpt += Get-HTMLOpenpage
	$rpt += Get-HTMLContentOpen	 -HeaderText "Simple Example"
		$rpt += Get-HTMLPieChart -ChartObject $PieObject -DataSet $PieProcess 
	$rpt += Get-HTMLContentClose
$rpt += Get-HTMLClosePage

save-htmlreport -reportcontent $rpt -showreport 
'@
$PieProcess = $process | group Name | sort count -Descending |select -First 5
$ChartExample1 = @()
$ChartExample1 += Get-HTMLContentOpen -HeaderText "Simple Example"
$PieObject = Get-HTMLPieChartObject
$ChartExample1 += Get-HTMLPieChart -ChartObject $PieObject -DataSet $PieProcess 
$ChartExample1 += Get-HTMLContentClose

$ChartCode2 =@'
$Process = Get-Process
$PieProcess2 = $process | group ProcessName | sort count -Descending |select -First 5

#basic Properties 
$PieObject2 = Get-HTMLPieChartObject
$PieObject2.Title = "Top Processes"
$PieObject2.Size.Height =250
$PieObject2.Size.width =250
$PieObject2.ChartStyle.ChartType = 'doughnut'

#These file exist in the module directoy, There are 4 schemes by default
$PieObject2.ChartStyle.ColorSchemeName = "ColorScheme4"
#There are 8 generated schemes, randomly generated at runtime 
$PieObject2.ChartStyle.ColorSchemeName = "Generated8"
#you can also ask for a random scheme.  Which also happens if you have too many records for the scheme
$PieObject2.ChartStyle.ColorSchemeName = 'Random'

#Data defintion you can reference any column from name and value from the  dataset.  
#Name and Count are the default to work with the Group function.
$PieObject2.DataDefinition.DataNameColumnName ='Name'
$PieObject2.DataDefinition.DataValueColumnName = 'Count'

$rpt = @()
$rpt += Get-HTMLopenpage -TitleText Title
	$rpt += Get-HTMLContentOpen -HeaderText "Advanced Example"
		$rpt += Get-HTMLPieChart -ChartObject $PieObject2 -DataSet $PieProcess 
	$rpt += Get-HTMLContentClose
$rpt += Get-HTMLclosepage

save-htmlreport -reportcontent $rpt -showreport 
'@
$ColorSchemes = Get-HTMLColorSchemes
$PieProcess = $process | group Name | sort count -Descending |select -First 5

#basic Properties 
$PieObject2 = Get-HTMLPieChartObject
$PieObject2.Title = "Top Processes"
$PieObject2.Size.Height =250
$PieObject2.Size.width =250
$PieObject2.ChartStyle.ChartType = 'doughnut'

#These file exist in the module directoy, There are 4 schemes by default
$PieObject2.ChartStyle.ColorSchemeName = "ColorScheme4"
#There are 8 generated schemes, randomly generated at runtime 
$PieObject2.ChartStyle.ColorSchemeName = "Generated8"
#you can also ask for a random scheme.  Which also happens if you have too many records for the scheme
$PieObject2.ChartStyle.ColorSchemeName = 'Random'

#Data defintion you can reference any column from name and value from the  dataset.  
#Name and Count are the default to work with the Group function.
$PieObject2.DataDefinition.DataNameColumnName ='Name'
$PieObject2.DataDefinition.DataValueColumnName = 'Count'
$ChartExample2 = @()
#$ChartExample2 += Get-HTMLopenpage -TitleText t
$ChartExample2 += Get-HTMLContentOpen -HeaderText "Advanced Example"
$ChartExample2 += Get-HTMLPieChart -ChartObject $PieObject2 -DataSet $PieProcess 
$ChartExample2 += Get-HTMLContentClose
#$ChartExample2 += Get-HTMLclosepage
#save-htmlreport -reportcontent $ChartExample2 -showreport 

$ChartCode3 =@'
$Process = Get-Process
$BarProcess = $process | group Name | sort count -Descending |select -First 10

$ChartExample3 = @()
$ChartExample3 += Get-HTMLContentOpen -HeaderText "Simple Bar Example"
$BarObject = Get-HTMLBarChartObject
$ChartExample3 += Get-HTMLBarChart -ChartObject $BarObject -DataSet $BarProcess 
$ChartExample3 += Get-HTMLContentClose

save-htmlreport -reportcontent $rpt -showreport 
'@
$BarProcess = $process | group Name | sort count -Descending |select -First 8
$ChartExample3 = @()
$ChartExample3 += Get-HTMLContentOpen -HeaderText "Simple Bar Example"
$BarObject = Get-HTMLBarChartObject
$BarObject.ChartStyle.legendPosition = 'none'
$ChartExample3 += Get-HTMLBarChart -ChartObject $BarObject -DataSet $BarProcess 
$ChartExample3 += Get-HTMLContentClose


      $Tab = 'Charts'
      $rpt += get-htmltabcontentopen -TabName $Tab -tabheading ' '
            $rpt += Get-HTMLContentOpen -HeaderText $Tab 
                $rpt += Get-HTMLContentText -Heading "Chart JS" -detail "Rather than reinvent charting and because we wanted to be able to generate charts in Azure Automation I used Chart JS"
				$rpt += Get-HTMLContentText -Heading "Chart JS Project" -detail "URL01http://www.chartjs.org/URL02Chart JS SiteURL03 Simple HTML5 charts using the canvas element."
				$rpt += Get-HTMLContentText -Heading "Possiblities" -detail "I will explain a few example and how the chart bject works for rapid creation however you can always create your own chart code and add it"
			$rpt += Get-HTMLContentClose
			$rpt += Get-HTMLContentOpen -HeaderText 'Charts' -BackgroundShade 3
				$rpt += Get-HTMLContentOpen -HeaderText "Code"
					$rpt += Get-HTMLContentText -Heading "Simple Example" -Detail (get-htmlcodeblock -style powershell -code $ChartCode1)
				$rpt += Get-HTMLContentClose  
                $rpt += Get-HTMLContentOpen -HeaderText "Output" -BackgroundShade 2
					$rpt +=  $ChartExample1
                $rpt += Get-HTMLContentClose
			
				$rpt += Get-HTMLContentOpen -HeaderText "Code"
					$rpt += Get-HTMLContentText -Heading "Advanced Example" -Detail (get-htmlcodeblock -style powershell -code $ChartCode2)
				$rpt += Get-HTMLContentClose  
                $rpt += Get-HTMLContentOpen -HeaderText "Output" -BackgroundShade 2
                    $rpt +=  $ChartExample2
                $rpt += Get-HTMLContentClose
			
				$rpt += Get-HTMLContentOpen -HeaderText "Code"
					$rpt += Get-HTMLContentText -Heading "Bar Chart Example" -Detail (get-htmlcodeblock -style powershell -code $ChartCode3)
				$rpt += Get-HTMLContentClose  
                $rpt += Get-HTMLContentOpen -HeaderText "Output" -BackgroundShade 2
                    $rpt +=  $ChartExample3
                $rpt += Get-HTMLContentClose
			
			$rpt += Get-HTMLContentClose
			
      $rpt += get-htmltabcontentclose
#endregion

#region Javascript
      $Tab = 'JavaScript'
      $rpt += get-htmltabcontentopen -TabName $Tab -tabheading ' '
            $rpt += Get-HTMLContentOpen -HeaderText 'The Basics' 
                  $rpt += Get-HTMLContentText -Heading "Scripts" -detail "There are a couple of scripts that are located in the module directory.<BR>These scripts are loaded when you run Get-HTMLopenpage. <BR>you can use Get-HTMLJavaScripts to retrieve them . What this means though<BR>is that you can simply drop your own javascripts into the directory, <BR>or use the function to point at another directory and load custom code."
            $rpt += Get-HTMLContentClose
      $rpt += get-htmltabcontentclose
#endregion

#region HTML


$SampleCode=@'
$Tab = 'JavaScript'
  $rpt += get-htmltabcontentopen -TabName $Tab -tabheading ' '
        $rpt += Get-HTMLContentOpen -HeaderText 'The Basics' 
              $rpt += Get-HTMLContentText -Heading "Scripts" -detail "There are a couple of scripts that are located in the module directory"
        $rpt += Get-HTMLContentClose
  $rpt += get-htmltabcontentclose
'@


$CodeBlock =@'

    $SampleCode=@'
    $Tab = 'JavaScript'
      $rpt += get-htmltabcontentopen -TabName $Tab -tabheading ' '
            $rpt += Get-HTMLContentOpen -HeaderText 'The Basics' 
                  $rpt += Get-HTMLContentText -Heading "Scripts" -detail "There are a couple of scripts that are located in the module directory"
            $rpt += Get-HTMLContentClose
      $rpt += get-htmltabcontentclose
    '@

    $rpt += Get-HTMLContentText -Heading "PowerShell Function" -detail (get-htmlcodeblock -style powershell -code $SampleCode)


'@
$FunctionBlock=@'
Function Get-HTMLCodeBlock
{
	[CmdletBinding()]
	Param 
	(
		[Parameter(Mandatory=$true)]
        [String]
        $Code,
		[Parameter(Mandatory=$false)]
        [String]
        $Style = 'PowerShell'
	)
	$CodeBlock = @()
	switch ($Style) {
		'PowerShell'
		{
			$CodeBlock += '<pre class="PowerShell">'
		}
		'othercodestyleneedsACSSStyle'
		{
			$CodeBlock += '<pre class="PowerShell">'
		}
		default 
		{
			$CodeBlock += '<pre>'
		}
	}
	
	$CodeBlock  += $Code
	$CodeBlock  += '</pre>'
	[string]$CodeBlock = $CodeBlock
	Write-Output $CodeBlock
}
'@




      $Tab = 'HTML'
      $rpt += get-htmltabcontentopen -TabName $Tab -tabheading ' '
            $rpt += Get-HTMLContentOpen -HeaderText 'Custom HTML' 
                  $rpt += Get-HTMLContentText -Heading "HTML" -detail "You can use any html tags and code and add it directy to the Report array"
				  $rpt += Get-HTMLContentText -Heading "Tags in text" -detail "you can use things like < B R ><br> for example in a string for a break"
            $rpt += Get-HTMLContentClose
			$rpt += Get-HTMLContentOpen -HeaderText 'Consume other HTML Fucntions' 
                  $rpt += Get-HTMLContentText -Heading "Convertto-advhtml" -detail " you can trying using this cmdlet URL01https://thesurlyadmin.com/2014/02/27/convertto-advhtml-new-advanced-function-for-html-reporting/URL02ConvertTo-AdvHTML'"
				  $rpt += Get-HTMLContentText -Heading "Adding it to the array" -detail 'just keep adding it to $rpt += $newcode'
            $rpt += Get-HTMLContentClose
			$rpt += Get-HTMLContentOpen -HeaderText 'Creating Custom functions' 
                  $rpt += Get-HTMLContentText -Heading "Get-HTMLCodeBlock" -detail "To create this help file I just created get-htmlcodeblock so I could use the < PRE > HTML tag.  <BR>I decided that I would pass the code block into the function and choose a style and wrap the code in the tags<BR>I had to add a CSS style to the CSS file to support this function"
				  $rpt += Get-HTMLContentText -Heading "PowerShell Function" -detail (get-htmlcodeblock -style powershell -code $FunctionBlock)
				  $rpt += Get-HTMLContentText -Heading "PowerShell Code" -detail (get-htmlcodeblock -style powershell -code $CodeBlock)
				  $rpt += Get-HTMLContentText -Heading "Output" -Detail (get-htmlcodeblock -style powershell -code $SampleCode)
				  
            $rpt += Get-HTMLContentClose
      $rpt += get-htmltabcontentclose
#endregion

#region Functions
      $FunctionList = @()
      $FunctionList  += Get-Functions -path $ModulePath

      $Tab = 'Functions'
      $rpt += get-htmltabcontentopen -TabName $Tab -tabheading ' '
      $rpt += Get-HTMLAnchor -AnchorName "Top"
            $rpt += Get-HtmlContentOpen -HeaderText "Available Functions "  
                  $rpt += ($FunctionList | % { (Get-HTMLAnchorLink -AnchorName $_.FunctionName -AnchorText $_.FunctionName ) + '<BR>'} )
            $rpt += Get-HtmlContentclose
                  $rpt += Get-HtmlContentOpen -HeaderText "Functions with Parameters" -BackgroundShade 2
                  foreach ($function in ( $FunctionList | sort FunctionName)){
                        $rpt += Get-HTMLAnchorlink -AnchorName Top -AnchorText 'Back To Function List'
                        $Params = @(Get-Parameters -Cmdlet $function.FunctionName)
                        $rpt += get-HTMLAnchor -Anchor $function.FunctionName
                        if ($Params.count -gt 0) {
                              $rpt += Get-HtmlContentOpen  -HeaderText ($function.FunctionName)
                              $FunctionHelp = Get-Help $function.FunctionName
                              $rpt += Get-HTMLContentText -Heading "Name" -Detail ($FunctionHelp.Name)
                              $rpt += Get-HTMLContentText -Heading "Synopsis" -Detail ($FunctionHelp.synopsis)
                              $rpt += Get-HTMLContentText -Heading "Remarks" -Detail ($FunctionHelp.Remarks)
                              $rpt += Get-HTMLContentText -Heading "Examples" -Detail ($FunctionHelp.Examples)
                                    $rpt += Get-HtmlContentOpen -HeaderText 'Functions Parameters'
                                          $rpt += Get-HtmlContentTable (Set-TableRowColor ($Params | select ParameterSet, Name ,Type ,IsMandatory  ,Pipeline ) -Alternating ) -GroupBy ParameterSet -Fixed 
                                    $rpt += Get-HtmlContentclose
                              $rpt += Get-HtmlContentclose
                        }
                  }
                $rpt += Get-Htmlcontentclose
            $rpt += get-htmltabcontentclose
      $rpt += get-htmltabcontentclose

#Endregion
   
#Region End Report function

      $Helpfile = Save-HTMLReport -ReportContent $rpt -ReportPath $ModulePath -ReportName Help-ReportHTML
      Write-Output $Helpfile 
}
else
{
	$Helpfile = Join-Path $ModulePath Help-ReportHTML.html
	Invoke-Item $Helpfile
}
}

#endregion

