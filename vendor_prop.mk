# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio.deep_buffer.media=true \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    audio.sys.noisy.broadcast.delay=600 \
    audio.sys.offload.pstimeout.secs=3 \
    persist.vendor.audio.ras.enabled=false \
    ro.vendor.audio.sdk.fluencetype=none \
    ro.vendor.audio.sdk.ssr=false \
    vendor.audio.adm.buffering.ms=12 \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.flac.sw.decoder.24bit=true \
    vendor.audio.hw.aac.encoder=true \
    vendor.audio.offload.buffer.size.kb=32 \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    vendor.audio.offload.track.enable=true \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.safx.pbe.enabled=false \
    vendor.audio.tunnel.encode=false \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true \
    vendor.audio_hal.period_multiplier=3 \
    vendor.audio_hal.period_size=192 \
    vendor.voice.path.for.pcm.voip=true

# Audio fluence, ns, aec property, voice and media volume steps
PRODUCT_PROPERTY_OVERRIDES += \
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

# Enable Codec 2.0
PRODUCT_PROPERTY_OVERRIDES += \
    debug.media.codec2=2 \
    debug.stagefright.ccodec=4 \
    debug.stagefright.omx_default_rank=512

# Disable OMX
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.media.omx=0

# Create input surface on the framework side
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.c2inputsurface=-1

# Enable avgqp
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.qc2.venc.avgqp.enable=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.gralloc.enable_fb_ubwc=1 \
    ro.opengles.version=196610 \
    ro.vendor.display.sensortype=2 \
    vendor.display.comp_mask=0 \
    vendor.display.dataspace_saturation_matrix=1.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,1.0 \
    vendor.display.disable_decimation=1 \
    vendor.display.disable_hw_recovery_dump=1 \
    vendor.display.enable_default_color_mode=0 \
    vendor.gralloc.disable_ubwc=0

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

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# OEM Unlock
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.oem_unlock_supported=1

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

# Subsystem silent restart
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.sys.ssr.restart_level=modem,slpi,adsp

# SurfaceFlinger
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.max_virtual_display_dimension=4096 \
    ro.surface_flinger.protected_contents=true \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000

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

