package SantaSleighSystemExtended {
    private import ScalarValues::*;
    private import ISQ::*;
    private import SI::*;

    // Color enumeration for sleigh and reindeer parts
    enum def ColorEnum {
        red;
        black;
        orange;
        gold;
        white;
        brown;
    }

    // ========================================
    // REINDEER DEFINITION
    // ========================================

    part def sleighHoracio {
        doc
        /* Santa's magical sleigh with all its components and subsystems. */

        part structure {
            doc
            /* Main structural frame of the sleigh that holds everything together. */
            attribute color : ColorEnum default ColorEnum::red;
        }

        part cargoArea {
            doc
            /* Gift storage area where all the presents are kept during delivery. */
            attribute capacity : ISQ::VolumeValue;
            attribute numberOfGifts : Integer;
            attribute color : ColorEnum default ColorEnum::black;
        }

        part base {
            doc
            /* Sliding base of the sleigh that provides stability. */
            attribute color : ColorEnum default ColorEnum::orange;
        }

        part seat {
            doc
            /* Driver's seat where Santa sits to guide the sleigh. */
            attribute color : ColorEnum default ColorEnum::red;
        }

        part runners {
            doc
            /* Runners for sliding smoothly on snow and through the air. */
            attribute color : ColorEnum default ColorEnum::gold;
        }

        part reindeerHarness {
            doc
            /* The reins that Santa uses to guide and control the reindeer team. */
            attribute length : ISQ::LengthValue default 4 [m];
            attribute material : String default "leather";
        }
    }

    part def Reindeer {
        doc
        /* Definition of the magical reindeer that pull Santa's sleigh.
         * Each reindeer has specific characteristics including the ability to fly.
         */

        attribute name : String;
        attribute noseColor : ColorEnum default ColorEnum::black;
        attribute numberOfLegs : Integer default 4;
        attribute weight : ISQ::MassValue default 150.0 [kg];
        attribute maxSpeed : ISQ::SpeedValue default 50.0 [km / h];
        attribute canFly : Boolean default true;

        // ========================================
        // REINDEER TEAM
        // ========================================

        part reindeerTeam {
            doc
            /* The team of nine reindeer that pull the sleigh through the sky. */

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
                attribute :>> noseColor = ColorEnum::red;
            }
        }
    }
}

// CHALLENGE 6: Saved to GitHub, changes committed and updated
