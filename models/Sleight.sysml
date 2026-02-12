package trineoHoracio {
    private import ScalarValues::*;
    private import ISQ::*;
    private import SI::*;

    // Se definen las partes del trineo

    part def estructura {
        doc /* Estructura principal del trineo. */
    }

    part def zonaDeCarga {
        doc /* Área de almacenamiento de regalos. */
        attribute capacidad : ISQ::VolumeValue;
        attribute cantidadDeRegalos : Integer;
    }

    part def base {
        doc /* Base deslizante del trineo. */
    }

    part def asiento {
        doc /* Asiento del conductor. */
    }

    part def rieles {
        doc /* Rieles para deslizamiento sobre nieve. */
    }

    part def renos {
        doc /* Definición de los renos que tiran del trineo. */
        attribute colorDeNariz : String default "negro";
        attribute numeroDePatas : Integer default = 4;
    }
}
//RETO 6 Se guarda en Git Hub, guarde el cambio e hice la actualización
