# Tutorial

https://docs.bepinex.dev/articles/dev_guide/plugin_tutorial/1_setup.html

## Install BepInEx Templates

```
dotnet new -i BepInEx.Templates --nuget-source https://nuget.bepinex.dev/v3/index.json
```

## Setup Project

```
export TARGET_FRAMEWORK=net46
export UNITY_VERSION=2018.4.11
dotnet new bepinex5plugin -n MyFirstPlugin -T "${TARGET_FRAMEWORK}" -U "${UNITY_VERSION}"
```

## Plugin Settings

### Copy Plugins

- Game Install Dir
  - ${GAME_NAME}_Data\Managed\*.dll
  - BepInEx\core\*.dll

### .csproj Settings

Example

```
  <ItemGroup>
    <Reference Include="System" />
    <Reference Include="System.Core" />
    <PackageReference Include="BepInEx.PluginInfoProps" Version="1.*" />
    <Reference Include="0Harmony, Version=2.0.0.0, Culture=neutral, PublicKeyToken=null">
      <HintPath>..\..\libs\github\BepInEx\latest\BepInEx\core\0Harmony.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="BepInEx, Version=5.4.15.0, Culture=neutral, PublicKeyToken=null">
      <HintPath>..\..\libs\github\BepInEx\latest\BepInEx\core\BepInEx.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="BepInEx.Harmony, Version=2.0.0.0, Culture=neutral, PublicKeyToken=null">
      <HintPath>..\..\libs\github\BepInEx\latest\BepInEx\core\BepInEx.Harmony.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="Assembly-CSharp, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null">
      <HintPath>..\..\libs\game\GameName\Assembly-CSharp.dll</HintPath>
      <Private>False</Private>
    </Reference>
    ...
  </ItemGroup>
```
