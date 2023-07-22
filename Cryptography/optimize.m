function zero_pad=optimize(row,col)
    if col>=row
        square_size=col;
    else
        square_size=row;
    end
    zero_pad = (square_size*square_size)-(row*col);
end