/android/android-ndk-r4b/build/prebuilt/linux-x86/arm-eabi-4.4.0/bin/arm-eabi-gcc -o libmplayertest.so pnm_loader.o  command.o m_property.o mixer.o mp_fifo.o mplayer.o parser-mpcmd.o input/input.o libao2/ao_mpegpes.o libao2/ao_null.o libao2/ao_pcm.o libvo/vo_png.o libao2/audio_out.o libvo/vo_mpegpes.o libvo/aspect.o libvo/geometry.o  libvo/video_out.o  libvo/vo_null.o input/appleir.o  udp_sync.o  asxparser.o bstr.o codec-cfg.o cpudetect.o edl.o sub/spudec.o sub/unrar_exec.o sub/eosd.o sub/find_sub.o fmt-conversion.o m_config.o m_option.o m_struct.o mp_msg.o mpcommon.o parser-cfg.o path.o playtree.o playtreeparser.o  sub/sub_cc.o subopt-helper.o sub/subreader.o sub/vobsub.o libaf/af.o libaf/af_center.o libaf/af_channels.o libaf/af_comp.o libaf/af_delay.o libaf/af_dummy.o libaf/af_equalizer.o libaf/af_extrastereo.o libaf/af_format.o libaf/af_gate.o libaf/af_hrtf.o libaf/af_karaoke.o libaf/af_pan.o libaf/af_resample.o libaf/af_scaletempo.o libaf/af_sinesuppress.o libaf/af_stats.o libaf/af_sub.o libaf/af_surround.o libaf/af_sweep.o libaf/af_tools.o libaf/af_volnorm.o libaf/af_volume.o libaf/filter.o libaf/format.o libaf/reorder_ch.o libaf/window.o ffmpeg/libavformat/wtv.o ffmpeg/libavformat/wav.o libmpcodecs/vf_stereo3d.o libmpcodecs/ad.o libmpcodecs/ad_alaw.o libmpcodecs/ad_dk3adpcm.o libmpcodecs/ad_dvdpcm.o libmpcodecs/ad_hwac3.o libmpcodecs/ad_hwmpa.o libmpcodecs/ad_imaadpcm.o libmpcodecs/ad_msadpcm.o libmpcodecs/ad_pcm.o libmpcodecs/dec_audio.o libmpcodecs/dec_teletext.o libmpcodecs/dec_video.o libmpcodecs/img_format.o libmpcodecs/mp_image.o libmpcodecs/pullup.o libmpcodecs/vd.o libmpcodecs/vd_hmblck.o libmpcodecs/vd_lzo.o libmpcodecs/vd_mpegpes.o libmpcodecs/vd_mtga.o libmpcodecs/vd_null.o libmpcodecs/vd_raw.o libmpcodecs/vd_sgi.o libmpcodecs/vf.o libmpcodecs/vf_1bpp.o libmpcodecs/vf_2xsai.o libmpcodecs/vf_blackframe.o libmpcodecs/vf_boxblur.o libmpcodecs/vf_crop.o libmpcodecs/vf_cropdetect.o libmpcodecs/vf_decimate.o libmpcodecs/vf_delogo.o libmpcodecs/vf_denoise3d.o libmpcodecs/vf_detc.o libmpcodecs/vf_dint.o libmpcodecs/vf_divtc.o libmpcodecs/vf_down3dright.o libmpcodecs/vf_dsize.o libmpcodecs/vf_dvbscale.o libmpcodecs/vf_eq.o libmpcodecs/vf_eq2.o libmpcodecs/vf_expand.o libmpcodecs/vf_field.o libmpcodecs/vf_fil.o libmpcodecs/vf_filmdint.o libmpcodecs/vf_fixpts.o libmpcodecs/vf_flip.o libmpcodecs/vf_format.o libmpcodecs/vf_framestep.o libmpcodecs/vf_gradfun.o libmpcodecs/vf_halfpack.o libmpcodecs/vf_harddup.o libmpcodecs/vf_hqdn3d.o libmpcodecs/vf_hue.o libmpcodecs/vf_il.o libmpcodecs/vf_ilpack.o libmpcodecs/vf_ivtc.o libmpcodecs/vf_kerndeint.o libmpcodecs/vf_mirror.o libmpcodecs/vf_noformat.o libmpcodecs/vf_noise.o libmpcodecs/vf_ow.o libmpcodecs/vf_palette.o libmpcodecs/vf_perspective.o libmpcodecs/vf_phase.o libmpcodecs/vf_pp7.o libmpcodecs/vf_pullup.o libmpcodecs/vf_rectangle.o libmpcodecs/vf_remove_logo.o libmpcodecs/vf_rgbtest.o libmpcodecs/vf_rotate.o libmpcodecs/vf_sab.o libmpcodecs/vf_scale.o libmpcodecs/vf_smartblur.o libmpcodecs/vf_softpulldown.o libmpcodecs/vf_softskip.o libmpcodecs/vf_swapuv.o libmpcodecs/vf_telecine.o libmpcodecs/vf_test.o libmpcodecs/vf_tfields.o libmpcodecs/vf_tile.o libmpcodecs/vf_tinterlace.o libmpcodecs/vf_unsharp.o libmpcodecs/vf_vo.o libmpcodecs/vf_yadif.o libmpcodecs/vf_yuvcsp.o libmpcodecs/vf_yvu9.o libmpdemux/aac_hdr.o libmpdemux/asfheader.o libmpdemux/aviheader.o libmpdemux/aviprint.o libmpdemux/demuxer.o libmpdemux/demux_aac.o libmpdemux/demux_asf.o libmpdemux/demux_audio.o libmpdemux/demux_avi.o libmpdemux/demux_demuxers.o libmpdemux/demux_film.o libmpdemux/demux_fli.o libmpdemux/demux_lmlm4.o libmpdemux/demux_mf.o libmpdemux/demux_mkv.o libmpdemux/demux_mov.o libmpdemux/demux_mpg.o libmpdemux/demux_nsv.o libmpdemux/demux_pva.o libmpdemux/demux_rawaudio.o libmpdemux/demux_rawvideo.o libmpdemux/demux_real.o libmpdemux/demux_roq.o libmpdemux/demux_smjpeg.o libmpdemux/demux_ts.o libmpdemux/demux_ty.o libmpdemux/demux_ty_osd.o libmpdemux/demux_viv.o libmpdemux/demux_vqf.o libmpdemux/demux_y4m.o libmpdemux/ebml.o libmpdemux/extension.o libmpdemux/mf.o libmpdemux/mp3_hdr.o libmpdemux/mp_taglists.o libmpdemux/mpeg_hdr.o libmpdemux/mpeg_packetizer.o libmpdemux/parse_es.o libmpdemux/parse_mp4.o libmpdemux/video.o libmpdemux/yuv4mpeg.o libmpdemux/yuv4mpeg_ratio.o sub/osd.o sub/sub.o osdep/getch2.o osdep/timer-linux.o stream/open.o stream/stream.o stream/stream_bd.o stream/stream_cue.o stream/stream_file.o stream/stream_mf.o stream/stream_null.o stream/url.o sub/font_load.o  libvo/aclib.o av_opts.o sub/av_sub.o libaf/af_lavcresample.o libmpcodecs/ad_ffmpeg.o libmpcodecs/vd_ffmpeg.o libmpcodecs/vf_lavc.o libmpcodecs/vf_lavcdeint.o libmpcodecs/vf_pp.o libmpcodecs/vf_screenshot.o libmpdemux/demux_lavf.o stream/stream_ffmpeg.o libaf/af_lavcac3enc.o libmpcodecs/vf_fspp.o libmpcodecs/vf_geq.o libmpcodecs/vf_mcdeint.o libmpcodecs/vf_qp.o libmpcodecs/vf_spp.o libmpcodecs/vf_uspp.o  libmpcodecs/vf_bmovl.o libaf/af_export.o osdep/mmap_anon.o stream/stream_rtsp.o stream/freesdp/common.o stream/freesdp/errorlist.o stream/freesdp/parser.o stream/librtsp/rtsp.o stream/librtsp/rtsp_rtp.o stream/librtsp/rtsp_session.o osdep/shmem.o osdep/swab.o stream/stream_netstream.o stream/asf_mmst_streaming.o stream/asf_streaming.o stream/cookies.o stream/http.o stream/network.o stream/pnm.o stream/rtp.o stream/udp.o stream/tcp.o stream/stream_rtp.o stream/stream_udp.o stream/realrtsp/asmrp.o stream/realrtsp/real.o stream/realrtsp/rmff.o stream/realrtsp/sdpplin.o stream/realrtsp/xbuffer.o   stream/cache2.o  ffmpeg/libavformat/libavformat.a ffmpeg/libavcodec/libavcodec.a ffmpeg/libavcore/libavcore.a ffmpeg/libavutil/libavutil.a ffmpeg/libpostproc/libpostproc.a ffmpeg/libswscale/libswscale.a -Wl,-z,noexecstack     -lz -lz   -rdynamic  -nostdlib  -lc -L /android/android-ndk-r4b/build/platforms/android-8/arch-arm/usr/lib/ -Wl,-rpath-link=/android/android-ndk-r4b/build/platforms/android-8/arch-arm/usr/lib/  -I /android/android-ndk-r4b/build/platforms/android-8/arch-arm/usr/include/  -lc     ./libmpdemux/demux_realaud.o   -fPIC  -lgcc  -mandroid   -march=armv6 libmpcodecs/ad_libmad.o ../libmad-0.15.1b/*.o   sub/font_load_ft.o -L/android/android-arm/sysroot/usr/lib  libmpcodecs/vd_mpng.o  -liconv -lpng -lfontconfig  -lfreetype  -lxml2  -Wl,--no-enum-size-warning     -lGLESv1_CM  libmpcodecs/ad_mpg123.o /android/mpg123/jni/obj/local/armeabi/libmpg123.a -L /android/pelya-latest/project/obj/local/armeabi/ -lsdl-1.2 libmpcodecs/ad_faad.o /home/backup/mplayer/libs/armeabi/libfaad2.so   libmpcodecs/vf_ass.o sub/subassconvert.o sub/ass_mp.o libass/*.o -lfreetype -lm libao2/ao_sdl.o libvo/vo_android.o android-mplayer.o -lm  -llog
