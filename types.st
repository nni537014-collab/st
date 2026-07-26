
TYPE Point :
    STRUCT
        X : LREAL;
        Y : LREAL;
    END_STRUCT
END_TYPE

TYPE BallColour :
    (
        RED,
        YELLOW,
        WHITE,
        BLACK
    );
                       
END_TYPE
TYPE BallPoint :
    STRUCT
        point : Point;
        colour : BallColour;
    END_STRUCT
END_TYPE

