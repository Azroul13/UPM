﻿#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "upm_common"
        };
        author[] = {"UPM Team"};
        authorUrl = "https://github.com/upmod/UPM";
        versionDesc = "UPM";
        VERSION_CONFIG;
    };
};

#include "CfgVehicles.hpp"
#include "CfgEventHandlers.hpp"
#include "CfgFunctions.hpp"

#include "initUI.hpp"