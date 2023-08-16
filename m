Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 435E877D7D1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 03:44:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 623C841BA1;
	Wed, 16 Aug 2023 01:44:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 623C841BA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692150282;
	bh=5lYhPJCEZkVkoyvdoQ7buyo26xEPd3MaIhmh/he3BIo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zSRVgLZC/1mGtAHZJMN9ik7XT5jJtsb4Fyc8z916xIBYDPdAP6LLsvMjSOwlhNsna
	 kGAjTWvyHnPvFm96W+pAPF0kidT+BlvrjbeeEAqImLnIZ1j2XqBU3t7nEq/580rCbE
	 U15MyQS7rNnf5qw8Up/8BGJSkmVNXdZ/KB2kr1hhtwSn1MKD6s9CkA8e1U2cGlfLhQ
	 DBgB61xPa1aoTZTzjqLtpZgBft7Xb/+FoxGdTsEmifQBT5cvDKaSw9RndyAVj8P35i
	 dgHdgv8hsgDQiTwL9IT4Xfl2GPa3o9BC4w3K/2djcoeD3XAjMGqaHF9IEAsmA1VmGX
	 4+R8AfNJthFzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j8PRSngpKwFl; Wed, 16 Aug 2023 01:44:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99FC941B9B;
	Wed, 16 Aug 2023 01:44:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99FC941B9B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F8E81BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 01:44:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 445FC414CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 01:44:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 445FC414CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FLkIT577Pf5L for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 01:44:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D16AE4119B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 01:44:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D16AE4119B
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="436317165"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="436317165"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 18:44:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="763468446"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="763468446"
Received: from lkp-server02.sh.intel.com (HELO b5fb8d9e1ffc) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 15 Aug 2023 18:44:30 -0700
Received: from kbuild by b5fb8d9e1ffc with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qW5aH-0001OB-0U;
 Wed, 16 Aug 2023 01:44:29 +0000
Date: Wed, 16 Aug 2023 09:44:07 +0800
From: kernel test robot <lkp@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308160903.rp10O1O3-lkp@intel.com>
References: <20230815223551.1238091-4-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230815223551.1238091-4-jacob.e.keller@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692150273; x=1723686273;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=FDEsghvW21gCKAEfQXUhf8QnBKTQr3ORn2IeCI3ZNn4=;
 b=WiOzFGF90ULTYDK4Yq/u9N38RGTobIPDQoWZdUfOf63DygsXhHdzv34G
 WVXHoccfw8E3AiGj9FwpAgHXYJq7gJa9W6+nSCkzGgOIIvq+rOsOSlRK+
 s8B1YcIRBvZvp+bugpfByvmcHtvNcrHBeewoR7kexuImwPJNY3svZKZZn
 12/d4MNkKya9T4GMyO36nqDfdPy3MP1HFGz/krsQ4Okf4cLzTMJF+lc8u
 hZCyxKHvNIpYwK2eoO2qQ8pU9INsNAv1TAU9gQH91jovYqsOuZTu6aVEu
 VvaRdGGPsO3AwmdVktSUgnFT/9xCNh0+aI2PNq6ax2rITkyppiB3skc3j
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WiOzFGF9
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: check the netlist
 before enabling ICE_F_SMA_CTRL
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jacob,

kernel test robot noticed the following build errors:

[auto build test ERROR on 361b86237e1afbf2c3be7cb604b6aac6f8b8c38c]

