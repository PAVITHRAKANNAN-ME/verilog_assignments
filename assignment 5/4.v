4. Which of the statements will execute from the below snippet &amp; justify the behavior?
reg c = 3’b00x;
always@(*)
begin
casex( c )
3’b000:st1;
3’b100:st2;
3’b001 : st3;
endcase
end

//Answer - st1 will excute.
