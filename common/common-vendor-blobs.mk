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

COMMON_PATH := $(LOCAL_PATH)

# Mali-400
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/lib/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
    $(COMMON_PATH)/system/lib/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
    $(COMMON_PATH)/system/lib/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
    $(COMMON_PATH)/system/lib/libMali.so:system/lib/libMali.so \
    $(COMMON_PATH)/system/lib/libUMP.so:system/lib/libUMP.so

# Audio
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/bin/admsrv:system/bin/admsrv \
    $(COMMON_PATH)/system/lib/libste_adm.so:system/lib/libste_adm.so \
    $(COMMON_PATH)/system/lib/libsamsungSoundbooster.so:system/lib/libsamsungSoundbooster.so \
    $(COMMON_PATH)/system/lib/lib_SamsungRec_V01006.so:system/lib/lib_SamsungRec_V01006.so \
    $(COMMON_PATH)/system/lib/lib_Samsung_SB_AM_for_ICS_v03008.so:system/lib/lib_Samsung_SB_AM_for_ICS_v03008.so \
    $(COMMON_PATH)/system/lib/libhalaudioprocessing.so:system/lib/libhalaudioprocessing.so \
    $(COMMON_PATH)/system/lib/libsamsungRecord.so:system/lib/libsamsungRecord.so \
    $(COMMON_PATH)/system/lib/libspeech_proc_customer_plugin.so:system/lib/libspeech_proc_customer_plugin.so \
    $(COMMON_PATH)/system/lib/libspeech_processing.so:system/lib/libspeech_processing.so \
    $(COMMON_PATH)/system/lib/libste_audio_hwctrl.so:system/lib/libste_audio_hwctrl.so \
    $(COMMON_PATH)/system/lib/libste_ens_audio_common.so:system/lib/libste_ens_audio_common.so \
    $(COMMON_PATH)/system/lib/libste_ens_audio_samplerateconv.so:system/lib/libste_ens_audio_samplerateconv.so \
    $(COMMON_PATH)/system/lib/libste_ensloader.so:obj/lib/libste_ensloader.so \
    $(COMMON_PATH)/system/lib/libste_ensloader.so:system/lib/libste_ensloader.so \
    $(COMMON_PATH)/system/lib/libste_audio_mixer.so:system/lib/libste_audio_mixer.so

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/lib/libsec-ril.so:system/lib/libsec-ril.so \
    $(COMMON_PATH)/system/etc/AT/manuf_id.cfg:system/etc/AT/manuf_id.cfg \
    $(COMMON_PATH)/system/etc/AT/model_id.cfg:system/etc/AT/model_id.cfg \
    $(COMMON_PATH)/system/etc/AT/system_id.cfg:system/etc/AT/system_id.cfg

# Bluetooth
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/bin/bcm4330.hcd:system/bin/bcm4330.hcd

# WiFi
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/etc/wifi/bcmdhd_apsta.bin:system/etc/wifi/bcmdhd_apsta.bin \
    $(COMMON_PATH)/system/etc/wifi/bcmdhd_mfg.bin:system/etc/wifi/bcmdhd_mfg.bin \
    $(COMMON_PATH)/system/etc/wifi/bcmdhd_p2p.bin:system/etc/wifi/bcmdhd_p2p.bin \
    $(COMMON_PATH)/system/etc/wifi/bcmdhd_sta.bin:system/etc/wifi/bcmdhd_sta.bin \
    $(COMMON_PATH)/system/etc/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
    $(COMMON_PATH)/system/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt

# DRM new
#PRODUCT_COPY_FILES += \
#    $(COMMON_PATH)/system/vendor/libdrmdecrypt.so:system/lib/libdrmdecrypt.so \
#    $(COMMON_PATH)/system/lib/libWVphoneAPI.so:system/lib/libWVphoneAPI.so

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/vendor/libdrmmtkutil.so:system/vendor/lib/libdrmmtkutil.so \
    $(COMMON_PATH)/system/lib/libwvdrm_L3.so:system/vendor/lib/libwvdrm_L3.so \
    $(COMMON_PATH)/system/lib/libwvm.so:system/vendor/lib/libwvm.so \
    $(COMMON_PATH)/system/lib/libWVStreamControlAPI_L3.so:system/vendor/lib/libWVStreamControlAPI_L3.so \
    $(COMMON_PATH)/system/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
    $(COMMON_PATH)/system/vendor/mediadrm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so

