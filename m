Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B872A40671
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Feb 2025 09:43:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3D9D81F66;
	Sat, 22 Feb 2025 08:43:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xvjdqEDf0WMZ; Sat, 22 Feb 2025 08:43:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD56381F42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740213832;
	bh=7SsSsqSqmPC6toJ/NMUOKEr+lGIeaXQX8dsGkLq4RcU=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aZ99iBMKSizPMpUfVwJV4064xt4peYZj6SJs2zfsmYTvnIaNQOPVH4rIUDirmsk2K
	 5kMorYJXhXow4YmanLiKX9f9I1R0W5XNl1urMtlINUiARXHhNLmznDThS4/H+8f3Y5
	 B/tjvGkfBc8VrPobVzXV9EYF+kJULfzrOTwkhL45tuThqDWdjIdGTS4/97f73tH3GL
	 B8BhmrhY68CZbj3fHvcVsxdmXxpAmGxUEZHQ1v4t9TirvtbeoCdhn5dSk+hKHyWVQK
	 OGajNi5dpBdKowcv+HPfU1Y3GeRteVhZxq6rf0+lq58+A9ES13XvpZRV2uYkEfHkVh
	 UlujpBLOgBpIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD56381F42;
	Sat, 22 Feb 2025 08:43:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D1C2AD92
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 08:43:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AED9960A46
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 08:43:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ETUpopc69boj for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Feb 2025 08:43:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AE17D60841
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE17D60841
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE17D60841
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 08:43:48 +0000 (UTC)
X-CSE-ConnectionGUID: 7b7JtNpZQpiHN5Iu7nTOaQ==
X-CSE-MsgGUID: fzRuG2n4TmqWof1yJNTXFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11352"; a="40951179"
X-IronPort-AV: E=Sophos;i="6.13,307,1732608000"; d="scan'208";a="40951179"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2025 00:43:48 -0800
X-CSE-ConnectionGUID: qKgRUfuYQ6WnFVtG56Z3Bg==
X-CSE-MsgGUID: u4yFtYZPR6WX/oLZkfOXPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,307,1732608000"; d="scan'208";a="116214957"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by fmviesa009.fm.intel.com with ESMTP; 22 Feb 2025 00:43:46 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tll6u-0006PQ-0q;
 Sat, 22 Feb 2025 08:43:44 +0000
Date: Sat, 22 Feb 2025 16:43:14 +0800
From: kernel test robot <lkp@intel.com>
To: Jiawen Wu <jiawenwu@trustnetic.com>
Cc: oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <202502221622.yPBcg0Uh-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740213830; x=1771749830;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=z4QxPZ7S5Tph4cngarX01l9GKqX7BM2RMxwu4WKOsew=;
 b=VfSgEsmhji9+39CkisXkAigd8uQai4i0P7qpxrvUJKBN0nrtwSfaZqYu
 CsITosTOkp/a6gaZT6mVaVrdv7CIjVLnnL15ubs73YNDNFqOSPhuDIgWX
 VyFCCOuBX7nKlOwzZQpcJyfwlQAsA4+0RljevvgMavvg7JsUmBouDX/OS
 e2f9fj841GvrfyHj5e7VzWvs3bjbZMPImti6cU9XUakqWeaYMrBdCKH4D
 VPsD1RHO+8X1J1W1RsgX0JTtMQ9P+FMBr97kfEE6w6LMxJDHr1IZwpnOB
 H43ipi2n30mjGT57lussxK1RNEU+KEvV0lB+YtyETJkNYvgdgpiMoY4Yo
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VfSgEsmh
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE 9/39] wx_ptp.c:undefined
 reference to `ptp_schedule_worker'
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
head:   bb3bb6c92e5719c0f5d7adb9d34db7e76705ac33
commit: 704145a854ee01015d52fb8c4c0c319d1810bf32 [9/39] net: wangxun: Add periodic checks for overflow and errors
config: i386-buildonly-randconfig-005-20250222 (https://download.01.org/0day-ci/archive/20250222/202502221622.yPBcg0Uh-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250222/202502221622.yPBcg0Uh-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202502221622.yPBcg0Uh-lkp@intel.com/

All errors (new ones prefixed by >>):

   ld: drivers/net/ethernet/wangxun/libwx/wx_lib.o: in function `wx_clean_tx_irq':
   wx_lib.c:(.text+0x3334): undefined reference to `ptp_schedule_worker'
   ld: drivers/net/ethernet/wangxun/libwx/wx_ethtool.o: in function `wx_get_ts_info':
   wx_ethtool.c:(.text+0x739): undefined reference to `ptp_clock_index'
   ld: drivers/net/ethernet/wangxun/libwx/wx_ptp.o: in function `wx_ptp_stop':
   wx_ptp.c:(.text+0x940): undefined reference to `ptp_clock_unregister'
   ld: drivers/net/ethernet/wangxun/libwx/wx_ptp.o: in function `wx_ptp_reset':
>> wx_ptp.c:(.text+0xd67): undefined reference to `ptp_schedule_worker'
   ld: drivers/net/ethernet/wangxun/libwx/wx_ptp.o: in function `wx_ptp_init':
   wx_ptp.c:(.text+0xefe): undefined reference to `ptp_clock_register'

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for LIBWX
   Depends on [m]: NETDEVICES [=y] && ETHERNET [=y] && NET_VENDOR_WANGXUN [=y] && PTP_1588_CLOCK_OPTIONAL [=m]
   Selected by [y]:
   - NGBE [=y] && NETDEVICES [=y] && ETHERNET [=y] && NET_VENDOR_WANGXUN [=y] && PCI [=y]

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
