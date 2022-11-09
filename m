Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3157162312D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Nov 2022 18:16:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B9D5260BFF;
	Wed,  9 Nov 2022 17:16:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9D5260BFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668014164;
	bh=y6cV76UpaKBZzVfYnwW2T6JgHj9xcyZ6Rxn3UImfK9Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BtPe7baq2mOYZVfX57zJs13sQKoPknDNRdGzjW3ldts1V3X6DidUfRLVtLwtFIyp6
	 D70boArWtYBEfByWGyGHABT0JMQh/XSLZ5u23+pagIPjayWeX2tENAj4GbskhhaQc+
	 a49p6rRdGk0njGO96rcUHgzFLEhh86aSj+96CUQ53V6/MQ2y2fKvt+cIGPMJnVfoxT
	 7lfY+a88qSmYh5a3wl9g9OoBG9J5Oi7G6QMBvhjdELyIQ3GfjBN6EuZGcSueJkbsDM
	 HhaC1pwP2I26hAnllDySbiuvRVDaFnbI0CV1fvGPRvIuOoIzohHNGh5UK3+DjZf1n1
	 dXP5QA3m5qqnQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YsXYB05xxCwV; Wed,  9 Nov 2022 17:16:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0D9460BFA;
	Wed,  9 Nov 2022 17:16:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0D9460BFA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A35941BF31B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 17:15:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D88760BA8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 17:15:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D88760BA8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 29yXuPpw0hJz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Nov 2022 17:15:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CF4960AA3
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6CF4960AA3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 17:15:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="373185570"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="373185570"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 09:13:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="882001426"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="882001426"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga006.fm.intel.com with ESMTP; 09 Nov 2022 09:13:40 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2A9HDdjx008525; Wed, 9 Nov 2022 17:13:39 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Wed,  9 Nov 2022 18:10:27 +0100
Message-Id: <20221109171027.1155468-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221109100548.8990-1-arkadiusz.kubalewski@intel.com>
References: <20221109100548.8990-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668014157; x=1699550157;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q88IJ88ebzltFoz+jPhGLa4PiEMxcGNjvgGj+Qbrz3M=;
 b=KaGF72H4LiPu0GaGdBDeiHFk1QsNYePtIx5zpRUi1P3eN3uI8NIetfeF
 3B47rfl74M5J1kWNjLERHXoHwV2S4vceB2YloJtZ0QPMZWn2SjZTMLKqY
 75d2W919vepTe0nkVFlhigYS88P/n/66lQ2ZiSXl1dagB3OcitV9ik+xX
 n5aRsvAnGIYt+l5Dgdgsx68zLsu4mEIjrxOGrsYhnRaQogOAhCI1FgKMp
 MhgXhLlkpIbuyGe46LHpSiG1X3tiasUani+ibByuqXbvsn+37aQlDD/J2
 NfBLkSuse6j8YFKlx59GPruP2gSKjM0nzupNgymd6CcJz03rt29K5erUH
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KaGF72H4
Subject: Re: [Intel-wired-lan] [PATCH next v9] ice: use GNSS subsystem
 instead of TTY
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
Cc: intel-wired-lan@lists.osuosl.org,
 Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Wed,  9 Nov 2022 11:05:48 +0100