# System STE binaries
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/bin/at_core:system/bin/at_core \
    $(COMMON_PATH)/system/bin/at_distributor:system/bin/at_distributor \
    $(COMMON_PATH)/system/bin/copsdaemon:system/bin/copsdaemon \
    $(COMMON_PATH)/system/bin/cspsa-server:system/bin/cspsa-server \
    $(COMMON_PATH)/system/bin/geomagneticd6x:system/bin/geomagneticd6x \
    $(COMMON_PATH)/system/bin/immvibed:system/bin/immvibed \
    $(COMMON_PATH)/system/bin/msa:system/bin/msa \
    $(COMMON_PATH)/system/bin/npsmobex:system/bin/npsmobex \
    $(COMMON_PATH)/system/bin/orientationd6x:system/bin/orientationd6x \
    $(COMMON_PATH)/system/bin/ta_loader:system/bin/ta_loader

# System STE Libs
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/lib/libatparser.so:system/lib/libatparser.so \
    $(COMMON_PATH)/system/lib/libbassapp.so:system/lib/libbassapp.so \
    $(COMMON_PATH)/system/lib/libcn.so:system/lib/libcn.so \
    $(COMMON_PATH)/system/lib/libcontrolcsc.so:system/lib/libcontrolcsc.so \
    $(COMMON_PATH)/system/lib/libcspsa.so:system/lib/libcspsa.so \
    $(COMMON_PATH)/system/lib/libfactoryutil.so:system/lib/libfactoryutil.so \
    $(COMMON_PATH)/system/lib/libisimessage.so:system/lib/libisimessage.so \
    $(COMMON_PATH)/system/lib/liblos.so:system/lib/liblos.so \
    $(COMMON_PATH)/system/lib/libmalmon.so:system/lib/libmalmon.so \
    $(COMMON_PATH)/system/lib/libmalrf.so:system/lib/libmalrf.so \
    $(COMMON_PATH)/system/lib/libmalutil.so:system/lib/libmalutil.so \
    $(COMMON_PATH)/system/lib/libmmprobe.so:system/lib/libmmprobe.so \
    $(COMMON_PATH)/system/lib/libmpl.so:system/lib/libmpl.so \
    $(COMMON_PATH)/system/lib/libnmfee.so:system/lib/libnmfee.so \
    $(COMMON_PATH)/system/lib/libnmf.so:system/lib/libnmf.so \
    $(COMMON_PATH)/system/lib/libomission_avoidance.so:system/lib/libomission_avoidance.so \
    $(COMMON_PATH)/system/lib/libphonet.so:system/lib/libphonet.so \
    $(COMMON_PATH)/system/lib/libpscc.so:system/lib/libpscc.so \
    $(COMMON_PATH)/system/lib/libsecnativefeature.so:system/lib/libsecnativefeature.so \
    $(COMMON_PATH)/system/lib/libshmnetlnk.so:system/lib/libshmnetlnk.so \
    $(COMMON_PATH)/system/lib/libsms_server.so:system/lib/libsms_server.so \
    $(COMMON_PATH)/system/lib/libstecom.so:system/lib/libstecom.so \
    $(COMMON_PATH)/system/lib/libsterc.so:system/lib/libsterc.so \
    $(COMMON_PATH)/system/lib/libtee.so:system/lib/libtee.so \
    $(COMMON_PATH)/system/lib/libtrace.so:system/lib/libtrace.so

