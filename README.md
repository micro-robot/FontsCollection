# FontsCollection
The custom fonts collection.

#Usage

1. Drag the `*.ttf` file to project.

2. Add

```objectivec
	<key>UIAppFonts</key>
	<array>
        <string>Calibri Regular.ttf</string>
        <string>Calibri Bold.ttf</string>
        <string>Calibri Italic.ttf</string>
        <string>Calibri Bold Italic.ttf</string>
        <string>calibril.ttf</string>
        <string>calibrili.ttf</string>
        <string>cambria.ttc</string>
        <string>Cambriab.ttf</string>
        <string>Cambriai.ttf</string>
        <string>Cambriaz.ttf</string>
        <string>CENTURY.ttf</string>
        <string>Corbel.ttf</string>
        <string>himalaya.ttf</string>
        <string>monbaiti.ttf</string>
        <string>MS Mincho.ttf</string>
        <string>msyi.ttf</string>
        <string>MTEXTRA.ttf</string>
        <string>symbol.ttf</string>
        <string>tahoma.ttf</string>
        <string>webdings.ttf</string>
        <string>Wingdings.ttf</string>
        <string>Wingdings 2.ttf</string>
        <string>Wingdings 3.ttf</string>
    </array>
```
to `Info.plist`.

3. Set the `UILabel` font.

```objectivec
[textLabel setFont:[UIFont fontWithName:@"Cambria-Bold" size:15.f]];
```
