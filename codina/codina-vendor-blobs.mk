# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(LOCAL_PATH)

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_ext_camera.so:install/codina/system/lib/ste_omxcomponents/libste_ext_camera.so \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/aptina_mt9v113.dat:install/codina/system/usr/share/camera/config_file/aptina_mt9v113.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/samsung_s5k4ecgx.dat:install/codina/system/usr/share/camera/config_file/samsung_s5k4ecgx.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/samsung_s5k4ecgx_codina_liteon.dat:install/codina/system/usr/share/camera/config_file/samsung_s5k4ecgx_codina_liteon.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/siliconfile_sr030pc50.dat:install/codina/system/usr/share/camera/config_file/siliconfile_sr030pc50.dat

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/bin/gps.cer:install/codina/system/bin/gps.cer \
    $(LOCAL_PATH)/system/bin/gpsd:install/codina/system/bin/gpsd \
    $(LOCAL_PATH)/system/etc/AGPS_CA.pem:install/codina/system/etc/AGPS_CA.pem \
    $(LOCAL_PATH)/system/etc/gps.xml:install/codina/system/etc/gps.xml \
    $(LOCAL_PATH)/system/lib/hw/gps.montblanc.so:install/codina/system/lib/hw/gps.montblanc.so

# Sensors modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/hw/sensors.montblanc.so:install/codina/system/lib/hw/sensors.montblanc.so \
    $(LOCAL_PATH)/system/etc/sensors.dat:install/codina/system/etc/sensors.dat \
    $(LOCAL_PATH)/system/etc/calib.dat:install/codina/system/etc/calib.dat \
    $(LOCAL_PATH)/system/lib/libacdapi_azi.so:install/codina/system/lib/libacdapi_azi.so \
    $(LOCAL_PATH)/system/etc/param.dat:install/codina/system/etc/param.dat

# Security Daemon Modem
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/tee/cops_ta.ssw:install/codina/system/lib/tee/cops_ta.ssw \
    $(LOCAL_PATH)/system/lib/tee/custom_ta.ssw:install/codina/system/lib/tee/custom_ta.ssw \
    $(LOCAL_PATH)/system/lib/tee/libbassapp_ssw:install/codina/system/lib/tee/libbassapp_ssw \
    $(LOCAL_PATH)/system/lib/tee/smcl_ta_8500bx_secure.ssw:install/codina/system/lib/tee/smcl_ta_8500bx_secure.ssw \
    $(LOCAL_PATH)/system/lib/libcops.so:install/codina/system/lib/libcops.so
