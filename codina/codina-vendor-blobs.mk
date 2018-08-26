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

# kernel 3.1
DEVICE_ENABLE_KERNEL_3 := true
# DEVICE_ENABLE_KERNEL_4 := true
# DRM new
DEVICE_ENABLE_DRM_NEV := true
# libril
# DEVICE_LIBSECRIL_OLD := true
# DEVICE_LIB_RIL_OLD := true
# DEVICE_LIBSEC_NEW := true
# Sensors modules HAL
# DEVICE_SENSOR_MULTI_HAL := true

# Prebuilt libraries that are needed to build open-source libraries
ifeq ($(DEVICE_LIB_RIL_OLD),true)
PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/system/lib/libril.so:obj/lib/libril.so
endif

ifeq ($(DEVICE_LIBSECRIL_OLD),true)
PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/system/lib/libsecril-client.so:obj/lib/libsecril-client.so
endif

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/hw/camera.montblanc.so:codina/system/lib/hw/camera.montblanc.so \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/aptina_mt9v113.dat:codina/system/usr/share/camera/config_file/aptina_mt9v113.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/samsung_s5k4ecgx.dat:codina/system/usr/share/camera/config_file/samsung_s5k4ecgx.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/samsung_s5k4ecgx_codina_liteon.dat:codina/system/usr/share/camera/config_file/samsung_s5k4ecgx_codina_liteon.dat \
    $(LOCAL_PATH)/system/usr/share/camera/config_file/siliconfile_sr030pc50.dat:codina/system/usr/share/camera/config_file/siliconfile_sr030pc50.dat

# Mali-400
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/egl/libEGL_mali.so:codina/system/lib/egl/libEGL_mali.so \
    $(LOCAL_PATH)/system/lib/egl/libGLESv1_CM_mali.so:codina/system/lib/egl/libGLESv1_CM_mali.so \
    $(LOCAL_PATH)/system/lib/egl/libGLESv2_mali.so:codina/system/lib/egl/libGLESv2_mali.so \
    $(LOCAL_PATH)/system/lib/libMali.so:codina/system/lib/libMali.so \
    $(LOCAL_PATH)/system/lib/libUMP.so:codina/system/lib/libUMP.so

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/hw/audio.primary.montblanc.so:codina/system/lib/hw/audio.primary.montblanc.so

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/hw/audio_policy.montblanc.so:codina/system/lib/hw/audio_policy.montblanc.so \
    $(LOCAL_PATH)/system/lib/libaudiopolicy_sec.so:codina/system/lib/libaudiopolicy_sec.so \
    $(LOCAL_PATH)/system/lib/libsamsungSoundbooster.so:codina/system/lib/libsamsungSoundbooster.so \
    $(LOCAL_PATH)/system/lib/lib_SamsungRec_V01006.so:codina/system/lib/lib_SamsungRec_V01006.so \
    $(LOCAL_PATH)/system/lib/lib_Samsung_SB_AM_for_ICS_v03008.so:codina/system/lib/lib_Samsung_SB_AM_for_ICS_v03008.so \
    $(LOCAL_PATH)/system/lib/libhalaudioprocessing.so:codina/system/lib/libhalaudioprocessing.so \
    $(LOCAL_PATH)/system/lib/libsamsungRecord.so:codina/system/lib/libsamsungRecord.so \
    $(LOCAL_PATH)/system/lib/libspeech_proc_customer_plugin.so:codina/system/lib/libspeech_proc_customer_plugin.so \
    $(LOCAL_PATH)/system/lib/libspeech_processing.so:codina/system/lib/libspeech_processing.so \
    $(LOCAL_PATH)/system/lib/libste_adm.so:codina/system/lib/libste_adm.so \
    $(LOCAL_PATH)/system/lib/libste_audio_hwctrl.so:codina/system/lib/libste_audio_hwctrl.so \
    $(LOCAL_PATH)/system/lib/libste_ens_audio_common.so:codina/system/lib/libste_ens_audio_common.so \
    $(LOCAL_PATH)/system/lib/libste_ens_audio_samplerateconv.so:codina/system/lib/libste_ens_audio_samplerateconv.so \
    $(LOCAL_PATH)/system/lib/libste_ensloader.so:codina/system/lib/libste_ensloader.so \
    $(LOCAL_PATH)/system/lib/libste_audio_mixer.so:codina/system/lib/libste_audio_mixer.so

# RIL
ifeq ($(DEVICE_LIB_RIL_OLD),true)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/libril.so:codina/system/vendor/lib/libril.so \
    $(LOCAL_PATH)/system/bin/rild:codina/system/vendor/bin/hw/rild
endif

ifeq ($(DEVICE_LIBSEC_NEW),true)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/libNew/libsec-ril.so:codina/system/lib/libsec-ril.so
else
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/libsec-ril.so:codina/system/lib/libsec-ril.so
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/AT/manuf_id.cfg:codina/system/etc/AT/manuf_id.cfg \
    $(LOCAL_PATH)/system/etc/AT/model_id.cfg:codina/system/etc/AT/model_id.cfg \
    $(LOCAL_PATH)/system/etc/AT/system_id.cfg:codina/system/etc/AT/system_id.cfg