# OMX
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/lib/libnmftimer.so:system/lib/libnmftimer.so \
    $(COMMON_PATH)/system/lib/libstagefrighthw.so:system/lib/libstagefrighthw.so \
    $(COMMON_PATH)/system/lib/ppp_sterc.so:system/lib/ppp_sterc.so \
    $(COMMON_PATH)/system/lib/libste_ens_image_tuningdatabase.so:system/lib/libste_ens_image_tuningdatabase.so \
    $(COMMON_PATH)/system/lib/libste_ens_video_common.so:system/lib/libste_ens_video_common.so \
    $(COMMON_PATH)/system/lib/libste_ext_ens_image_common.so:system/lib/libste_ext_ens_image_common.so \
    $(COMMON_PATH)/system/lib/libste_omxil-interface.so:system/lib/libste_omxil-interface.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_alsasink.so:system/lib/ste_omxcomponents/libste_alsasink.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_alsasource.so:system/lib/ste_omxcomponents/libste_alsasource.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_audio_mixer.so:system/lib/ste_omxcomponents/libste_audio_mixer.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_audio_source_sink.so:system/lib/ste_omxcomponents/libste_audio_source_sink.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_comfort_noise.so:system/lib/ste_omxcomponents/libste_comfort_noise.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_cscall.so:system/lib/ste_omxcomponents/libste_cscall.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_dec_amr.so:system/lib/ste_omxcomponents/libste_dec_amr.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_dec_amrwb.so:system/lib/ste_omxcomponents/libste_dec_amrwb.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_dec_h264.so:system/lib/ste_omxcomponents/libste_dec_h264.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_dec_jpeg.so:system/lib/ste_omxcomponents/libste_dec_jpeg.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_dec_mpeg2.so:system/lib/ste_omxcomponents/libste_dec_mpeg2.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_dec_mpeg4.so:system/lib/ste_omxcomponents/libste_dec_mpeg4.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_dec_vc1.so:system/lib/ste_omxcomponents/libste_dec_vc1.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_drc.so:system/lib/ste_omxcomponents/libste_drc.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_enc_aac.so:system/lib/ste_omxcomponents/libste_enc_aac.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_enc_amr.so:system/lib/ste_omxcomponents/libste_enc_amr.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_enc_amrwb.so:system/lib/ste_omxcomponents/libste_enc_amrwb.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_enc_h264.so:system/lib/ste_omxcomponents/libste_enc_h264.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_enc_jpeg.so:system/lib/ste_omxcomponents/libste_enc_jpeg.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_enc_mpeg4.so:system/lib/ste_omxcomponents/libste_enc_mpeg4.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_exif_mixer.so:system/lib/ste_omxcomponents/libste_exif_mixer.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_ext_camera.so:system/lib/ste_omxcomponents/libste_ext_camera.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_mdrc.so:system/lib/ste_omxcomponents/libste_mdrc.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_noise_reduction.so:system/lib/ste_omxcomponents/libste_noise_reduction.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_pcm_splitter.so:system/lib/ste_omxcomponents/libste_pcm_splitter.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_speech_proc.so:system/lib/ste_omxcomponents/libste_speech_proc.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_spl.so:system/lib/ste_omxcomponents/libste_spl.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_teq.so:system/lib/ste_omxcomponents/libste_teq.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_tonegen.so:system/lib/ste_omxcomponents/libste_tonegen.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_val_src_sink.so:system/lib/ste_omxcomponents/libste_val_src_sink.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libste_virtual_surround.so:system/lib/ste_omxcomponents/libste_virtual_surround.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libst_omxarmivproc.so:system/lib/ste_omxcomponents/libst_omxarmivproc.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libst_omxface_detector.so:system/lib/ste_omxcomponents/libst_omxface_detector.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libst_omxnorcos.so:system/lib/ste_omxcomponents/libst_omxnorcos.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libst_omxredeye_corrector.so:system/lib/ste_omxcomponents/libst_omxredeye_corrector.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libst_omxredeye_detector.so:system/lib/ste_omxcomponents/libst_omxredeye_detector.so \
    $(COMMON_PATH)/system/lib/ste_omxcomponents/libst_omxsplitter.so:system/lib/ste_omxcomponents/libst_omxsplitter.so

