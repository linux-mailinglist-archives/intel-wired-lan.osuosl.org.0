Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB146A4055A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Feb 2025 04:41:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC574407A0;
	Sat, 22 Feb 2025 03:41:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g4ipTpfHzTDS; Sat, 22 Feb 2025 03:41:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F09074081B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740195711;
	bh=UyR7gz+xXlLqmxXF1ACjjGOzZGEcM5ZAg3eWWcExDbg=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CyWx0yFk3OFJ8+23TmisJICCBQL36a+6VFlvKQfdAqpBPz+3viIlIflkXOG3oRQuH
	 0y9oRu7QL3/wgXdowmPyoWU0I8/noNuvbvpYh1jt6BX4ZgAg3QV2w53kwJUpEtvqY6
	 mWFf9LtjwbY55dDsyO9Ci9oUqkv8qcIWDdbQI5IYkdgRye+ynC+pOwDZT3SLN3ezD1
	 8RzkdPCIwd7rK0D9NHsm0VG8qJsWxM0rKe/RALATH3+fmLIED6P8hmDPartb4J3vJJ
	 cw0PKzLBbIy4kQ78SaokQcbbiy5v8NQYGczK4k7rwiIuBLYfVu3wXqUHEosg+7H9Nu
	 BKdfTQayhvmbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F09074081B;
	Sat, 22 Feb 2025 03:41:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id AA837D92
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 03:41:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7B99240520
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 03:41:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zC6j3OSNVxiy for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Feb 2025 03:41:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 02E7240180
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02E7240180
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 02E7240180
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 03:41:46 +0000 (UTC)
X-CSE-ConnectionGUID: Kn6RHfM1QcmLWxwlOAv9yQ==
X-CSE-MsgGUID: y+nswzuSSB+NorROsoM35g==
X-IronPort-AV: E=McAfee;i="6700,10204,11352"; a="44935362"
X-IronPort-AV: E=Sophos;i="6.13,306,1732608000"; d="scan'208";a="44935362"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 19:41:46 -0800
X-CSE-ConnectionGUID: q0fgMa92RQSDmQG8sLCSBw==
X-CSE-MsgGUID: /xpFUttySQmq+tPejtj0uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,306,1732608000"; d="scan'208";a="116172867"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by fmviesa009.fm.intel.com with ESMTP; 21 Feb 2025 19:41:45 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tlgOX-0006HR-0g;
 Sat, 22 Feb 2025 03:41:38 +0000
Date: Sat, 22 Feb 2025 11:41:02 +0800
From: kernel test robot <lkp@intel.com>
To: Jiawen Wu <jiawenwu@trustnetic.com>
Cc: oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <202502221148.uKcTIWhU-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740195707; x=1771731707;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=1pIQli5yX5TLQa8vO+yxFp6bgV32bNbZld5SseY5aho=;
 b=LVPfgdTaaQbXsiqbcnCjZ+Yl72Rmj7ZzBV6oyqxcJ1i7dscDN63lcTcv
 qz+HfxU/oZC6DnuYj1obN9olAfK8+lQlN+k0xVxS9OKu5CS1cZ4GnjYi0
 Wbz0KcaVcUDIDZMsMztPDXMoHUhzUC5m/UjfkxiQqo5qrIFlAt+AWZjWC
 jfhJrjMMcvHpnh/ZikHUN0iJp5+uKD0wRSlUhJSu2chXQAEmR1XL3IExr
 ym69Ciqim5nDGLQbZpjJ08MkJ6rOVOmoRfHD3TR1xkw5yGomg561Dawjd
 zYnaGGrzwNrntYUHdOfzmhqtwCHvJv9ZfWeEkGkGElzF6FvlT+UMKx5Ig
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LVPfgdTa
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE 7/39] wx_lib.c:undefined
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
commit: 06e75161b9d4833518a7c266310a0635eab50616 [7/39] net: wangxun: Add support for PTP clock
config: i386-buildonly-randconfig-005-20250222 (https://download.01.org/0day-ci/archive/20250222/202502221148.uKcTIWhU-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250222/202502221148.uKcTIWhU-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202502221148.uKcTIWhU-lkp@intel.com/

All errors (new ones prefixed by >>):

   ld: drivers/net/ethernet/wangxun/libwx/wx_lib.o: in function `wx_clean_tx_irq':
>> wx_lib.c:(.text+0x3334): undefined reference to `ptp_schedule_worker'
   ld: drivers/net/ethernet/wangxun/libwx/wx_ptp.o: in function `wx_ptp_stop':
>> wx_ptp.c:(.text+0xaa0): undefined reference to `ptp_clock_unregister'
   ld: drivers/net/ethernet/wangxun/libwx/wx_ptp.o: in function `wx_ptp_init':
>> wx_ptp.c:(.text+0x104e): undefined reference to `ptp_clock_register'

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for LIBWX
   Depends on [m]: NETDEVICES [=y] && ETHERNET [=y] && NET_VENDOR_WANGXUN [=y] && PTP_1588_CLOCK_OPTIONAL [=m]
   Selected by [y]:
   - NGBE [=y] && NETDEVICES [=y] && ETHERNET [=y] && NET_VENDOR_WANGXUN [=y] && PCI [=y]

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