url:    https://github.com/intel-lab-lkp/linux/commits/Jacob-Keller/ice-remove-ICE_F_PTP_EXTTS-feature-flag/20230816-063804
base:   361b86237e1afbf2c3be7cb604b6aac6f8b8c38c
patch link:    https://lore.kernel.org/r/20230815223551.1238091-4-jacob.e.keller%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: check the netlist before enabling ICE_F_SMA_CTRL
config: x86_64-buildonly-randconfig-r001-20230816 (https://download.01.org/0day-ci/archive/20230816/202308160903.rp10O1O3-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce: (https://download.01.org/0day-ci/archive/20230816/202308160903.rp10O1O3-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308160903.rp10O1O3-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/net/arcnet/com20020_cs.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/net/ethernet/broadcom/bcm4908_enet.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/net/ethernet/freescale/enetc/fsl-enetc-core.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/net/ethernet/litex/litex_liteeth.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/net/dummy.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/net/eql.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/net/appletalk/ipddp.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/net/plip/plip.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/net/sungem_phy.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/net/ieee802154/fakelb.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/uio/uio_aec.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/uio/uio_pruss.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/pcmcia/yenta_socket.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/gadget/libcomposite.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/gadget/function/usb_f_ss_lb.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/gadget/function/u_ether.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/gadget/function/usb_f_ncm.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/gadget/function/usb_f_rndis.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/gadget/function/usb_f_fs.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/gadget/function/usb_f_uvc.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/gadget/function/usb_f_midi.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/gadget/function/usb_f_hid.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/gadget/legacy/g_zero.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/i2c/busses/i2c-qup.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/media/common/uvc.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/media/v4l2-core/v4l2-async.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/media/v4l2-core/v4l2-fwnode.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/media/radio/si470x/radio-si470x-common.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/hwmon/asus_atk0110.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/thermal/intel/intel_soc_dts_iosf.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/thermal/intel/int340x_thermal/processor_thermal_rapl.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/thermal/intel/int340x_thermal/processor_thermal_rfim.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/thermal/intel/int340x_thermal/processor_thermal_mbox.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/watchdog/menz69_wdt.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/cpuidle/cpuidle-haltpoll.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/leds/blink/leds-bcm63138.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/leds/flash/leds-rt4505.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/devfreq/governor_userspace.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/perf/fsl_imx8_ddr_perf.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/hwtracing/intel_th/intel_th_msu_sink.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/nvmem/nvmem_brcm_nvram.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/interconnect/imx/imx-interconnect.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/interconnect/imx/imx8mm-interconnect.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/interconnect/imx/imx8mq-interconnect.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/interconnect/imx/imx8mn-interconnect.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/greybus/greybus.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/fsi/fsi-core.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/fsi/fsi-scom.o
WARNING: modpost: missing MODULE_DESCRIPTION() in sound/core/snd-pcm-dmaengine.o
WARNING: modpost: missing MODULE_DESCRIPTION() in sound/soc/codecs/snd-soc-ab8500-codec.o
WARNING: modpost: missing MODULE_DESCRIPTION() in sound/soc/codecs/snd-soc-sigmadsp.o
WARNING: modpost: missing MODULE_DESCRIPTION() in sound/soc/codecs/snd-soc-wm-adsp.o
WARNING: modpost: missing MODULE_DESCRIPTION() in sound/soc/amd/acp/snd-acp-i2s.o
WARNING: modpost: missing MODULE_DESCRIPTION() in sound/soc/amd/acp/snd-acp-pdm.o
WARNING: modpost: missing MODULE_DESCRIPTION() in sound/soc/amd/acp/snd-acp-pci.o
WARNING: modpost: missing MODULE_DESCRIPTION() in sound/soc/amd/acp/snd-acp-mach.o
WARNING: modpost: missing MODULE_DESCRIPTION() in sound/soc/amd/snd-acp-config.o
WARNING: modpost: missing MODULE_DESCRIPTION() in sound/soc/fsl/imx-pcm-dma.o
WARNING: modpost: missing MODULE_DESCRIPTION() in sound/soc/qcom/snd-soc-qcom-common.o
WARNING: modpost: missing MODULE_DESCRIPTION() in sound/ac97_bus.o
WARNING: modpost: missing MODULE_DESCRIPTION() in samples/vfio-mdev/mdpy.o
WARNING: modpost: missing MODULE_DESCRIPTION() in samples/kfifo/bytestream-example.o
WARNING: modpost: missing MODULE_DESCRIPTION() in samples/kfifo/dma-example.o
WARNING: modpost: missing MODULE_DESCRIPTION() in samples/kfifo/inttype-example.o
WARNING: modpost: missing MODULE_DESCRIPTION() in samples/kfifo/record-example.o
WARNING: modpost: missing MODULE_DESCRIPTION() in samples/kmemleak/kmemleak-test.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/802/stp.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/802/mrp.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/sched/sch_hfsc.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/sched/sch_ingress.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/sched/sch_teql.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/sched/sch_prio.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/sched/sch_netem.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/sched/sch_drr.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/sched/sch_ets.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/sched/sch_choke.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/sched/sch_etf.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/sched/sch_taprio.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/ipv4/ipip.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/ipv4/ah4.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/ipv4/xfrm4_tunnel.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/ipv4/tunnel4.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/ipv4/inet_diag.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/ipv4/tcp_diag.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/ipv4/udp_diag.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/ipv4/raw_diag.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/ipv6/sit.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/8021q/8021q.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/vmw_vsock/vsock_diag.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/bridge/bridge.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/atm/atm.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/sctp/sctp_diag.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/caif/caif.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/caif/chnl_net.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/caif/caif_socket.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/ieee802154/6lowpan/ieee802154_6lowpan.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/ieee802154/ieee802154_socket.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/nfc/nci/nci.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/nfc/nci/nci_spi.o
WARNING: modpost: missing MODULE_DESCRIPTION() in net/nfc/nfc_digital.o
>> ERROR: modpost: "ice_is_clock_mux_present_e810t" [drivers/net/ethernet/intel/ice/ice.ko] undefined!

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