# NMF Confs
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrcommon.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrcommon.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrdec24.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrdec24.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrdec.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrdec.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrenc24.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrenc24.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrenc.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/amr/codec/libamrenc.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/nmfil/decoder.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/amr/nmfil/decoder.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/amr/nmfil/encoder.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/amr/nmfil/encoder.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/capturercontroller.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/capturercontroller.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/dmain_bt.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/dmain_bt.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/dmain.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/dmain.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/dmaout_bt.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/dmaout_bt.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/dmaout.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/dmaout.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/host_reg.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/host_reg.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/msp_dma_controller.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/msp_dma_controller.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/msp_dma_ctrl_ab8500.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/msp_dma_ctrl_ab8500.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/msp_dma_ctrl_bt.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/msp_dma_ctrl_bt.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/renderercontroller.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiocodec/mpc/renderercontroller.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libaudiotables.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libaudiotables.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libaudiowindows.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libaudiowindows.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libbitstream.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libbitstream.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libcrc.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libcrc.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libdBconv.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libdBconv.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libfft.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libfft.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libimdct.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libimdct.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmalloc.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmalloc.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmdct.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmdct.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmdcttables.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmdcttables.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmp3dequan.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmp3dequan.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmp3hybrid.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libmp3hybrid.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libpolysyn.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libpolysyn.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libsbrqmf.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libsbrqmf.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libvector.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/audiolibs/libvector.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/pcmadapter.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/pcmadapter.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/shmpcm/shmin.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/shmpcm/shmin.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/shmpcm/shmout.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/shmpcm/shmout.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/shm/shmin.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/shm/shmin.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/shm/shmout.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/bindings/shm/shmout.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/comfortnoise/effect/libcomfortnoise.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/comfortnoise/effect/libcomfortnoise.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/comfortnoise/nmfil/effect.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/comfortnoise/nmfil/effect.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/debug/mpc/dsp_printf.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/debug/mpc/dsp_printf.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/decoders/framealigned/wrapper.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/decoders/framealigned/wrapper.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/decoders/streamed/wrapper.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/decoders/streamed/wrapper.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/encoders/framealigned/wrapper.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/encoders/framealigned/wrapper.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/encoders/streamed/wrapper.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/encoders/streamed/wrapper.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/equalizer/effect/libequalizer.elf:system/usr/share/nmf/repository/mmdsp_8500_v2/equalizer/effect/libequalizer.elf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/equalizer/effect/libequalizer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/equalizer/effect/libequalizer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/equalizer/nmfil/effect.elf:system/usr/share/nmf/repository/mmdsp_8500_v2/equalizer/nmfil/effect.elf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/equalizer/nmfil/effect.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/equalizer/nmfil/effect.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/common/portstate.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/common/portstate.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/emptythisbuffer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/emptythisbuffer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/eventhandler.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/eventhandler.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/ext_grab/api/alert.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/ext_grab/api/alert.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/ext_grabctl/api/returnbuffer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/ext_grabctl/api/returnbuffer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/fillthisbuffer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/fillthisbuffer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/fsminit.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/fsminit.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/grab/api/alert.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/grab/api/alert.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/grabctl/api/returnbuffer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/grabctl/api/returnbuffer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/api/algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/api/algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/api/cabac.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/api/cabac.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/api/end_algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/api/end_algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/api/end_cabac.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/api/end_cabac.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/ddep/api/log_event.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264dec/mpc/ddep/api/log_event.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264enc/mpc/api/algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264enc/mpc/api/algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264enc/mpc/api/end_algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264enc/mpc/api/end_algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264enc/mpc/ddep/api/log_event.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/h264enc/mpc/ddep/api/log_event.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/interruptdfc.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/interruptdfc.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegdec/mpc/api/algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegdec/mpc/api/algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegdec/mpc/api/log_event.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegdec/mpc/api/log_event.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegenc/mpc/api/algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegenc/mpc/api/algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegenc/mpc/api/end_algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegenc/mpc/api/end_algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegenc/mpc/api/log_event.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/jpegenc/mpc/api/log_event.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg2dec/mpc/api/algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg2dec/mpc/api/algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg2dec/mpc/api/end_algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg2dec/mpc/api/end_algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg2dec/mpc/api/log_event.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg2dec/mpc/api/log_event.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4dec/mpc/api/algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4dec/mpc/api/algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4dec/mpc/api/end_algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4dec/mpc/api/end_algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4dec/mpc/api/log_event.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4dec/mpc/api/log_event.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4enc/mpc/api/algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4enc/mpc/api/algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4enc/mpc/api/end_algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4enc/mpc/api/end_algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4enc/mpc/api/log_event.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/mpeg4enc/mpc/api/log_event.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/pcmsettings.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/pcmsettings.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/postevent.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/postevent.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/buffer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/buffer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/inform_resource_status.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/inform_resource_status.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/interrupt.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/interrupt.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/mtf.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/mtf.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/mtf_resource.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/mtf_resource.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/resource.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/resource.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/signal.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/signal.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/sleep.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/sleep.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/tcm_mem_alloc.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/resource_manager/api/tcm_mem_alloc.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/sendcommand.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/sendcommand.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vc1dec/mpc/api/algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vc1dec/mpc/api/algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vc1dec/mpc/api/end_algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vc1dec/mpc/api/end_algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vc1dec/mpc/api/mpc_trace_init.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vc1dec/mpc/api/mpc_trace_init.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vc1dec/mpc/ddep/api/log_event.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vc1dec/mpc/ddep/api/log_event.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vpp/mpc/api/algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vpp/mpc/api/algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vpp/mpc/api/end_algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_ev/vpp/mpc/api/end_algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/ext_grabctl.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/ext_grabctl.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/ext_grab.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/ext_grab.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/ext_ispctl.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/ext_ispctl.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/fsm/component.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/fsm/component.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/fsm/generic.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/fsm/generic.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/grabctl.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/grabctl.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/grab.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/grab.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/h264dec/mpc/adapter.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/h264dec/mpc/adapter.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/h264dec/mpc/cabac.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/h264dec/mpc/cabac.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/h264dec/mpc/ddep.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/h264dec/mpc/ddep.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/h264dec/mpc/h264dec.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/h264dec/mpc/h264dec.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/h264enc/mpc/adapter.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/h264enc/mpc/adapter.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/h264enc/mpc/algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/h264enc/mpc/algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/h264enc/mpc/algo_hdtv.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/h264enc/mpc/algo_hdtv.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/h264enc/mpc/ddep.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/h264enc/mpc/ddep.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/hybrid_hsem.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/hybrid_hsem.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/hybrid_lsem.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/hybrid_lsem.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/ispctl.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/ispctl.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/jpegdec/mpc/ddep.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/jpegdec/mpc/ddep.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/jpegdec/mpc/jpegdec.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/jpegdec/mpc/jpegdec.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/jpegenc.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/jpegenc.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/jpegenc/mpc/ddep.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/jpegenc/mpc/ddep.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/malloc.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/malloc.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mdrc/effect/libmdrc5b.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/mdrc/effect/libmdrc5b.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mdrc/nmfil/effect.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/mdrc/nmfil/effect.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/memgrabctl.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/memgrabctl.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/misc/controller.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/misc/controller.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/misc/synchronisation.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/misc/synchronisation.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mixer/effect/libmixer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/mixer/effect/libmixer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mixer/nmfil/wrapper.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/mixer/nmfil/wrapper.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg2dec/mpc/ddep.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg2dec/mpc/ddep.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg2dec/mpc/mpeg2dec.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg2dec/mpc/mpeg2dec.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4dec/mpc/algo_deblock.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4dec/mpc/algo_deblock.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4dec/mpc/ddep.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4dec/mpc/ddep.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4dec/mpc/mpeg4dec.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4dec/mpc/mpeg4dec.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4enc.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4enc.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4enc/mpc/brc.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4enc/mpc/brc.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4enc/mpc/ddep.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/mpeg4enc/mpc/ddep.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/nmf/mpc/shared_bufin.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/nmf/mpc/shared_bufin.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/nmf/mpc/shared_bufout.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/nmf/mpc/shared_bufout.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/osttrace/mmdsp.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/osttrace/mmdsp.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/pcmdump.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/pcmdump.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/pcmprocessings/mips.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/pcmprocessings/mips.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/pcmprocessings/wrapper.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/pcmprocessings/wrapper.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/pcm_splitter/nmfil/wrapper.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/pcm_splitter/nmfil/wrapper.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/preload_adm.txt:system/usr/share/nmf/repository/mmdsp_8500_v2/preload_adm.txt \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/preload_imaging.txt:system/usr/share/nmf/repository/mmdsp_8500_v2/preload_imaging.txt \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/preload_mpcee.txt:system/usr/share/nmf/repository/mmdsp_8500_v2/preload_mpcee.txt \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/preload_video.txt:system/usr/share/nmf/repository/mmdsp_8500_v2/preload_video.txt \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/resource_manager.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/resource_manager.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/samplerateconv/effect/libresampling.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/samplerateconv/effect/libresampling.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/samplerateconv/nmfil/wrapper.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/samplerateconv/nmfil/wrapper.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/amr/nmfil/decoder/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/amr/nmfil/decoder/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/amr/nmfil/encoder/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/amr/nmfil/encoder/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/api/set_debug.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/api/set_debug.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/audiolibs/common/dummy.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/audiolibs/common/dummy.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/audiolibs/libmalloc/init.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/audiolibs/libmalloc/init.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/bindings/pcmadapter/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/bindings/pcmadapter/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/bindings/shm/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/bindings/shm/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/bindings/shmpcm/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/bindings/shmpcm/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/comfortnoise/nmfil/effect/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/comfortnoise/nmfil/effect/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/common/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/common/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/decoders/streamed/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/decoders/streamed/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/dmaout/low_power.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/dmaout/low_power.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/dummy.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/dummy.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/emptythisbuffer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/emptythisbuffer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/encoders/streamed/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/encoders/streamed/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/equalizer/nmfil/effect/configure.elf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/equalizer/nmfil/effect/configure.elf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/equalizer/nmfil/effect/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/equalizer/nmfil/effect/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext/api/set_debug.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext/api/set_debug.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext_grab/api/cmd.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext_grab/api/cmd.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext_grabctl/api/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext_grabctl/api/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext_ispctl/api/cfg.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext_ispctl/api/cfg.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext_ispctl/api/cmd.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ext_ispctl/api/cmd.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/fillthisbuffer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/fillthisbuffer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/fsminit.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/fsminit.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/grab/api/cmd.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/grab/api/cmd.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/grabctl/api/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/grabctl/api/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/h264dec/mpc/api/trace_init.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/h264dec/mpc/api/trace_init.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/h264dec/mpc/ddep/api/start_codec.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/h264dec/mpc/ddep/api/start_codec.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/h264enc/mpc/api/mpc_trace_init.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/h264enc/mpc/api/mpc_trace_init.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/h264enc/mpc/ddep/api/start_codec.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/h264enc/mpc/ddep/api/start_codec.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/hst/common/pcmsettings.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/hst/common/pcmsettings.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ispctl/api/cfg.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ispctl/api/cfg.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ispctl/api/cmd.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/ispctl/api/cmd.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegdec/mpc/api/algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegdec/mpc/api/algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegdec/mpc/api/ddep.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegdec/mpc/api/ddep.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegdec/mpc/api/emptythisheader.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegdec/mpc/api/emptythisheader.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegdec/mpc/api/fillthisheader.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegdec/mpc/api/fillthisheader.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegenc/mpc/api/ddep.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/jpegenc/mpc/api/ddep.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/malloc/setheap.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/malloc/setheap.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mdrc/nmfil/effect/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mdrc/nmfil/effect/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/memgrabctl/api/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/memgrabctl/api/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/misc/controller/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/misc/controller/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/misc/samplesplayed.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/misc/samplesplayed.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mixer/nmfil/wrapper/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mixer/nmfil/wrapper/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg2dec/mpc/api/ddep.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg2dec/mpc/api/ddep.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg2dec/mpc/api/emptythisheader.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg2dec/mpc/api/emptythisheader.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg2dec/mpc/api/fillthisheader.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg2dec/mpc/api/fillthisheader.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/arm_nmf/api/Copy.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/arm_nmf/api/Copy.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/mpc/api/algo_deblock.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/mpc/api/algo_deblock.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/mpc/api/ddep.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/mpc/api/ddep.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/mpc/api/emptythisheader.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/mpc/api/emptythisheader.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/mpc/api/fillthisheader.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4dec/mpc/api/fillthisheader.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4enc/mpc/api/ddep.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/mpeg4enc/mpc/api/ddep.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/msp_dma_ctrl_ab8500/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/msp_dma_ctrl_ab8500/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcmdump/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcmdump/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcmprocessings/mips/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcmprocessings/mips/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcmprocessings/wrapper/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcmprocessings/wrapper/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcmsettings.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcmsettings.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcm_splitter/nmfil/wrapper/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/pcm_splitter/nmfil/wrapper/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/resource_manager/api/common_interface_exports.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/resource_manager/api/common_interface_exports.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/resource_manager/api/mtf_resource.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/resource_manager/api/mtf_resource.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/samplerateconv/nmfil/wrapper/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/samplerateconv/nmfil/wrapper/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/sendcommand.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/sendcommand.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/setmemory.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/setmemory.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/shared_emptythisbuffer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/shared_emptythisbuffer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/shared_fillthisbuffer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/shared_fillthisbuffer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/speech_proc/nmf/common/configure_time_align.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/speech_proc/nmf/common/configure_time_align.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/speech_proc/nmf/common/hybrid_emptythisbuffer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/speech_proc/nmf/common/hybrid_emptythisbuffer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/speech_proc/nmf/common/hybrid_fillthisbuffer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/speech_proc/nmf/common/hybrid_fillthisbuffer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/speech_proc/nmf/mpc/dsp_port/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/speech_proc/nmf/mpc/dsp_port/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/spl/nmfil/effect/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/spl/nmfil/effect/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/transducer_equalizer/nmfil/effect/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/transducer_equalizer/nmfil/effect/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/vc1dec/mpc/api/mpc_trace_init.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/vc1dec/mpc/api/mpc_trace_init.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/vc1dec/mpc/ddep/api/start_codec.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/vc1dec/mpc/ddep/api/start_codec.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/volctrl/nmfil/effect/configure.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_sk/volctrl/nmfil/effect/configure.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/speech_proc/nmf/mpc/dsp_port.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/speech_proc/nmf/mpc/dsp_port.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/speech_proc/nmf/mpc/hybrid_buffer/arm2mpc.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/speech_proc/nmf/mpc/hybrid_buffer/arm2mpc.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/speech_proc/nmf/mpc/hybrid_buffer/mpc2arm.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/speech_proc/nmf/mpc/hybrid_buffer/mpc2arm.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/speech_proc/nmf/mpc/time_align.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/speech_proc/nmf/mpc/time_align.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/spl/effect/libspl.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/spl/effect/libspl.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/spl/nmfil/effect.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/spl/nmfil/effect.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/debug/mpc/api/msg.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/debug/mpc/api/msg.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/dmaout/low_signal.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/dmaout/low_signal.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/emptythisbuffer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/emptythisbuffer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/eventhandler.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/eventhandler.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_grab/api/alert.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_grab/api/alert.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_grabctl/api/acknowledges.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_grabctl/api/acknowledges.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_grabctl/api/error.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_grabctl/api/error.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_grabctl/api/reportcurves.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_grabctl/api/reportcurves.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_ispctl/api/alert.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ext_ispctl/api/alert.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/fillthisbuffer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/fillthisbuffer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/grab/api/alert.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/grab/api/alert.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/grabctl/api/acknowledges.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/grabctl/api/acknowledges.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/grabctl/api/error.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/grabctl/api/error.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/grabctl/api/reportcurves.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/grabctl/api/reportcurves.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264dec/mpc/api/end_algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264dec/mpc/api/end_algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264dec/mpc/api/end_cabac.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264dec/mpc/api/end_cabac.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264dec/mpc/ddep/api/end_codec.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264dec/mpc/ddep/api/end_codec.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264enc/mpc/api/end_algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264enc/mpc/api/end_algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264enc/mpc/api/mpc_trace_init_ack.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264enc/mpc/api/mpc_trace_init_ack.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264enc/mpc/ddep/api/end_codec.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/h264enc/mpc/ddep/api/end_codec.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/interruptdfc.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/interruptdfc.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ispctl/api/alert.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/ispctl/api/alert.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegdec/mpc/api/ddep.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegdec/mpc/api/ddep.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegdec/mpc/api/emptythisheader.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegdec/mpc/api/emptythisheader.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegdec/mpc/api/end_algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegdec/mpc/api/end_algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegdec/mpc/api/fillthisheader.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegdec/mpc/api/fillthisheader.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegenc/mpc/api/portSettings.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/jpegenc/mpc/api/portSettings.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg2dec/mpc/api/ddep.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg2dec/mpc/api/ddep.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg2dec/mpc/api/emptythisheader.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg2dec/mpc/api/emptythisheader.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg2dec/mpc/api/end_algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg2dec/mpc/api/end_algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg2dec/mpc/api/fillthisheader.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg2dec/mpc/api/fillthisheader.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/arm_nmf/api/Copy.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/arm_nmf/api/Copy.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/ddep.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/ddep.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/emptythisheader.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/emptythisheader.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/end_algodeblock.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/end_algodeblock.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/end_algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/end_algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/fillthisheader.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/mpeg4dec/mpc/api/fillthisheader.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/msp_dma_ctrl_ab8500/bitclock.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/msp_dma_ctrl_ab8500/bitclock.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/pcmdump/complete.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/pcmdump/complete.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/pcmsettings.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/pcmsettings.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/requestmemory.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/requestmemory.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/resource_manager/api/inform_resource_status.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/resource_manager/api/inform_resource_status.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/shared_emptythisbuffer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/shared_emptythisbuffer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/shared_fillthisbuffer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/shared_fillthisbuffer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/speech_proc/nmf/common/hybrid_emptythisbuffer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/speech_proc/nmf/common/hybrid_emptythisbuffer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/speech_proc/nmf/common/hybrid_fillthisbuffer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/speech_proc/nmf/common/hybrid_fillthisbuffer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/speech_proc/nmf/common/pcmsettings.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/speech_proc/nmf/common/pcmsettings.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/vc1dec/mpc/api/end_algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/vc1dec/mpc/api/end_algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/vc1dec/mpc/ddep/api/end_codec.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/vc1dec/mpc/ddep/api/end_codec.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/_st/vpp/mpc/api/end_algo.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/_st/vpp/mpc/api/end_algo.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/synchronous_hsem.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/synchronous_hsem.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/synchronous_lsem.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/synchronous_lsem.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/transducer_equalizer/effect/libtransducer_equalizer.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/transducer_equalizer/effect/libtransducer_equalizer.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/transducer_equalizer/nmfil/effect.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/transducer_equalizer/nmfil/effect.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/vc1dec/mpc/adapter.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/vc1dec/mpc/adapter.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/vc1dec/mpc/ddep.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/vc1dec/mpc/ddep.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/vc1dec/mpc/vc1dec.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/vc1dec/mpc/vc1dec.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/volctrl/effect/libvolctrl.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/volctrl/effect/libvolctrl.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/volctrl/nmfil/effect.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/volctrl/nmfil/effect.elf4nmf \
    $(COMMON_PATH)/system/usr/share/nmf/repository/mmdsp_8500_v2/vpp.elf4nmf:system/usr/share/nmf/repository/mmdsp_8500_v2/vpp.elf4nmf

