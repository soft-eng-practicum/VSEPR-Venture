/// @desc Initialize
// The array of the textbox

message[0] = "This message should not appear. If it does, its a bug";

// Letter variables
message_current = 0;
message_end = 1;
message_draw = "";
message_speed = 0.5;
characters = 0;

// get the number of characters in the first message
message_length = string_length(message[message_current]);
