
TYPE Point :
    STRUCT
        X : LREAL;
        Y : LREAL;
    END_STRUCT
END_TYPE

TYPE BallColour
    (
        RED;
        YELLOW;
        WHITE;
        BLACK
    ) uint;
                       
END_TYPE
TYPE BallPoint :
    STRUCT
        point : Point;
        colour : BallColour;
    END_STRUCT
END_TYPE