# LVVEFS config
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/LVVEFS_Rx_Configuration.txt:system/etc/LVVEFS_tuning_parameters/LVVEFS_Rx_Configuration.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/LVVEFS_Tx_Configuration.txt:system/etc/LVVEFS_tuning_parameters/LVVEFS_Tx_Configuration.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF_VOIP.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF_VOIP.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF_VT.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF_VT.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF_WB.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF_WB.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON_VOIP.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON_VOIP.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON_VT.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON_VT.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON_WB.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON_WB.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_EXTRA.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_EXTRA.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_EXTRA_WB.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_EXTRA_WB.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_VOIP.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_VOIP.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_VT.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_VT.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_WB.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HANDSET_WB.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADPHONE.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADPHONE.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADPHONE_VOIP.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADPHONE_VOIP.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADPHONE_VT.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADPHONE_VT.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADPHONE_WB.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADPHONE_WB.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADSET.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADSET.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADSET_VOIP.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADSET_VOIP.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADSET_VT.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADSET_VT.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADSET_WB.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_HEADSET_WB.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_LOOPBACK.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_LOOPBACK.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_EXTRA.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_EXTRA.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_EXTRA_WB.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_EXTRA_WB.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_VOIP.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_VOIP.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_VT.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_VT.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_WB.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_WB.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECOFF.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECOFF.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECOFF_VOIP.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECOFF_VOIP.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECOFF_VT.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECOFF_VT.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECOFF_WB.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECOFF_WB.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECON.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECON.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECON_VOIP.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECON_VOIP.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECON_VT.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECON_VT.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECON_WB.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_BTNRECON_WB.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_EXTRA.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_EXTRA.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_EXTRA_WB.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_EXTRA_WB.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_VOIP.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_VOIP.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_VT.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_VT.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_WB.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HANDSET_WB.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADPHONE.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADPHONE.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADPHONE_VOIP.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADPHONE_VOIP.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADPHONE_VT.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADPHONE_VT.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADPHONE_WB.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADPHONE_WB.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADSET.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADSET.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADSET_VOIP.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADSET_VOIP.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADSET_VT.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADSET_VT.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADSET_WB.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_HEADSET_WB.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_LOOPBACK.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_LOOPBACK.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_EXTRA.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_EXTRA.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_EXTRA_WB.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_EXTRA_WB.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_VOIP.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_VOIP.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_VT.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_VT.txt \
    $(COMMON_PATH)/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_WB.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_WB.txt