> Previously support for GNSS was implemented as a TTY driver, it allowed
> to access GNSS receiver on /dev/ttyGNSS_<bus><func>.
> 
> Use generic GNSS subsystem API instead of implementing own TTY driver.
> The receiver is accessible on /dev/gnss<id>. In case of multiple
> receivers in the OS, correct device can be found by enumerating either:
> - /sys/class/net/<eth port>/device/gnss/
> - /sys/class/gnss/gnss<id>/device/
> 
> User expecting onboard GNSS receiver support is required to enable
> CONFIG_GNSS=y/m in kernel config.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v9:
> - fix GNSS ifeq(..) in Makefile, add ICE_GNSS in Kconfig
> - remove IS_REACHABLE macro
> - fix 'TTY' from trace indicating GNSS was initialized or failure
> 
> v8:
> - fix example path to gnss device in commit message
> 
> v7:
> - add blank lines around 'GNSS module' paragraph in ice.rst
> - mark '/dev/gnss<id>' as a code in ice.rst
> 
> v6:
> - enable support for CONFIG_GNSS=m
> - improve commit message
> 
> v5:
> - fix "ifeq" in Makefile (wrong usage of string)
> - fix description in "#endif" to IS_BUILDIN
> 
> v4: change Makefile to build ice_gnss.c only if CONFIG_GNSS is set
> 
> v3:
> - remove unnecessary #include,
> - change the IS_ENABLED to IS_BUILTIN - right now if GNSS kernel subsystem
>   is not enabled, we also won't enable it in our ice driver.
> 
> v2: fix sparse check warning, remove fixes tags, fix commit title
> 
>  .../device_drivers/ethernet/intel/ice.rst     |  16 +-
>  drivers/net/ethernet/intel/Kconfig            |   3 +
>  drivers/net/ethernet/intel/ice/Makefile       |   2 +-
>  drivers/net/ethernet/intel/ice/ice.h          |   6 +-
>  drivers/net/ethernet/intel/ice/ice_gnss.c     | 375 +++++++-----------
>  drivers/net/ethernet/intel/ice/ice_gnss.h     |  18 +-
>  6 files changed, 158 insertions(+), 262 deletions(-)
> 
> diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> index dc2e60ced927..1aa029d08cb1 100644
> --- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> +++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> @@ -901,15 +901,17 @@ To enable/disable UDP Segmentation Offload, issue the following command::
>  
>    # ethtool -K <ethX> tx-udp-segmentation [off|on]
>  
> +
>  GNSS module
>  -----------
> -Allows user to read messages from the GNSS module and write supported commands.
> -If the module is physically present, driver creates 2 TTYs for each supported
> -device in /dev, ttyGNSS_<device>:<function>_0 and _1. First one (_0) is RW and
> -the second one is RO.
> -The protocol of write commands is dependent on the GNSS module as the driver
> -writes raw bytes from the TTY to the GNSS i2c. Please refer to the module
> -documentation for details.
> +Requires kernel compiled with CONFIG_GNSS=y or CONFIG_GNSS=m.
> +Allows user to read messages from the GNSS hardware module and write supported
> +commands. If the module is physically present, a GNSS device is spawned:
> +``/dev/gnss<id>``.
> +The protocol of write command is dependent on the GNSS hardware module as the
> +driver writes raw bytes by the GNSS object to the receiver through i2c. Please
> +refer to the hardware GNSS module documentation for configuration details.
> +
>  
>  Performance Optimization
>  ========================
> diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
> index 3facb55b7161..a3c84bf05e44 100644
> --- a/drivers/net/ethernet/intel/Kconfig
> +++ b/drivers/net/ethernet/intel/Kconfig
> @@ -337,6 +337,9 @@ config ICE_HWTS
>  	  the PTP clock driver precise cross-timestamp ioctl
>  	  (PTP_SYS_OFFSET_PRECISE).
>  
> +config ICE_GNSS
> +	def_bool GNSS = y || GNSS = ICE
> +
>  config FM10K
>  	tristate "Intel(R) FM10000 Ethernet Switch Host Interface Support"
>  	default n
> diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
> index 9183d480b70b..02a448406777 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -42,8 +42,8 @@ ice-$(CONFIG_PCI_IOV) +=	\
>  	ice_vf_vsi_vlan_ops.o	\
>  	ice_vf_lib.o
>  ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
> -ice-$(CONFIG_TTY) += ice_gnss.o
>  ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
>  ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
>  ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
>  ice-$(CONFIG_ICE_SWITCHDEV) += ice_eswitch.o
> +ice-$(CONFIG_GNSS) += ice_gnss.o

Forgot to replace it with CONFIG_ICE_GNSS here.

> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 2f0b604abc5e..ae93ae488bc2 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h

[...]

> -- 
> 2.34.3

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
