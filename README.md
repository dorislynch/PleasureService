
# react-native-pleasure-service

## Getting started

`$ npm install react-native-pleasure-service --save`

### Mostly automatic installation

`$ react-native link react-native-pleasure-service`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-pleasure-service` and add `RNPleasureService.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNPleasureService.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNPleasureServicePackage;` to the imports at the top of the file
  - Add `new RNPleasureServicePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-pleasure-service'
  	project(':react-native-pleasure-service').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-pleasure-service/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-pleasure-service')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNPleasureService.sln` in `node_modules/react-native-pleasure-service/windows/RNPleasureService.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Pleasure.Service.RNPleasureService;` to the usings at the top of the file
  - Add `new RNPleasureServicePackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNPleasureService from 'react-native-pleasure-service';

// TODO: What to do with the module?
RNPleasureService;
```
  