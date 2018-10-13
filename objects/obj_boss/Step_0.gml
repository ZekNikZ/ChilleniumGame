// Calculate new position
bob_time++;
bob_pos = bob_amplitude * sin(2 * pi / bob_length * bob_time);

// Move to new position
y = bob_start_pos + bob_pos;