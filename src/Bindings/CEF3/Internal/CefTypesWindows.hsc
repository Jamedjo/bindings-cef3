{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>

module Bindings.CEF3.Internal.CefTypesWindows where
#strict_import
import Foreign.Ptr
import Bindings.CEF3.Internal.CefString

#include "include/internal/cef_build.h"
#if defined(OS_WIN)

#include "include/internal/cef_string.h"
#include "include/internal/cef_types_win.h"

#opaque_t HCURSOR
#opaque_t MSG
#opaque_t HWND

#synonym_t cef_cursor_handle_t, Ptr <HCURSOR>
#synonym_t cef_event_handle_t,  Ptr <MSG>
#synonym_t cef_window_handle_t, Ptr <HWND>
#synonym_t cef_text_input_context_t, Ptr ()

#pointer kNullCursorHandle
#pointer kNullEventHandle
#pointer kNullWindowHandle

#opaque_t HINSTANCE

#starttype cef_main_args_t
#field instance, Ptr <HINSTANCE>
#stoptype

#opaque_t DWORD
#opaque_t HMENU

#starttype cef_window_info_t
#field ex_style, Ptr <DWORD>
#field window_name, <cef_string_t>
#field style, Ptr <DWORD>
#field x, CInt
#field y, CInt
#field width, CInt
#field height, CInt
#field parent_window, Ptr <HWND>
#field menu, Ptr <HMENU>
#field windowless_rendering_enabled, CInt
#field transparent_painting_enabled, CInt
#field window, Ptr <HWND>
#stoptype

#endif // OS_WIN
