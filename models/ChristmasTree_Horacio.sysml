package Challenge01_Christmastree {

part def Christmastree {
    doc /*Artifitial Christmas tree is an decoration used 
    as  symbol of Christmas during the holiday season*/

    part Base {
        /*It is the support that holds the entire structure of the tree*/
    }
    part trunk {
        doc /*Main structure holds branchs and needles*/

        part branches {
            doc /*Branches are the parts that supports decorations 
            an give the tree its shape and volume*/
        }
        part needles {
            /*Are the leaf like structure that gives
            the tree its green appearance and helps create a full*/
        }
    }
    
    part decorations {
        /*Elements added to a Christmas tree to enhance its appearance, 
        express celebration and convey symbolic or festive meaning*/

        part treeToppers {
            part star;
            part angel;
            part bow;
            part santafigure;
        }
        part hangingOrnament {
            /*Decorative objects designed to be suspended 
            from the branches of a Christmas tree to add 
            visual appeal*/

            part bells;
            part baubles [90] {
                attribute color1 [30]: Color = Color :: red;
                attribute color2 [30]: Color = Color :: yellow;
                attribute color3 [30]: Color = Color :: blue;
            }            
        }
        part lights {
            /*Elements used to illuminate the tree that create 
            warm of festive atmosphere */

            part String_lights;
            part Fairy_lights;
            part Icicle_lights;
        }
        part garland {
            /*Decorative stand place around the branches to add 
            texture and color enhancing the tree festive appearance*/

            part Ribbon_garland;
            part Fabric_garlands;
            part Bead_garland;
        }  
    }

    
}
    enum def Color {
        red;
        yellow;
        blue;
    }
}