# apk
#PRODUCT_COPY_FILES += \
#    $(COMMON_PATH)/system/app/incallfix.apk:/system/app/incallfix/incallfix.apk

# KernelSettings
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/app/ChronoKernelSettings.apk:/system/app/ChronoKernelSettings/ChronoKernelSettings.apk

# Init.d scripts for Chrono Kernel 3.
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/etc/init.d/00autoload:system/etc/init.d/00autoload \
    $(COMMON_PATH)/system/autoload/empty:system/lib/modules/autoload/empty \
    $(COMMON_PATH)/system/autoload/10dynamic:system/etc/init.d/10dynamic \
    $(COMMON_PATH)/system/autoload/60zram:system/etc/init.d/60zram \
    $(COMMON_PATH)/system/autoload/20minfree:system/etc/init.d/20minfree \
    $(COMMON_PATH)/system/autoload/65tweaks:system/etc/init.d/65tweaks

# Fix com.google.android.gms.persistent killing script
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/autoload/roguegms:system/etc/init.d/roguegms

# Ramdisk partition Tool
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/scripts/check_ramdisk_partition.sh:install/bin/check_ramdisk_partition.sh \
    $(COMMON_PATH)/system/scripts/main.sh:install/bin/main.sh

# Ramdisk scripts for Chrono Kernel 5
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/scripts1/recovery_install.sh:install/bin/recovery_install.sh