ifeq ($(DEVICE_LIBSECRIL_OLD),true)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/libsecril-client.so:codina/system/lib/libsecril-client.so
endif

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/bin/bcm4330.hcd:codina/system/bin/bcm4330.hcd

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/wifi/bcmdhd_apsta.bin:codina/system/etc/wifi/bcmdhd_apsta.bin \
    $(LOCAL_PATH)/system/etc/wifi/bcmdhd_mfg.bin:codina/system/etc/wifi/bcmdhd_mfg.bin \
    $(LOCAL_PATH)/system/etc/wifi/bcmdhd_p2p.bin:codina/system/etc/wifi/bcmdhd_p2p.bin \
    $(LOCAL_PATH)/system/etc/wifi/bcmdhd_sta.bin:codina/system/etc/wifi/bcmdhd_sta.bin \
    $(LOCAL_PATH)/system/etc/wifi/nvram_mfg.txt:codina/system/etc/wifi/nvram_mfg.txt \
    $(LOCAL_PATH)/system/etc/wifi/nvram_net.txt:codina/system/etc/wifi/nvram_net.txt

# Display
# PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/system/lib/hw/gralloc.montblanc.so:codina/system/lib/hw/gralloc.montblanc.so

# Display
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/system/lib/hw/hwcomposer.montblanc.so:codina/system/lib/hw/hwcomposer.montblanc.so \
#    $(LOCAL_PATH)/system/lib/hw/copybit.montblanc.so:codina/system/lib/hw/copybit.montblanc.so

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/bin/gps.cer:codina/system/bin/gps.cer \
    $(LOCAL_PATH)/system/bin/gpsd:codina/system/bin/gpsd \
    $(LOCAL_PATH)/system/etc/AGPS_CA.pem:codina/system/etc/AGPS_CA.pem \
    $(LOCAL_PATH)/system/etc/gps.xml:codina/system/etc/gps.xml

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/hw/gps.montblanc.so:codina/system/lib/hw/gps.montblanc.so

ifeq ($(DEVICE_ENABLE_DRM_NEV),true)
# DRM new
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/system/vendor/libdrmdecrypt.so:codina/system/lib/libdrmdecrypt.so
#    $(LOCAL_PATH)/system/vendor/libdrmmtkutil.so:codina/system/vendor/lib/libdrmmtkutil.so

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/vendor/libwvdrm_L3.so:codina/system/vendor/lib/libwvdrm_L3.so \
    $(LOCAL_PATH)/system/vendor/libwvm.so:codina/system/vendor/lib/libwvm.so \
    $(LOCAL_PATH)/system/vendor/libWVStreamControlAPI_L3.so:codina/system/vendor/lib/libWVStreamControlAPI_L3.so \
    $(LOCAL_PATH)/system/vendor/libdrmwvmplugin.so:codina/system/vendor/lib/drm/libdrmwvmplugin.so \
    $(LOCAL_PATH)/system/vendor/mediadrm/libwvdrmengine.so:codina/system/vendor/lib/mediadrm/libwvdrmengine.so
else
# DRM old
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/drm/libdrmwvmplugin.so:codina/system/lib/drm/libdrmwvmplugin.so \
    $(LOCAL_PATH)/system/lib/libwvdrm_L3.so:codina/system/lib/libwvdrm_L3.so \
    $(LOCAL_PATH)/system/lib/libwvm.so:codina/system/lib/libwvm.so \
    $(LOCAL_PATH)/system/lib/libWVStreamControlAPI_L3.so:codina/system/lib/libWVStreamControlAPI_L3.so
endif

ifeq ($(DEVICE_SENSOR_MULTI_HAL),true)
# Sensors modules HAL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/hw/sensors.montblanc.so:codina/system/vendor/lib/sensors.vendor.montblanc.so
else
# Sensors modules old
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/hw/sensors.montblanc.so:codina/system/lib/hw/sensors.montblanc.so
endif

# Sensors modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/sensors.dat:codina/system/etc/sensors.dat \
    $(LOCAL_PATH)/system/etc/calib.dat:codina/system/etc/calib.dat \
    $(LOCAL_PATH)/system/lib/libacdapi_azi.so:codina/system/lib/libacdapi_azi.so \
    $(LOCAL_PATH)/system/etc/param.dat:codina/system/etc/param.dat

# Security Daemon Modem
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/tee/cops_ta.ssw:codina/system/lib/tee/cops_ta.ssw \
    $(LOCAL_PATH)/system/lib/tee/custom_ta.ssw:codina/system/lib/tee/custom_ta.ssw \
    $(LOCAL_PATH)/system/lib/tee/libbassapp_ssw:codina/system/lib/tee/libbassapp_ssw \
    $(LOCAL_PATH)/system/lib/tee/smcl_ta_8500bx_secure.ssw:codina/system/lib/tee/smcl_ta_8500bx_secure.ssw \
    $(LOCAL_PATH)/system/lib/libcops.so:codina/system/lib/libcops.so

# System STE binaries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/bin/admsrv:codina/system/bin/admsrv \
    $(LOCAL_PATH)/system/bin/at_core:codina/system/bin/at_core \
    $(LOCAL_PATH)/system/bin/at_distributor:codina/system/bin/at_distributor \
    $(LOCAL_PATH)/system/bin/copsdaemon:codina/system/bin/copsdaemon \
    $(LOCAL_PATH)/system/bin/cspsa-server:codina/system/bin/cspsa-server \
    $(LOCAL_PATH)/system/bin/geomagneticd6x:codina/system/bin/geomagneticd6x \
    $(LOCAL_PATH)/system/bin/immvibed:codina/system/bin/immvibed \
    $(LOCAL_PATH)/system/bin/msa:codina/system/bin/msa \
    $(LOCAL_PATH)/system/bin/npsmobex:codina/system/bin/npsmobex \
    $(LOCAL_PATH)/system/bin/orientationd6x:codina/system/bin/orientationd6x \
    $(LOCAL_PATH)/system/bin/ta_loader:codina/system/bin/ta_loader

