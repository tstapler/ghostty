pub const color = @import("color.zig");
pub const osc = @import("osc.zig");
pub const key_event = @import("key_event.zig");
pub const key_encode = @import("key_encode.zig");
pub const paste = @import("paste.zig");
pub const sgr = @import("sgr.zig");
pub const terminal = @import("terminal.zig");

// The full C API, unexported.
pub const osc_new = osc.new;
pub const osc_free = osc.free;
pub const osc_reset = osc.reset;
pub const osc_next = osc.next;
pub const osc_end = osc.end;
pub const osc_command_type = osc.commandType;
pub const osc_command_data = osc.commandData;

pub const color_rgb_get = color.rgb_get;

pub const sgr_new = sgr.new;
pub const sgr_free = sgr.free;
pub const sgr_reset = sgr.reset;
pub const sgr_set_params = sgr.setParams;
pub const sgr_next = sgr.next;
pub const sgr_unknown_full = sgr.unknown_full;
pub const sgr_unknown_partial = sgr.unknown_partial;
pub const sgr_attribute_tag = sgr.attribute_tag;
pub const sgr_attribute_value = sgr.attribute_value;
pub const wasm_alloc_sgr_attribute = sgr.wasm_alloc_attribute;
pub const wasm_free_sgr_attribute = sgr.wasm_free_attribute;

pub const key_event_new = key_event.new;
pub const key_event_free = key_event.free;
pub const key_event_set_action = key_event.set_action;
pub const key_event_get_action = key_event.get_action;
pub const key_event_set_key = key_event.set_key;
pub const key_event_get_key = key_event.get_key;
pub const key_event_set_mods = key_event.set_mods;
pub const key_event_get_mods = key_event.get_mods;
pub const key_event_set_consumed_mods = key_event.set_consumed_mods;
pub const key_event_get_consumed_mods = key_event.get_consumed_mods;
pub const key_event_set_composing = key_event.set_composing;
pub const key_event_get_composing = key_event.get_composing;
pub const key_event_set_utf8 = key_event.set_utf8;
pub const key_event_get_utf8 = key_event.get_utf8;
pub const key_event_set_unshifted_codepoint = key_event.set_unshifted_codepoint;
pub const key_event_get_unshifted_codepoint = key_event.get_unshifted_codepoint;

pub const key_encoder_new = key_encode.new;
pub const key_encoder_free = key_encode.free;
pub const key_encoder_setopt = key_encode.setopt;
pub const key_encoder_encode = key_encode.encode;

pub const paste_is_safe = paste.is_safe;

// Terminal lifecycle
pub const terminal_new = terminal.new;
pub const terminal_new_with_config = terminal.newWithConfig;
pub const terminal_free = terminal.free;
pub const terminal_resize = terminal.resize;
pub const terminal_write = terminal.write;

// RenderState API - high-performance rendering
pub const render_state_update = terminal.renderStateUpdate;
pub const render_state_get_cols = terminal.renderStateGetCols;
pub const render_state_get_rows = terminal.renderStateGetRows;
pub const render_state_get_cursor_x = terminal.renderStateGetCursorX;
pub const render_state_get_cursor_y = terminal.renderStateGetCursorY;
pub const render_state_get_cursor_visible = terminal.renderStateGetCursorVisible;
pub const render_state_get_bg_color = terminal.renderStateGetBgColor;
pub const render_state_get_fg_color = terminal.renderStateGetFgColor;
pub const render_state_is_row_dirty = terminal.renderStateIsRowDirty;
pub const render_state_mark_clean = terminal.renderStateMarkClean;
pub const render_state_get_viewport = terminal.renderStateGetViewport;
pub const render_state_get_grapheme = terminal.renderStateGetGrapheme;

// Terminal modes
pub const terminal_is_alternate_screen = terminal.isAlternateScreen;
pub const terminal_has_mouse_tracking = terminal.hasMouseTracking;
pub const terminal_get_mode = terminal.getMode;

// Scrollback API
pub const terminal_get_scrollback_length = terminal.getScrollbackLength;
pub const terminal_get_scrollback_line = terminal.getScrollbackLine;
pub const terminal_get_scrollback_grapheme = terminal.getScrollbackGrapheme;
pub const terminal_is_row_wrapped = terminal.isRowWrapped;

// Response API (for DSR and other queries)
pub const terminal_has_response = terminal.hasResponse;
pub const terminal_read_response = terminal.readResponse;

test {
    _ = color;
    _ = osc;
    _ = key_event;
    _ = key_encode;
    _ = paste;
    _ = sgr;
    _ = terminal;

    // We want to make sure we run the tests for the C allocator interface.
    _ = @import("../../lib/allocator.zig");
}
