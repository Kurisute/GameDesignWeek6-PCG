// randomize()

// Get the tile layer map id
// var _wall_map_id = layer_tilemap_get_id("WallTiles");

// Set up grid
width_ = room_width div CELL_WIDTH;
height_ = room_height div CELL_HEIGHT;
grid_ = ds_grid_create(width_, height_);
ds_grid_set_region(grid_, 0, 0, width_, height_, VOID);

// Create the controller
var _controller_x = width_ div 2
var _controller_y = height_ div 2
var _controller_direction = irandom(3);
var _steps = 400;

var _direction_change_odds = 1;

repeat (_steps) {
	grid_[# _controller_x, _controller_y] = FLOOR;
	
	// Randomize the direction
	if (irandom(_direction_change_odds) == _direction_change_odds) {
		_controller_direction = irandom(3);
	}
	
	// Move the controller
	var _x_direction = lengthdir_x(1, _controller_direction * 90);
	var _y_direction = lengthdir_y(1, _controller_direction * 90);
	_controller_x += _x_direction;
	_controller_y += _y_direction;
	
	// Make sure we dont't go outside the grid
	if (_controller_x < 2 || _controller_x >= width_ -2) {
		_controller_x += -_x_direction * 2;
	}
	if (_controller_y < 2 || _controller_y >= height_ -2) {
		_controller_y += -_y_direction * 2;
	}
}

for (var _y = 1; _y < height_-1; _y++) {
	for (var _x = 1; _x < width_-1; _x++) {
		if (grid_[# _x, _y] != FLOOR) {
		    var _north_tile = grid_[# _x, _y-1] == VOID;
			var _west_tile = grid_[# _x-1, _y] == VOID;
			var _east_tile = grid_[# _x+1, _y] == VOID;
			var _south_tile = grid_[# _x, _y+1] == VOID;
			
			var _tile_index = NORTH*_north_tile + WEST*_west_tile + EAST*_east_tile + SOUTH*_south_tile + 1;
			if (_tile_index == 1) {
				grid_[# _x, _y] =FLOOR
			}
		}
	}
}
	
for (var _y = 0; _y < height_; _y++) {
	for (var _x = 0; _x < width_; _x++) {
		if (_x == 0 || _x == 28 || _y == 0 || _y == 28) {
			//tilemap_set(_wall_map_id, 4, _x, _y);
			instance_create_layer(_x * CELL_WIDTH, _y * CELL_HEIGHT, "level", obj_wall);
		} else if (_x mod 2 == 0 && _y mod 2 == 0) {
			//tilemap_set(_wall_map_id, 4, _x, _y);
			instance_create_layer(_x * CELL_WIDTH, _y * CELL_HEIGHT, "level", obj_wall);
		} else if (grid_[# _x, _y] == FLOOR) {
			
			if (!irandom(19)) { // 1 in 20 chance of item appearing
				switch (irandom(3)) {
					case 0: newitem = obj_BombPlus; break;
					case 1: newitem = obj_Boots; break;
					case 2: newitem = obj_Burger; break;
					case 3: newitem = obj_Power; break;
				}
				instance_create_layer(_x * CELL_WIDTH, _y * CELL_HEIGHT, "items", newitem);
			}

		} else if (!((_x < 3 || _x > 25) && (_y < 3 || _y > 25))) {
			//tilemap_set(_wall_map_id, 1, _x, _y);
			instance_create_layer(_x * CELL_WIDTH, _y * CELL_HEIGHT, "level", obj_breakable);
			if (!irandom(3)) { // 1 in 4 chance of item appearing
				switch (irandom(3)) {
					case 0: newitem = obj_BombPlus; break;
					case 1: newitem = obj_Boots; break;
					case 2: newitem = obj_Burger; break;
					case 3: newitem = obj_Power; break;
				}
				instance_create_layer(_x * CELL_WIDTH, _y * CELL_HEIGHT, "items", newitem);
			}
			
		}
	}
}
	
	
	
	
	