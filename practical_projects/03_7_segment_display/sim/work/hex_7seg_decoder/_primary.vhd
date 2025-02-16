library verilog;
use verilog.vl_types.all;
entity hex_7seg_decoder is
    generic(
        common_anode_cathode: integer := 0
    );
    port(
        \in\            : in     vl_logic_vector(3 downto 0);
        o_a             : out    vl_logic;
        o_b             : out    vl_logic;
        o_c             : out    vl_logic;
        o_d             : out    vl_logic;
        o_e             : out    vl_logic;
        o_f             : out    vl_logic;
        o_g             : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of common_anode_cathode : constant is 1;
end hex_7seg_decoder;
