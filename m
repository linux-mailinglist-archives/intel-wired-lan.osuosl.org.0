Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463DB569CAB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Jul 2022 10:08:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DC9F40CA4;
	Thu,  7 Jul 2022 08:08:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DC9F40CA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657181330;
	bh=dl86A1sh3Pv7XiEECUVmmisxNGQH2jVMG07CKB4E8LA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LFzvNaUlfYwVMIVLBZsOcTXVeNa4gPHrMCnlDu/oGqVFlto0FxSo/RMIKdhSTqBYD
	 DknFqmtGzk+T7Tr+kPJhUuIo9RM3n7FCjW5e6y9/b3HUljE/kpR2kp5S6PN37HiTWs
	 iKqov6MY0jdVWFNgiyRD4VkHQNBIlhsCErSTA2y+1pr+XtwwiqH3t3I4xL02+clT3F
	 roGBIp3HcGHXMT2rT6YJKurNJUQFvX/1yZrfj2h3t/+uGGvFIIDXtOj+cvzTnQf0uh
	 lSdhng+S1nCeiKNsnE/vC2yqpc9LO1j1YUHHq8STVfb5CtrQscaQ3l3Qcq5I8+sBNz
	 zGrmIf0B8tptw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z_A4OxOmfgv2; Thu,  7 Jul 2022 08:08:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1CB3B40C93;
	Thu,  7 Jul 2022 08:08:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CB3B40C93
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF3D41BF3D8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 08:08:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 97DC941747
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 08:08:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97DC941747
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cVnETvtIdxtP for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Jul 2022 08:08:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B9B54197A
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0B9B54197A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 08:08:39 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id B2D21B81ADA;
 Thu,  7 Jul 2022 08:08:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C8D2C3411E;
 Thu,  7 Jul 2022 08:08:35 +0000 (UTC)
Date: Thu, 7 Jul 2022 10:08:33 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: kernel test robot <lkp@intel.com>
Message-ID: <YsaUgfPbOg7WuBuB@kroah.com>
References: <62c683a2.g1VSVt6BrQC6ZzOz%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62c683a2.g1VSVt6BrQC6ZzOz%lkp@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1657181316;
 bh=Mzw+guaGxcvS7S4YlQr9bq/AYy4U/puT8v9DMSRjm+c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o8T0RPLH1+QXuxRGiOx0iOcZa4PNW1RYnmq0rwqP4JlY+PYLChMX98BzUOmDLYQt5
 WHtgniPDP3fJS/IKoiVXIaVBC8g4rRYZFs4Es7HO3CMez5153+NrgRKDzbP84fxvsI
 PrLKzhYgkU2Ze+gIXne4sqvbIkFu3tT1lxy0BeOk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=o8T0RPLH
Subject: Re: [Intel-wired-lan] [linux-next:master] BUILD REGRESSION
 088b9c375534d905a4d337c78db3b3bfbb52c4a0
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
Cc: nvdimm@lists.linux.dev, legousb-devel@lists.sourceforge.net,
 dri-devel@lists.freedesktop.org, linux-sctp@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-samsung-soc@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-pm@vger.kernel.org,
 usbb2k-api-dev@nongnu.org, linux-omap@vger.kernel.org,
 megaraidlinux.pdl@broadcom.com, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-perf-users@vger.kernel.org,
 netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-wpan@vger.kernel.org, linux-fbdev@vger.kernel.org,
 linux-parport@lists.infradead.org, linux-doc@vger.kernel.org,
 samba-technical@lists.samba.org, linux-cxl@vger.kernel.org,
 virtualization@lists.linux-foundation.org, dm-devel@redhat.com,
 target-devel@vger.kernel.org, dev@openvswitch.org, linux-cifs@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, coreteam@netfilter.org, linux-media@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, greybus-dev@lists.linaro.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-block@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-efi@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-fpga@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-mtd@lists.infradead.org, cgroups@vger.kernel.org,
 linux-phy@lists.infradead.org, sound-open-firmware@alsa-project.org,
 linux-rdma@vger.kernel.org, linux-staging@lists.linux.dev,
 amd-gfx@lists.freedesktop.org, isdn4linux@listserv.isdn4linux.de,
 linux-input@vger.kernel.org, linux-ext4@vger.kernel.org,
 ath11k@lists.infradead.org, mjpeg-users@lists.sourceforge.net,
 openipmi-developer@lists.sourceforge.net, linux-hwmon@vger.kernel.org,
 linux-parisc@vger.kernel.org, linux-ide@vger.kernel.org,
 linux-mmc@vger.kernel.org, iommu@lists.linux-foundation.org,
 keyrings@vger.kernel.org, netdev@vger.kernel.org, kvm@vger.kernel.org,
 damon@lists.linux.dev, linux-mm@kvack.org,
 accessrunner-general@lists.sourceforge.net,
 linux1394-devel@lists.sourceforge.net, linux-leds@vger.kernel.org,
 rds-devel@oss.oracle.com, linux-x25@vger.kernel.org, dccp@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org, linux-nfc@lists.01.org,
 osmocom-net-gprs@lists.osmocom.org, apparmor@lists.ubuntu.com,
 linux-raid@vger.kernel.org, linux-bcache@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-scsi@vger.kernel.org, patches@opensource.cirrus.com,
 linux-unionfs@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 ntb@lists.linux.dev, tipc-discussion@lists.sourceforge.net,
 linuxppc-dev@lists.ozlabs.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jul 07, 2022 at 02:56:34PM +0800, kernel test robot wrote:
> tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> branch HEAD: 088b9c375534d905a4d337c78db3b3bfbb52c4a0  Add linux-next specific files for 20220706
> 
> Error/Warning reports:
> 
> https://lore.kernel.org/linux-doc/202207070644.x48XOOvs-lkp@intel.com
> 
> Error/Warning: (recently discovered and may have been fixed)
> 
> Documentation/arm/google/chromebook-boot-flow.rst: WARNING: document isn't included in any toctree
> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x1108): undefined reference to `__aeabi_ddiv'
> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x1124): undefined reference to `__aeabi_ui2d'
> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x1164): undefined reference to `__aeabi_dmul'
> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x1170): undefined reference to `__aeabi_dadd'
> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x1180): undefined reference to `__aeabi_dsub'
> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x1190): undefined reference to `__aeabi_d2uiz'
> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x162c): undefined reference to `__aeabi_d2iz'
> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x16b0): undefined reference to `__aeabi_i2d'
> dc_dmub_srv.c:(.text+0x10f8): undefined reference to `__aeabi_ui2d'
> dc_dmub_srv.c:(.text+0x464): undefined reference to `__floatunsidf'
> dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x33c): undefined reference to `__floatunsidf'
> drivers/pci/endpoint/functions/pci-epf-vntb.c:975:5: warning: no previous prototype for 'pci_read' [-Wmissing-prototypes]
> drivers/pci/endpoint/functions/pci-epf-vntb.c:984:5: warning: no previous prototype for 'pci_write' [-Wmissing-prototypes]
> drivers/vfio/vfio_iommu_type1.c:2141:35: warning: cast to smaller integer type 'enum iommu_cap' from 'void *' [-Wvoid-pointer-to-enum-cast]
> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x34c): undefined reference to `__floatunsidf'
> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x378): undefined reference to `__divdf3'
> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x38c): undefined reference to `__muldf3'
> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x3a0): undefined reference to `__adddf3'
> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x3b4): undefined reference to `__subdf3'
> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x3d4): undefined reference to `__fixunsdfsi'
> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x750): undefined reference to `__fixdfsi'
> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x7c0): undefined reference to `__floatsidf'
> powerpc-linux-ld: drivers/pci/endpoint/functions/pci-epf-vntb.c:174: undefined reference to `ntb_link_event'
> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x468): undefined reference to `__divdf3'
> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x46c): undefined reference to `__muldf3'
> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x470): undefined reference to `__adddf3'
> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x474): undefined reference to `__subdf3'
> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x478): undefined reference to `__fixunsdfsi'
> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x47c): undefined reference to `__fixdfsi'
> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x480): undefined reference to `__floatsidf'
> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x60c): undefined reference to `__floatunsidf'
> 
> Unverified Error/Warning (likely false positive, please contact us if interested):
> 
> arch/x86/events/core.c:2114 init_hw_perf_events() warn: missing error code 'err'
> drivers/android/binder.c:1481:19-23: ERROR: from is NULL but dereferenced.
> drivers/android/binder.c:2920:29-33: ERROR: target_thread is NULL but dereferenced.
> drivers/android/binder.c:353:25-35: ERROR: node -> proc is NULL but dereferenced.
> drivers/android/binder.c:4888:16-20: ERROR: t is NULL but dereferenced.
> drivers/base/regmap/regmap.c:1996:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
> drivers/char/random.c:869:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
> drivers/firmware/arm_scmi/clock.c:394:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
> drivers/firmware/arm_scmi/powercap.c:376:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
> drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c:1214:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
> drivers/gpu/drm/amd/display/dc/os_types.h: drm/drm_print.h is included more than once.
> drivers/gpu/drm/bridge/ite-it66121.c:1398:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
> drivers/greybus/operation.c:617:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637

<snip>

When the compiler crashes, why are you blaming all of these different
mailing lists?  Perhaps you need to fix your compiler :)

thanks,

greg k-h
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