# System STE Libs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/libatparser.so:codina/system/lib/libatparser.so \
    $(LOCAL_PATH)/system/lib/libbassapp.so:codina/system/lib/libbassapp.so \
    $(LOCAL_PATH)/system/lib/libcn.so:codina/system/lib/libcn.so \
    $(LOCAL_PATH)/system/lib/libcontrolcsc.so:codina/system/lib/libcontrolcsc.so \
    $(LOCAL_PATH)/system/lib/libcspsa.so:codina/system/lib/libcspsa.so \
    $(LOCAL_PATH)/system/lib/libfactoryutil.so:codina/system/lib/libfactoryutil.so \
    $(LOCAL_PATH)/system/lib/libisimessage.so:codina/system/lib/libisimessage.so \
    $(LOCAL_PATH)/system/lib/liblos.so:codina/system/lib/liblos.so \
    $(LOCAL_PATH)/system/lib/libmalmon.so:codina/system/lib/libmalmon.so \
    $(LOCAL_PATH)/system/lib/libmalrf.so:codina/system/lib/libmalrf.so \
    $(LOCAL_PATH)/system/lib/libmalutil.so:codina/system/lib/libmalutil.so \
    $(LOCAL_PATH)/system/lib/libmmprobe.so:codina/system/lib/libmmprobe.so \
    $(LOCAL_PATH)/system/lib/libmpl.so:codina/system/lib/libmpl.so \
    $(LOCAL_PATH)/system/lib/libnmfee.so:codina/system/lib/libnmfee.so \
    $(LOCAL_PATH)/system/lib/libnmf.so:codina/system/lib/libnmf.so \
    $(LOCAL_PATH)/system/lib/libomission_avoidance.so:codina/system/lib/libomission_avoidance.so \
    $(LOCAL_PATH)/system/lib/libphonet.so:codina/system/lib/libphonet.so \
    $(LOCAL_PATH)/system/lib/libpscc.so:codina/system/lib/libpscc.so \
    $(LOCAL_PATH)/system/lib/libexpat.so:codina/system/lib/libexpat.so \
    $(LOCAL_PATH)/system/lib/libsecnativefeature.so:codina/system/lib/libsecnativefeature.so \
    $(LOCAL_PATH)/system/lib/libshmnetlnk.so:codina/system/lib/libshmnetlnk.so \
    $(LOCAL_PATH)/system/lib/libsms_server.so:codina/system/lib/libsms_server.so \
    $(LOCAL_PATH)/system/lib/libstecom.so:codina/system/lib/libstecom.so \
    $(LOCAL_PATH)/system/lib/libsterc.so:codina/system/lib/libsterc.so \
    $(LOCAL_PATH)/system/lib/libtee.so:codina/system/lib/libtee.so \
    $(LOCAL_PATH)/system/lib/libtrace.so:codina/system/lib/libtrace.so \
    $(LOCAL_PATH)/system/lib/libste_aiq_tools.so:codina/system/lib/libste_aiq_tools.so

