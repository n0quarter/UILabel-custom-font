UILabel-custom-font
===================

This class is a category for customizing `UILabel` font.
By default used nice custom font `Corradine Fonts - Neuron` for plain text 
and `Corradine Fonts - NeuronHeavy` for Bold, but you can easily change it.

The advantage of this solution is that you can change font of all UILabels in your project, 
but disadvantage - this doesn't change SOME of your UILabels, it change ALL of your `UILabel`'s.

## Usage

Just add files to your project and it will magically work :)
All of your UILabels will have custom font.

You can simple change in Interface Builder font of any of your UILabels from `System` to `System Bold` and actual font will be changed from `Neuron` to `NeuronHeavy`.
(or your custom fonts, if you make simple changes to the code)

If you need your own custom fonts do next steps:
* Add your fonts to the project
* Use this code to detect your actual font family:
```objective-c
for (NSString *name in [UIFont familyNames]) {
        NSLog(@"Family name : %@", name);
        for (NSString *font in [UIFont fontNamesForFamilyName:name]) {
            NSLog(@"Font name : %@", font);
        }
    }
```    
* Go to `UILabel+font.m` and change this lines
```objective-c
#define BoldFontName  @"NeuronHeavy"
#define PlainFontName @"Neuron"
```
with your custom font names.

## Good Luck !
