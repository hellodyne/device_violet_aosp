# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    aaudio.hw_burst_min_usec=2000 \
    aaudio.mmap_exclusive_policy=2 \
    aaudio.mmap_policy=2 \
    af.fast_track_multiplier=1 \
    vendor.audio.adm.buffering.ms=3 \
    vendor.voice.path.for.pcm.voip=true

# Audio Features
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.feature.a2dp_offload.enable=true \
    vendor.audio.feature.concurrent_capture.enable=false \
    vendor.audio.feature.external_dsp.enable=false \
    vendor.audio.feature.external_speaker.enable=false \
    vendor.audio.feature.hfp.enable=true \
    vendor.audio.feature.hwdep_cal.enable=false \
    vendor.audio.feature.incall_music.enable=true \
    vendor.audio.feature.maxx_audio.enable=false \
    vendor.audio.feature.ras.enable=true \
    vendor.audio.feature.snd_mon.enable=true \
    vendor.audio.feature.spkr_prot.enable=false \
    vendor.audio.feature.usb_offload.enable=true

# Audio fluence, ns, aec property, voice and media volume steps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.audio.sdk.fluencetype=fluencepro \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.speaker=true \
    persist.vendor.audio.fluence.voicecomm=true \
    persist.vendor.audio.fluence.voicerec=false \
    ro.config.vc_call_vol_steps=7 \
    ro.config.media_vol_steps=25

# Bluetooth SoC
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.qcom.bluetooth.soc=cherokee

# Bluetooth WiPower
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.bluetooth.emb_wp_mode=false \
    ro.vendor.bluetooth.wipower=false

# Bluetooth A2DP offload
PRODUCT_PROPERTY_OVERRIDES += \
    persist.bluetooth.a2dp_offload.cap=sbc-aac-aptx-aptxhd-ldac \
    persist.bluetooth.a2dp_offload.disabled=false \
    persist.vendor.bt.aac_frm_ctl.enabled=true \
    ro.bluetooth.a2dp_offload.supported=true

# Enable Codec 2.0
PRODUCT_PROPERTY_OVERRIDES += \
    debug.media.codec2=2 \
    debug.stagefright.ccodec=4 \
    debug.stagefright.omx_default_rank=512

# Enable modem logging
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.radio.log_loc="/data/vendor/modem_dump" \
    ro.vendor.radio.log_prefix="modem_log_"

# Disable OMX
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.media.omx=0

# Create input surface on the framework side
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.c2inputsurface=-1

# Enable avgqp
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.qc2.venc.avgqp.enable=1

# Graphics - Opengles
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610

# Graphics - Kernel
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.enable_kernel_idle_timer=true

# Graphics - Sensortype / Paneltype / QDCM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.display.paneltype=2 \
    ro.vendor.display.sensortype=2 \
    vendor.display.qdcm.mode_combine=1

# Graphics - Foss
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.display.foss=1 \
    vendor.display.foss.config=1 \
    vendor.display.foss.config_path=/vendor/etc/FOSSConfig.xml

# Graphics - Color
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.enable_default_color_mode=0

# Graphics - Composition
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.comp_mask=65536

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp

# Set lmkd options
PRODUCT_PRODUCT_PROPERTIES += \
   ro.config.low_ram=false \
   ro.lmk.kill_heaviest_task=true \
   ro.lmk.kill_timeout_ms=100 \
   ro.lmk.use_minfree_levels=true \
   ro.lmk.log_stats=true

# Keystore
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore_desede=true

# Keyguard
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true

# OEM Unlock
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.oem_unlock_supported=1

# Override heap growth limit due to high display density on device
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=256m

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds \
    persist.vendor.cne.feature=1 \
    persist.vendor.data.iwlan.enable=true \
    persist.vendor.radio.RATE_ADAPT_ENABLE=1 \
    persist.vendor.radio.ROTATION_ENABLE=1 \
    persist.vendor.radio.VT_ENABLE=1 \
    persist.vendor.radio.VT_HYBRID_ENABLE=1 \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.data_ltd_sys_ind=1 \
    persist.vendor.radio.videopause.mode=1 \
    persist.vendor.radio.multisim_switch_support=true \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.data_con_rprt=true \
    persist.vendor.radio.relay_oprt_change=1 \
    persist.vendor.radio.no_wait_for_card=1 \
    persist.vendor.radio.sap_silent_pin=1 \
    persist.rcs.supported=1 \
    vendor.rild.libpath=/vendor/lib64/libril-qc-hal-qmi.so \
    persist.vendor.radio.procedure_bytes=SKIP

# Radio - Set default CDMA subscription to RUIM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_cdma_sub=0

# Radio - Disable snapshot timer
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.snapshot_enabled=0 \
    persist.vendor.radio.snapshot_timer=0

# ZRAM writeback
PRODUCT_PROPERTY_OVERRIDES += \
    ro.zram.mark_idle_delay_mins=60 \
    ro.zram.first_wb_delay_mins=180 \
    ro.zram.periodic_wb_delay_hours=24

# Subsystem silent restart
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.sys.ssr.restart_level=modem,slpi,adsp

# SurfaceFlinger
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.protected_contents=true \
    ro.surface_flinger.set_display_power_timer_ms=1000 \
    ro.surface_flinger.set_idle_timer_ms=80 \
    ro.surface_flinger.set_touch_timer_ms=200 \
    ro.surface_flinger.support_kernel_idle_timer=true \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000 \
    ro.surface_flinger.wcg_composition_dataspace=143261696

# SurfaceFlinger - Enable backpressure for GL comp
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.enable_gl_backpressure=1

# SurfaceFlinger - Enable EGL image tracking on SF for b/137514000
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.enable_egl_image_tracker=1

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.early_phase_offset_ns=500000 \
    debug.sf.early_app_phase_offset_ns=500000 \
    debug.sf.early_gl_phase_offset_ns=3000000 \
    debug.sf.early_gl_app_phase_offset_ns=15000000

