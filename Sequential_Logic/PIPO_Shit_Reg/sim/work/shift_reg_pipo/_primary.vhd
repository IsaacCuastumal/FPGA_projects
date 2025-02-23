library verilog;
use verilog.vl_types.all;
entity shift_reg_pipo is
    port(
        reset_n         : in     vl_logic;
        clk             : in     vl_logic;
        d               : in     vl_logic_vector(3 downto 0);
        q               : out    vl_logic_vector(3 downto 0)
    );
end shift_reg_pipo;