# OMX
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/libnmftimer.so:codina/system/lib/libnmftimer.so \
    $(LOCAL_PATH)/system/lib/libstagefrighthw.so:codina/system/lib/libstagefrighthw.so \
    $(LOCAL_PATH)/system/lib/ppp_sterc.so:codina/system/lib/ppp_sterc.so \
    $(LOCAL_PATH)/system/lib/libste_ens_image_tuningdatabase.so:codina/system/lib/libste_ens_image_tuningdatabase.so \
    $(LOCAL_PATH)/system/lib/libste_ens_video_common.so:codina/system/lib/libste_ens_video_common.so \
    $(LOCAL_PATH)/system/lib/libste_ext_ens_image_common.so:codina/system/lib/libste_ext_ens_image_common.so \
    $(LOCAL_PATH)/system/lib/libste_omxil-interface.so:codina/system/lib/libste_omxil-interface.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_alsasink.so:codina/system/lib/ste_omxcomponents/libste_alsasink.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_alsasource.so:codina/system/lib/ste_omxcomponents/libste_alsasource.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_audio_mixer.so:codina/system/lib/ste_omxcomponents/libste_audio_mixer.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_audio_source_sink.so:codina/system/lib/ste_omxcomponents/libste_audio_source_sink.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_comfort_noise.so:codina/system/lib/ste_omxcomponents/libste_comfort_noise.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_cscall.so:codina/system/lib/ste_omxcomponents/libste_cscall.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_dec_amr.so:codina/system/lib/ste_omxcomponents/libste_dec_amr.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_dec_amrwb.so:codina/system/lib/ste_omxcomponents/libste_dec_amrwb.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_dec_h264.so:codina/system/lib/ste_omxcomponents/libste_dec_h264.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_dec_jpeg.so:codina/system/lib/ste_omxcomponents/libste_dec_jpeg.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_dec_mpeg2.so:codina/system/lib/ste_omxcomponents/libste_dec_mpeg2.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_dec_mpeg4.so:codina/system/lib/ste_omxcomponents/libste_dec_mpeg4.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_dec_vc1.so:codina/system/lib/ste_omxcomponents/libste_dec_vc1.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_drc.so:codina/system/lib/ste_omxcomponents/libste_drc.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_enc_aac.so:codina/system/lib/ste_omxcomponents/libste_enc_aac.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_enc_amr.so:codina/system/lib/ste_omxcomponents/libste_enc_amr.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_enc_amrwb.so:codina/system/lib/ste_omxcomponents/libste_enc_amrwb.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_enc_h264.so:codina/system/lib/ste_omxcomponents/libste_enc_h264.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_enc_jpeg.so:codina/system/lib/ste_omxcomponents/libste_enc_jpeg.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_enc_mpeg4.so:codina/system/lib/ste_omxcomponents/libste_enc_mpeg4.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_exif_mixer.so:codina/system/lib/ste_omxcomponents/libste_exif_mixer.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_ext_camera.so:codina/system/lib/ste_omxcomponents/libste_ext_camera.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_mdrc.so:codina/system/lib/ste_omxcomponents/libste_mdrc.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_noise_reduction.so:codina/system/lib/ste_omxcomponents/libste_noise_reduction.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_pcm_splitter.so:codina/system/lib/ste_omxcomponents/libste_pcm_splitter.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_speech_proc.so:codina/system/lib/ste_omxcomponents/libste_speech_proc.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_spl.so:codina/system/lib/ste_omxcomponents/libste_spl.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_teq.so:codina/system/lib/ste_omxcomponents/libste_teq.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_tonegen.so:codina/system/lib/ste_omxcomponents/libste_tonegen.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_val_src_sink.so:codina/system/lib/ste_omxcomponents/libste_val_src_sink.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libste_virtual_surround.so:codina/system/lib/ste_omxcomponents/libste_virtual_surround.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libst_omxarmivproc.so:codina/system/lib/ste_omxcomponents/libst_omxarmivproc.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libst_omxface_detector.so:codina/system/lib/ste_omxcomponents/libst_omxface_detector.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libst_omxnorcos.so:codina/system/lib/ste_omxcomponents/libst_omxnorcos.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libst_omxredeye_corrector.so:codina/system/lib/ste_omxcomponents/libst_omxredeye_corrector.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libst_omxredeye_detector.so:codina/system/lib/ste_omxcomponents/libst_omxredeye_detector.so \
    $(LOCAL_PATH)/system/lib/ste_omxcomponents/libst_omxsplitter.so:codina/system/lib/ste_omxcomponents/libst_omxsplitter.so

