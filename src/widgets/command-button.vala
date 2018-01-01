/*
 * This file is part of Haguichi, a graphical frontend for Hamachi.
 * Copyright (C) 2007-2018 Stephen Brandt <stephen@stephenbrandt.com>
 *
 * Haguichi is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published
 * by the Free Software Foundation, either version 3 of the License,
 * or (at your option) any later version.
 */

using Gtk;

public class CommandButton : Button
{
    public CommandButton (string _label, string command_ipv4, string command_ipv6, string _priority)
    {
        label = _(_label);
        halign = Align.CENTER;
        
        set_use_underline (true);
        
        clicked.connect (() =>
        {
            Command.execute (Command.return_custom ((Member) Haguichi.window.network_view.last_member, command_ipv4, command_ipv6, _priority));      
        });
    }
}
