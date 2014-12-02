{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Bindings.CEF3.Internal.CefTypesMac where
#strict_import

#include "include/internal/cef_build.h"
#if defined(OS_MACOSX)

#include <bindings.dsl.h>
#include "include/internal/cef_types_mac.h"

import Foreign.Ptr
import Bindings.CEF3.Internal.CefString

#opaque_t NSCursor
#opaque_t NSEvent
#opaque_t NSView
#opaque_t NSTextInputContext


#synonym_t cef_cursor_handle_t, Ptr <NSCursor>
#synonym_t cef_event_handle_t,  Ptr <NSEvent>
#synonym_t cef_window_handle_t, Ptr <NSView>
#synonym_t cef_text_input_context_t, Ptr <NSTextInputContext>

#pointer kNullCursorHandle
#pointer kNullEventHandle
#pointer kNullWindowHandle

#starttype cef_main_args_t
#field argc, CInt
#field argv, Ptr CString
#stoptype


{- typedef struct _cef_window_info_t {
  cef_string_t window_name;
  int x;
  int y;
  int width;
  int height;
  int hidden;
  cef_window_handle_t parent_view; // NSView pointer for the parent view.
  int windowless_rendering_enabled;
  int transparent_painting_enabled;
  cef_window_handle_t view; // NSView pointer for the new browser view. Only used with windowed rendering.
} cef_window_info_t; -}
#starttype cef_window_info_t
#field window_name, <cef_string_t>
#field x, CInt
#field y, CInt
#field width, CInt
#field hidden, CInt
#field parent_view, <cef_window_handle_t>
#field windowless_rendering_enabled, CInt
#field transparent_painting_enabled, CInt
#field view, <cef_window_handle_t>
#stoptype

#endif // OS_MACOSX