# NMF Confs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrcommon.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrcommon.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrdec24.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrdec24.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrdec.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrdec.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrenc24.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrenc24.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrenc.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrenc.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/nmfil/decoder.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/nmfil/decoder.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/nmfil/encoder.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/nmfil/encoder.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/capturercontroller.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/capturercontroller.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/dmain_bt.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/dmain_bt.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/dmain.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/dmain.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/dmaout_bt.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/dmaout_bt.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/dmaout.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/dmaout.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/host_reg.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/host_reg.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/msp_dma_controller.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/msp_dma_controller.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/msp_dma_ctrl_ab8500.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/msp_dma_ctrl_ab8500.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/msp_dma_ctrl_bt.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/msp_dma_ctrl_bt.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/renderercontroller.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/renderercontroller.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libaudiotables.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libaudiotables.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libaudiowindows.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libaudiowindows.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libbitstream.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libbitstream.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libcrc.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libcrc.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libdBconv.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libdBconv.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libfft.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libfft.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libimdct.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libimdct.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmalloc.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmalloc.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmdct.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmdct.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmdcttables.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmdcttables.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmp3dequan.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmp3dequan.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmp3hybrid.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmp3hybrid.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libpolysyn.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libpolysyn.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libsbrqmf.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libsbrqmf.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libvector.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libvector.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/pcmadapter.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/pcmadapter.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/shmpcm/shmin.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/shmpcm/shmin.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/shmpcm/shmout.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/shmpcm/shmout.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/shm/shmin.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/shm/shmin.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/shm/shmout.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/shm/shmout.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/comfortnoise/effect/libcomfortnoise.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/comfortnoise/effect/libcomfortnoise.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/comfortnoise/nmfil/effect.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/comfortnoise/nmfil/effect.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/debug/mpc/dsp_printf.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/debug/mpc/dsp_printf.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/decoders/framealigned/wrapper.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/decoders/framealigned/wrapper.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/decoders/streamed/wrapper.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/decoders/streamed/wrapper.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/encoders/framealigned/wrapper.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/encoders/framealigned/wrapper.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/encoders/streamed/wrapper.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/encoders/streamed/wrapper.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/equalizer/effect/libequalizer.elf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/equalizer/effect/libequalizer.elf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/equalizer/effect/libequalizer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/equalizer/effect/libequalizer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/equalizer/nmfil/effect.elf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/equalizer/nmfil/effect.elf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/equalizer/nmfil/effect.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/equalizer/nmfil/effect.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/common/portstate.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/common/portstate.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/emptythisbuffer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/emptythisbuffer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/eventhandler.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/eventhandler.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/ext_grab/api/alert.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/ext_grab/api/alert.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/ext_grabctl/api/returnbuffer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/ext_grabctl/api/returnbuffer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/fillthisbuffer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/fillthisbuffer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/fsminit.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/fsminit.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/grab/api/alert.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/grab/api/alert.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/grabctl/api/returnbuffer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/grabctl/api/returnbuffer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/api/algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/api/algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/api/cabac.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/api/cabac.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/api/end_algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/api/end_algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/api/end_cabac.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/api/end_cabac.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/ddep/api/log_event.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/ddep/api/log_event.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264enc/mpc/api/algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264enc/mpc/api/algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264enc/mpc/api/end_algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264enc/mpc/api/end_algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264enc/mpc/ddep/api/log_event.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264enc/mpc/ddep/api/log_event.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/interruptdfc.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/interruptdfc.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegdec/mpc/api/algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegdec/mpc/api/algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegdec/mpc/api/log_event.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegdec/mpc/api/log_event.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegenc/mpc/api/algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegenc/mpc/api/algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegenc/mpc/api/end_algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegenc/mpc/api/end_algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegenc/mpc/api/log_event.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegenc/mpc/api/log_event.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg2dec/mpc/api/algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg2dec/mpc/api/algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg2dec/mpc/api/end_algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg2dec/mpc/api/end_algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg2dec/mpc/api/log_event.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg2dec/mpc/api/log_event.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4dec/mpc/api/algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4dec/mpc/api/algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4dec/mpc/api/end_algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4dec/mpc/api/end_algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4dec/mpc/api/log_event.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4dec/mpc/api/log_event.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4enc/mpc/api/algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4enc/mpc/api/algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4enc/mpc/api/end_algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4enc/mpc/api/end_algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4enc/mpc/api/log_event.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4enc/mpc/api/log_event.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/pcmsettings.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/pcmsettings.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/postevent.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/postevent.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/buffer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/buffer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/inform_resource_status.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/inform_resource_status.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/interrupt.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/interrupt.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/mtf.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/mtf.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/mtf_resource.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/mtf_resource.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/resource.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/resource.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/signal.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/signal.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/sleep.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/sleep.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/tcm_mem_alloc.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/tcm_mem_alloc.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/sendcommand.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/sendcommand.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vc1dec/mpc/api/algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vc1dec/mpc/api/algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vc1dec/mpc/api/end_algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vc1dec/mpc/api/end_algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vc1dec/mpc/api/mpc_trace_init.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vc1dec/mpc/api/mpc_trace_init.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vc1dec/mpc/ddep/api/log_event.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vc1dec/mpc/ddep/api/log_event.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vpp/mpc/api/algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vpp/mpc/api/algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vpp/mpc/api/end_algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vpp/mpc/api/end_algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/ext_grabctl.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/ext_grabctl.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/ext_grab.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/ext_grab.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/ext_ispctl.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/ext_ispctl.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/fsm/component.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/fsm/component.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/fsm/generic.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/fsm/generic.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/grabctl.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/grabctl.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/grab.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/grab.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/h264dec/mpc/adapter.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/h264dec/mpc/adapter.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/h264dec/mpc/cabac.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/h264dec/mpc/cabac.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/h264dec/mpc/ddep.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/h264dec/mpc/ddep.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/h264dec/mpc/h264dec.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/h264dec/mpc/h264dec.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/h264enc/mpc/adapter.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/h264enc/mpc/adapter.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/h264enc/mpc/algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/h264enc/mpc/algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/h264enc/mpc/algo_hdtv.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/h264enc/mpc/algo_hdtv.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/h264enc/mpc/ddep.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/h264enc/mpc/ddep.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/hybrid_hsem.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/hybrid_hsem.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/hybrid_lsem.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/hybrid_lsem.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/ispctl.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/ispctl.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/jpegdec/mpc/ddep.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/jpegdec/mpc/ddep.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/jpegdec/mpc/jpegdec.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/jpegdec/mpc/jpegdec.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/jpegenc.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/jpegenc.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/jpegenc/mpc/ddep.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/jpegenc/mpc/ddep.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/malloc.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/malloc.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mdrc/effect/libmdrc5b.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/mdrc/effect/libmdrc5b.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mdrc/nmfil/effect.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/mdrc/nmfil/effect.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/memgrabctl.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/memgrabctl.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/misc/controller.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/misc/controller.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/misc/synchronisation.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/misc/synchronisation.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mixer/effect/libmixer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/mixer/effect/libmixer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mixer/nmfil/wrapper.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/mixer/nmfil/wrapper.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg2dec/mpc/ddep.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg2dec/mpc/ddep.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg2dec/mpc/mpeg2dec.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg2dec/mpc/mpeg2dec.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4dec/mpc/algo_deblock.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4dec/mpc/algo_deblock.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4dec/mpc/ddep.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4dec/mpc/ddep.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4dec/mpc/mpeg4dec.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4dec/mpc/mpeg4dec.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4enc.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4enc.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4enc/mpc/brc.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4enc/mpc/brc.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4enc/mpc/ddep.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4enc/mpc/ddep.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/nmf/mpc/shared_bufin.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/nmf/mpc/shared_bufin.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/nmf/mpc/shared_bufout.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/nmf/mpc/shared_bufout.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/osttrace/mmdsp.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/osttrace/mmdsp.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/pcmdump.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/pcmdump.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/pcmprocessings/mips.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/pcmprocessings/mips.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/pcmprocessings/wrapper.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/pcmprocessings/wrapper.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/pcm_splitter/nmfil/wrapper.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/pcm_splitter/nmfil/wrapper.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/preload_adm.txt:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/preload_adm.txt \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/preload_imaging.txt:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/preload_imaging.txt \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/preload_mpcee.txt:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/preload_mpcee.txt \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/preload_video.txt:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/preload_video.txt \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/resource_manager.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/resource_manager.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/samplerateconv/effect/libresampling.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/samplerateconv/effect/libresampling.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/samplerateconv/nmfil/wrapper.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/samplerateconv/nmfil/wrapper.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/amr/nmfil/decoder/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/amr/nmfil/decoder/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/amr/nmfil/encoder/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/amr/nmfil/encoder/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/api/set_debug.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/api/set_debug.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/audiolibs/common/dummy.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/audiolibs/common/dummy.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/audiolibs/libmalloc/init.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/audiolibs/libmalloc/init.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/bindings/pcmadapter/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/bindings/pcmadapter/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/bindings/shm/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/bindings/shm/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/bindings/shmpcm/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/bindings/shmpcm/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/comfortnoise/nmfil/effect/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/comfortnoise/nmfil/effect/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/common/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/common/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/decoders/streamed/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/decoders/streamed/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/dmaout/low_power.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/dmaout/low_power.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/dummy.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/dummy.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/emptythisbuffer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/emptythisbuffer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/encoders/streamed/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/encoders/streamed/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/equalizer/nmfil/effect/configure.elf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/equalizer/nmfil/effect/configure.elf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/equalizer/nmfil/effect/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/equalizer/nmfil/effect/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext/api/set_debug.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext/api/set_debug.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext_grab/api/cmd.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext_grab/api/cmd.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext_grabctl/api/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext_grabctl/api/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext_ispctl/api/cfg.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext_ispctl/api/cfg.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext_ispctl/api/cmd.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext_ispctl/api/cmd.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/fillthisbuffer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/fillthisbuffer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/fsminit.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/fsminit.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/grab/api/cmd.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/grab/api/cmd.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/grabctl/api/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/grabctl/api/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/h264dec/mpc/api/trace_init.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/h264dec/mpc/api/trace_init.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/h264dec/mpc/ddep/api/start_codec.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/h264dec/mpc/ddep/api/start_codec.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/h264enc/mpc/api/mpc_trace_init.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/h264enc/mpc/api/mpc_trace_init.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/h264enc/mpc/ddep/api/start_codec.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/h264enc/mpc/ddep/api/start_codec.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/hst/common/pcmsettings.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/hst/common/pcmsettings.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ispctl/api/cfg.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ispctl/api/cfg.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ispctl/api/cmd.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ispctl/api/cmd.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegdec/mpc/api/algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegdec/mpc/api/algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegdec/mpc/api/ddep.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegdec/mpc/api/ddep.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegdec/mpc/api/emptythisheader.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegdec/mpc/api/emptythisheader.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegdec/mpc/api/fillthisheader.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegdec/mpc/api/fillthisheader.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegenc/mpc/api/ddep.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegenc/mpc/api/ddep.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/malloc/setheap.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/malloc/setheap.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mdrc/nmfil/effect/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mdrc/nmfil/effect/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/memgrabctl/api/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/memgrabctl/api/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/misc/controller/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/misc/controller/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/misc/samplesplayed.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/misc/samplesplayed.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mixer/nmfil/wrapper/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mixer/nmfil/wrapper/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg2dec/mpc/api/ddep.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg2dec/mpc/api/ddep.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg2dec/mpc/api/emptythisheader.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg2dec/mpc/api/emptythisheader.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg2dec/mpc/api/fillthisheader.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg2dec/mpc/api/fillthisheader.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/arm_nmf/api/Copy.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/arm_nmf/api/Copy.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/mpc/api/algo_deblock.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/mpc/api/algo_deblock.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/mpc/api/ddep.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/mpc/api/ddep.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/mpc/api/emptythisheader.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/mpc/api/emptythisheader.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/mpc/api/fillthisheader.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/mpc/api/fillthisheader.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4enc/mpc/api/ddep.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4enc/mpc/api/ddep.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/msp_dma_ctrl_ab8500/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/msp_dma_ctrl_ab8500/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcmdump/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcmdump/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcmprocessings/mips/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcmprocessings/mips/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcmprocessings/wrapper/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcmprocessings/wrapper/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcmsettings.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcmsettings.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcm_splitter/nmfil/wrapper/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcm_splitter/nmfil/wrapper/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/resource_manager/api/common_interface_exports.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/resource_manager/api/common_interface_exports.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/resource_manager/api/mtf_resource.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/resource_manager/api/mtf_resource.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/samplerateconv/nmfil/wrapper/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/samplerateconv/nmfil/wrapper/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/sendcommand.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/sendcommand.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/setmemory.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/setmemory.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/shared_emptythisbuffer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/shared_emptythisbuffer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/shared_fillthisbuffer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/shared_fillthisbuffer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/speech_proc/nmf/common/configure_time_align.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/speech_proc/nmf/common/configure_time_align.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/speech_proc/nmf/common/hybrid_emptythisbuffer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/speech_proc/nmf/common/hybrid_emptythisbuffer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/speech_proc/nmf/common/hybrid_fillthisbuffer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/speech_proc/nmf/common/hybrid_fillthisbuffer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/speech_proc/nmf/mpc/dsp_port/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/speech_proc/nmf/mpc/dsp_port/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/spl/nmfil/effect/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/spl/nmfil/effect/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/transducer_equalizer/nmfil/effect/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/transducer_equalizer/nmfil/effect/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/vc1dec/mpc/api/mpc_trace_init.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/vc1dec/mpc/api/mpc_trace_init.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/vc1dec/mpc/ddep/api/start_codec.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/vc1dec/mpc/ddep/api/start_codec.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/volctrl/nmfil/effect/configure.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/volctrl/nmfil/effect/configure.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/speech_proc/nmf/mpc/dsp_port.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/speech_proc/nmf/mpc/dsp_port.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/speech_proc/nmf/mpc/hybrid_buffer/arm2mpc.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/speech_proc/nmf/mpc/hybrid_buffer/arm2mpc.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/speech_proc/nmf/mpc/hybrid_buffer/mpc2arm.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/speech_proc/nmf/mpc/hybrid_buffer/mpc2arm.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/speech_proc/nmf/mpc/time_align.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/speech_proc/nmf/mpc/time_align.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/spl/effect/libspl.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/spl/effect/libspl.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/spl/nmfil/effect.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/spl/nmfil/effect.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/debug/mpc/api/msg.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/debug/mpc/api/msg.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/dmaout/low_signal.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/dmaout/low_signal.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/emptythisbuffer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/emptythisbuffer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/eventhandler.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/eventhandler.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_grab/api/alert.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_grab/api/alert.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_grabctl/api/acknowledges.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_grabctl/api/acknowledges.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_grabctl/api/error.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_grabctl/api/error.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_grabctl/api/reportcurves.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_grabctl/api/reportcurves.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_ispctl/api/alert.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_ispctl/api/alert.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/fillthisbuffer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/fillthisbuffer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/grab/api/alert.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/grab/api/alert.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/grabctl/api/acknowledges.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/grabctl/api/acknowledges.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/grabctl/api/error.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/grabctl/api/error.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/grabctl/api/reportcurves.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/grabctl/api/reportcurves.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264dec/mpc/api/end_algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264dec/mpc/api/end_algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264dec/mpc/api/end_cabac.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264dec/mpc/api/end_cabac.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264dec/mpc/ddep/api/end_codec.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264dec/mpc/ddep/api/end_codec.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264enc/mpc/api/end_algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264enc/mpc/api/end_algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264enc/mpc/api/mpc_trace_init_ack.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264enc/mpc/api/mpc_trace_init_ack.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264enc/mpc/ddep/api/end_codec.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264enc/mpc/ddep/api/end_codec.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/interruptdfc.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/interruptdfc.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ispctl/api/alert.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ispctl/api/alert.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegdec/mpc/api/ddep.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegdec/mpc/api/ddep.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegdec/mpc/api/emptythisheader.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegdec/mpc/api/emptythisheader.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegdec/mpc/api/end_algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegdec/mpc/api/end_algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegdec/mpc/api/fillthisheader.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegdec/mpc/api/fillthisheader.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegenc/mpc/api/portSettings.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegenc/mpc/api/portSettings.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg2dec/mpc/api/ddep.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg2dec/mpc/api/ddep.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg2dec/mpc/api/emptythisheader.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg2dec/mpc/api/emptythisheader.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg2dec/mpc/api/end_algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg2dec/mpc/api/end_algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg2dec/mpc/api/fillthisheader.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg2dec/mpc/api/fillthisheader.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/arm_nmf/api/Copy.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/arm_nmf/api/Copy.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/ddep.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/ddep.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/emptythisheader.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/emptythisheader.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/end_algodeblock.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/end_algodeblock.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/end_algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/end_algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/fillthisheader.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/fillthisheader.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/msp_dma_ctrl_ab8500/bitclock.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/msp_dma_ctrl_ab8500/bitclock.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/pcmdump/complete.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/pcmdump/complete.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/pcmsettings.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/pcmsettings.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/requestmemory.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/requestmemory.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/resource_manager/api/inform_resource_status.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/resource_manager/api/inform_resource_status.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/shared_emptythisbuffer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/shared_emptythisbuffer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/shared_fillthisbuffer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/shared_fillthisbuffer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/speech_proc/nmf/common/hybrid_emptythisbuffer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/speech_proc/nmf/common/hybrid_emptythisbuffer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/speech_proc/nmf/common/hybrid_fillthisbuffer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/speech_proc/nmf/common/hybrid_fillthisbuffer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/speech_proc/nmf/common/pcmsettings.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/speech_proc/nmf/common/pcmsettings.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/vc1dec/mpc/api/end_algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/vc1dec/mpc/api/end_algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/vc1dec/mpc/ddep/api/end_codec.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/vc1dec/mpc/ddep/api/end_codec.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/vpp/mpc/api/end_algo.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/vpp/mpc/api/end_algo.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/synchronous_hsem.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/synchronous_hsem.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/synchronous_lsem.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/synchronous_lsem.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/transducer_equalizer/effect/libtransducer_equalizer.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/transducer_equalizer/effect/libtransducer_equalizer.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/transducer_equalizer/nmfil/effect.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/transducer_equalizer/nmfil/effect.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/vc1dec/mpc/adapter.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/vc1dec/mpc/adapter.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/vc1dec/mpc/ddep.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/vc1dec/mpc/ddep.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/vc1dec/mpc/vc1dec.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/vc1dec/mpc/vc1dec.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/volctrl/effect/libvolctrl.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/volctrl/effect/libvolctrl.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/volctrl/nmfil/effect.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/volctrl/nmfil/effect.elf4nmf \
    $(LOCAL_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/vpp.elf4nmf:codina/system/usr/share/nmf/repository/mmdsp_8500_v2/vpp.elf4nmf

# LVVEFS config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/LVVEFS_Rx_Configuration.txt:codina/system/etc/LVVEFS_tuning_parameters/LVVEFS_Rx_Configuration.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/LVVEFS_Tx_Configuration.txt:codina/system/etc/LVVEFS_tuning_parameters/LVVEFS_Tx_Configuration.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF_VOIP.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF_VOIP.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF_VT.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF_VT.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF_WB.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF_WB.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON_VOIP.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON_VOIP.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON_VT.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON_VT.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON_WB.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON_WB.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_EXTRA.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_EXTRA.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_EXTRA_WB.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_EXTRA_WB.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_VOIP.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_VOIP.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_VT.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_VT.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_WB.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_WB.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADPHONE.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADPHONE.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADPHONE_VOIP.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADPHONE_VOIP.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADPHONE_VT.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADPHONE_VT.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADPHONE_WB.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADPHONE_WB.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADSET.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADSET.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADSET_VOIP.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADSET_VOIP.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADSET_VT.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADSET_VT.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADSET_WB.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADSET_WB.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_LOOPBACK.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_LOOPBACK.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_EXTRA.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_EXTRA.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_EXTRA_WB.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_EXTRA_WB.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_VOIP.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_VOIP.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_VT.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_VT.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_WB.txt:codina/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_WB.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECOFF.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECOFF.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECOFF_VOIP.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECOFF_VOIP.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECOFF_VT.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECOFF_VT.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECOFF_WB.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECOFF_WB.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECON.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECON.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECON_VOIP.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECON_VOIP.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECON_VT.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECON_VT.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECON_WB.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECON_WB.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_EXTRA.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_EXTRA.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_EXTRA_WB.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_EXTRA_WB.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_VOIP.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_VOIP.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_VT.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_VT.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_WB.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_WB.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADPHONE.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADPHONE.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADPHONE_VOIP.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADPHONE_VOIP.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADPHONE_VT.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADPHONE_VT.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADPHONE_WB.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADPHONE_WB.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADSET.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADSET.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADSET_VOIP.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADSET_VOIP.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADSET_VT.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADSET_VT.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADSET_WB.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADSET_WB.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_LOOPBACK.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_LOOPBACK.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_EXTRA.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_EXTRA.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_EXTRA_WB.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_EXTRA_WB.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_VOIP.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_VOIP.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_VT.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_VT.txt \
    $(LOCAL_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_WB.txt:codina/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_WB.txt

# apk
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/system/app/incallfix.apk:/system/app/incallfix/incallfix.apk

# KernelSettings
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/app/ChronoKernelSettings.apk:/system/app/ChronoKernelSettings/ChronoKernelSettings.apk

ifeq ($(DEVICE_ENABLE_KERNEL_3),true)
# Init.d scripts for Chrono Kernel 3.
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/init.d/00autoload:codina/system/etc/init.d/00autoload \
    $(LOCAL_PATH)/system/autoload/empty:codina/system/lib/modules/autoload/empty \
    $(LOCAL_PATH)/system/autoload/10dynamic:codina/system/etc/init.d/10dynamic \
    $(LOCAL_PATH)/system/autoload/60zram:codina/system/etc/init.d/60zram \
    $(LOCAL_PATH)/system/autoload/20minfree:codina/system/etc/init.d/20minfree \
    $(LOCAL_PATH)/system/autoload/65tweaks:codina/system/etc/init.d/65tweaks
endif

# Ramdisk partition Tool
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/scripts/check_ramdisk_partition.sh:install/bin/check_ramdisk_partition.sh \
    $(LOCAL_PATH)/system/scripts/main.sh:install/bin/main.sh

ifeq ($(DEVICE_ENABLE_KERNEL_4),true)
# Ramdisk scripts for Chrono Kernel 5
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/scripts1/recovery_install.sh:install/bin/recovery_install.sh
else
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/scripts/recovery_install.sh:install/bin/recovery_install.sh
endif

ifeq ($(DEVICE_ENABLE_KERNEL_4),true)
# Init.d scripts for Chrono Kernel 5
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/scripts1/00userinit:codina/system/etc/init.d/00userinit \
    $(LOCAL_PATH)/system/scripts1/modules_list.txt:install/bin/modules_list.txt
endif

# recovery partition Tool
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/system/scripts/recovery.cpio.gz:install/bin/recovery.cpio.gz

# toybox
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/system/autoload5/toybox:codina/system/bin/toybox

# bootanimation
#PRODUCT_COPY_FILES += \
#    vendor/samsung/u8500-common/codina/bootanimation/480.zip:codina/system/media/bootanimation.zip

# powerhal
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/system/autoload/999powerhal:codina/system/etc/init.d/999powerhal

# APP REMOVAL SCRIPT
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/system/addon.d/60-removal.sh:codina/system/addon.d/60-removal.sh

# Fix com.google.android.gms.persistent killing script
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/system/autoload/roguegms:codina/system/etc/init.d/roguegms

# SCRIPT godmode
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/autoload/godmode:codina/system/etc/init.d/godmode

# macloader
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/system/autoload5/macloader:codina/system/bin/macloader

# libstlport
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/lib/libstlport.so:codina/system/lib/libstlport.so

#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/system/lib/libpower.so:codina/system/lib/libpower.so

# Proprietary latinime lib needed for Keyboard swyping
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/system/lib/libjni_unbundled_latinimegoogle.so:codina/system/lib/libjni_unbundled_latinimegoogle.so
