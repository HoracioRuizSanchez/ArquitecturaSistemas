package sleighHoracio {
    private import ScalarValues::*;
    private import ISQ::*;
    private import SI::*;

    // Sleigh parts definition

    part def sleighHoracio {
        part structure {
            doc
            /* Main structure of the sleigh. */
        }

        part cargoArea {
            doc
            /* Gift storage area. */
            attribute capacity : ISQ::VolumeValue;
            attribute numberOfGifts : Integer;
        }

        part base {
            doc
            /* Sliding base of the sleigh. */
        }

        part seat {
            doc
            /* Driver's seat. */
        }

        part runners {
            doc
            /* Runners for sliding on snow. */
        }

        part def Reindeer {
            doc
            /* Definition of the reindeer that pull the sleigh. */
            attribute name : String;
            attribute noseColor : String default "black";
            attribute numberOfLegs : Integer default 4;
            attribute weight : ISQ::MassValue default 150.0 [kg];
            attribute maxSpeed : ISQ::SpeedValue default 50.0 [km/h];
            attribute canFly : Boolean default true;
        }

        // Santa's nine reindeer
        part dasher : Reindeer {
            attribute :>> name = "Dasher";
        }
        part dancer : Reindeer {
            attribute :>> name = "Dancer";
        }
        part prancer : Reindeer {
            attribute :>> name = "Prancer";
        }
        part vixen : Reindeer {
            attribute :>> name = "Vixen";
        }
        part comet : Reindeer {
            attribute :>> name = "Comet";
        }
        part cupid : Reindeer {
            attribute :>> name = "Cupid";
        }
        part donner : Reindeer {
            attribute :>> name = "Donner";
        }
        part blitzen : Reindeer {
            attribute :>> name = "Blitzen";
        }
        part rudolph : Reindeer {
            attribute :>> name = "Rudolph";
            attribute :>> noseColor = "red";
        }

        part reindeerHarness {
            doc
            /* The reins that Santa uses to guide the reindeer */
            attribute length : ISQ::LengthValue default 4 [m];
            attribute material : String default "leather";
        }
    }
}
// CHALLENGE 6: Saved to GitHub, changes committed and updated
// Saved