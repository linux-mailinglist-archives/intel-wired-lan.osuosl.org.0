Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D569611875
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Oct 2022 18:59:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BEE49400D0;
	Fri, 28 Oct 2022 16:58:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BEE49400D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666976338;
	bh=8y6rB+dPu9wzhWCTwmp+kTCW7qAEOUMoeeExWbpcduA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1YiV7v322h9iGpAbRMswVQ3VDt5k9IodE2K+2ymbIyL9T2/1X6otk3S1FpgO2z53o
	 0MHOtjScdBLe/PrZyjXIz2b8cTglUpbmYMaTA/ic4PIGuE+zo/MQgGnY7e4vxN797Z
	 ll95kjA+i9yWk+ivxMEiXZccLE5yB2fI1k875hKvO6gMyxBSfcbKyNnQUVHiOSNSCc
	 mT4f1NVrHOFvvuEyhgCqBR3srPfh0GTx4bMi1PuT9jX1erbBLKl9C07PLir068BPfe
	 4euyfEDa1kTASm2ZxLgNnBGIm+JqngwfMsWS53RMcNAApWoNhjfBw5AinVwKIYMm5R
	 sDlSDp3M3yD/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PCqtWfAdk9K2; Fri, 28 Oct 2022 16:58:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96176400AF;
	Fri, 28 Oct 2022 16:58:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96176400AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6FC251BF299
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Oct 2022 16:58:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 47A50400AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Oct 2022 16:58:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47A50400AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id neZceugS0dx4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Oct 2022 16:58:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 382D3400A6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 382D3400A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Oct 2022 16:58:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="394850937"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="394850937"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 09:58:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="666128656"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="666128656"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga001.jf.intel.com with ESMTP; 28 Oct 2022 09:58:49 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 29SGwmRM009573; Fri, 28 Oct 2022 17:58:48 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Fri, 28 Oct 2022 18:57:06 +0200
Message-Id: <20221028165706.96849-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221019095603.44825-1-arkadiusz.kubalewski@intel.com>
References: <20221019095603.44825-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666976331; x=1698512331;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ks1YPO5KE2C7QWvrUiZ5cVPOOmhxvrYb58xqb/jPB+0=;
 b=kEgHuIIQzu6+xGZcaWTs7yUq9gcfiGkBW0IzxsXALcqHnp+/UWMhon7H
 wSuHK05xAoQPWAEV1d0lhMAggU2HLAjRlo1YCYopKBKq9WVE+SU11HVYr
 mqzT2FDPkbivDxb1BunxnrxlVSeaC9kVS/gT9qHVoeAhuNxkhmLWPuqvG
 D+HA2nFRThYiWX/qL3wq0awEbIwLyd4joMfL10+gaYp+C7Wd20uh9IOdR
 sBhUn3nRC0MMIpf54hWR2bEXKheP8nohP9QcJjn1tI27tbP+DwUzVLnVG
 fyjc9+K7I8kT03lNDDVv+SHVIv7Iv6+t3zYL2cVE3fKXWuzW+0PHYd3Zf
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kEgHuIIQ
Subject: Re: [Intel-wired-lan] [PATCH next v8] ice: use GNSS subsystem
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
Date: Wed, 19 Oct 2022 11:56:03 +0200

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
>  drivers/net/ethernet/intel/ice/Makefile       |   5 +-
>  drivers/net/ethernet/intel/ice/ice.h          |   6 +-
>  drivers/net/ethernet/intel/ice/ice_gnss.c     | 380 +++++++-----------
>  drivers/net/ethernet/intel/ice/ice_gnss.h     |  18 +-
>  5 files changed, 167 insertions(+), 258 deletions(-)

[...]

> diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
> index 9183d480b70b..7bc5ba52e493 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -42,8 +42,11 @@ ice-$(CONFIG_PCI_IOV) +=	\
>  	ice_vf_vsi_vlan_ops.o	\
>  	ice_vf_lib.o
>  ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
> -ice-$(CONFIG_TTY) += ice_gnss.o
>  ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
>  ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
>  ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
>  ice-$(CONFIG_ICE_SWITCHDEV) += ice_eswitch.o
> +ice-$(CONFIG_GNSS) += ice_gnss.o
> +ifeq ($(CONFIG_GNSS), "m")
> +	ice-y += ice_gnss.o
> +endif

That looks weird.

First of all, Kbuild looks at both foo-y and foo-m when building
a list of objects for a particular composite (in our case, ice.{,k}o
is a composite and ice_gnss.o is a part of it) [0]. So just

ice-$(CONFIG_GNSS) += ice_gnss.o

would be enough.

But I would avoid those IS_REACHABLE() all around the code. In fact,
you don't need to build this file when the GNSS framework is not
usable from ice. So, instead I'd go for

(Kconfig)

config ICE_GNSS
	def_bool GNSS = y || GNSS = ICE

(Makefile)

ice-$(ICE_GNSS) += ice_gnss.o

ice_gnss.o will be then built only if GNSS is reachable and we can
safely call its functions without any IS_REACHABLE() guards.

> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 001500afc4a6..de6763206113 100644
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