# Init.d scripts for Chrono Kernel 5
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/scripts1/00userinit:system/etc/init.d/00userinit \
    $(COMMON_PATH)/system/scripts1/modules_list.txt:install/bin/modules_list.txt

# bootanimation
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/bootanimation/480.zip:system/media/bootanimation.zip

# APP REMOVAL SCRIPT
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/addon.d/60-removal.sh:system/addon.d/60-removal.sh

# powerhal
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/autoload/999powerhal:system/etc/init.d/999powerhal

# video stop sound
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/sounds/VideoStop.ogg:system/media/audio/ui/VideoStop.ogg

# toybox 23
# PRODUCT_COPY_FILES += \
#    $(COMMON_PATH)/system/autoload5/toybox:system/bin/toybox

# SCRIPT godmode
#PRODUCT_COPY_FILES += \
#    $(COMMON_PATH)/system/autoload/godmode:system/etc/init.d/godmode

# macloader
#PRODUCT_COPY_FILES += \
#    $(COMMON_PATH)/system/autoload5/macloader:system/bin/macloader

# libraries
#PRODUCT_COPY_FILES += \
#    $(COMMON_PATH)/system/lib/libstlport.so:system/lib/libstlport.so

#PRODUCT_COPY_FILES += \
#    $(COMMON_PATH)/system/lib/libpower.so:system/lib/libpower.so

# Proprietary latinime lib needed for Keyboard swyping
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/system/lib/libjni_unbundled_latinimegoogle.so:system/lib/libjni_unbundled_latinimegoogle.so
