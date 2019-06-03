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
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_ext_camera.so:install/janice/system/lib/ste_omxcomponents/libste_ext_camera.so \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/aptina_mt9v113.dat:install/janice/system/usr/share/camera/config_file/aptina_mt9v113.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/dongbu_db8131m.dat:install/janice/system/usr/share/camera/config_file/dongbu_db8131m.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/omnivision_ov5640_pri.dat:install/janice/system/usr/share/camera/config_file/omnivision_ov5640_pri.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/omnivision_ov5640_pri_30fps.dat:install/janice/system/usr/share/camera/config_file/omnivision_ov5640_pri_30fps.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/omnivision_ov5640_sec.dat:install/janice/system/usr/share/camera/config_file/omnivision_ov5640_sec.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/samsung_s5k4ecgx.dat:install/janice/system/usr/share/camera/config_file/samsung_s5k4ecgx.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/samsung_s5k4ecgx_codina_liteon.dat:install/janice/system/usr/share/camera/config_file/samsung_s5k4ecgx_codina_liteon.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/samsung_s5k4ecgx_golden.dat:install/janice/system/usr/share/camera/config_file/samsung_s5k4ecgx_golden.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/samsung_s5k4ecgx_janice.dat:install/janice/system/usr/share/camera/config_file/samsung_s5k4ecgx_janice.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/samsung_s5k4ecgx_kyle.dat:install/janice/system/usr/share/camera/config_file/samsung_s5k4ecgx_kyle.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/samsung_s5k4ecgx_rev00.dat:install/janice/system/usr/share/camera/config_file/samsung_s5k4ecgx_rev00.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/samsung_s5k4ecgx_ricco.dat:install/janice/system/usr/share/camera/config_file/samsung_s5k4ecgx_ricco.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/samsung_s5k6aafx13.dat:install/janice/system/usr/share/camera/config_file/samsung_s5k6aafx13.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/samsung_s5k6aafx13_rev00.dat:install/janice/system/usr/share/camera/config_file/samsung_s5k6aafx13_rev00.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/siliconfile_sr030pc50.dat:install/janice/system/usr/share/camera/config_file/siliconfile_sr030pc50.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/siliconfile_sr030pc50_codina_tmo.dat:install/janice/system/usr/share/camera/config_file/siliconfile_sr030pc50_codina_tmo.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/siliconfile_sr030pc50_hendrix.dat:install/janice/system/usr/share/camera/config_file/siliconfile_sr030pc50_hendrix.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/siliconfile_sr030pc50_kyle.dat:install/janice/system/usr/share/camera/config_file/siliconfile_sr030pc50_kyle.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/siliconfile_sr030pc50_skomer.dat:install/janice/system/usr/share/camera/config_file/siliconfile_sr030pc50_skomer.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/sony_isx006.dat:install/janice/system/usr/share/camera/config_file/sony_isx006.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/sony_isx012.dat:install/janice/system/usr/share/camera/config_file/sony_isx012.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/sony_isx012_hendrix.dat:install/janice/system/usr/share/camera/config_file/sony_isx012_hendrix.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/sony_isx012_skomer.dat:install/janice/system/usr/share/camera/config_file/sony_isx012_skomer.dat

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/hw/gps.montblanc.so:install/janice/system/lib/hw/gps.montblanc.so \
    $(LOCAL_PATH)/system/bin/gps.cer:install/janice/system/bin/gps.cer \
    $(LOCAL_PATH)/system/etc/gps.xml:install/janice/system/etc/gps.xml \
    $(LOCAL_PATH)/system/etc/AGPS_CA.pem:install/janice/system/etc/AGPS_CA.pem

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/hw/sensors.montblanc.so:install/janice/system/lib/hw/sensors.montblanc.so \
    $(LOCAL_PATH)/system/lib/libmllite.so:install/janice/system/lib/libmllite.so \
    $(LOCAL_PATH)/system/lib/libmlplatform.so:install/janice/system/lib/libmlplatform.so \
    $(LOCAL_PATH)/system/lib/libmpl.so:install/janice/system/lib/libmpl.so \
    $(LOCAL_PATH)/system/lib/libmplmpu.so:install/janice/system/lib/libmplmpu.so \
    $(LOCAL_PATH)/system/etc/calib.dat:install/janice/system/etc/calib.dat \
    $(LOCAL_PATH)/system/etc/param.dat:install/janice/system/etc/param.dat \
    $(LOCAL_PATH)/system/etc/sensors.dat:install/janice/system/etc/sensors.dat

# Security Daemon Modem
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/tee/cops_ta.ssw:install/janice/system/lib/tee/cops_ta.ssw \
    $(LOCAL_PATH)/system/lib/tee/custom_ta.ssw:install/janice/system/lib/tee/custom_ta.ssw \
    $(LOCAL_PATH)/system/lib/tee/libbassapp_ssw:install/janice/system/lib/tee/libbassapp_ssw \
    $(LOCAL_PATH)/system/lib/tee/smcl_ta_8500bx_secure.ssw:install/janice/system/lib/tee/smcl_ta_8500bx_secure.ssw \
    $(LOCAL_PATH)/system/lib/libcops.so:install/janice/system/lib/libcops.so \
    $(LOCAL_PATH)/system/lib/libtee.so:install/janice/system/lib/libtee.so
