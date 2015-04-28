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

#include "CfgEventHandlers.hpp"
#include "CfgFunctions.hpp"

// DATA
#include <data\UPM_Cities.hpp>