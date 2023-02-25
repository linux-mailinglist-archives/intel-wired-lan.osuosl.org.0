Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7356A2972
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Feb 2023 13:09:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC58A60B42;
	Sat, 25 Feb 2023 12:09:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC58A60B42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677326978;
	bh=54Rh6yvD5ltrCv/lnrxXmcmgmvp1TQR/oqUTnhWiGJw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Am1ER1SVwYJKUudcvHJ1EF9i9HuME2xnARE7wjlFNT0ybrfGWOkEEfduWmX5TaHfd
	 BY0gRrcqEVjNO2tu2FmocIaRCCo2Lr5IPFUoTE8vffoGfkbQ0WOZfsYYabUZRX8FN9
	 OZSOKVp2JeRBjX7OGVuzzb0hNZjNA9GVRP0BlTIjVaJy/kT5N/xutAJlMvtpUOsUlQ
	 Ac957IFvFW1iFSbnZITUYE41CE+zaoDbrK46pQs6Okeo9FWIMGR26uIO/j+BlruZVJ
	 NhsRLHD68xW7LC16uayFiwpAM1t606XBAYzutsfN6NobfXP5ZFjmS+4d/v2N2K3D8s
	 nyGfFPTTdvjZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hFjrZFXh3krg; Sat, 25 Feb 2023 12:09:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B432860B1C;
	Sat, 25 Feb 2023 12:09:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B432860B1C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E06811BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Feb 2023 12:09:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B889441655
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Feb 2023 12:09:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B889441655
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F41mc92iabGw for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Feb 2023 12:09:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A2764159D
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A2764159D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Feb 2023 12:09:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="419889225"
X-IronPort-AV: E=Sophos;i="5.97,327,1669104000"; d="scan'208";a="419889225"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2023 04:09:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="797040899"
X-IronPort-AV: E=Sophos;i="5.97,327,1669104000"; d="scan'208";a="797040899"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 25 Feb 2023 04:09:30 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pVtMn-0003Ap-1D;
 Sat, 25 Feb 2023 12:09:29 +0000
Date: Sat, 25 Feb 2023 20:09:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63f9fa77.50tb+v8X9qVEMW9A%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677326971; x=1708862971;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=M6HGwQHDlYHBFw0E6r04ockss7jS2zyjtm5ODJxgcT4=;
 b=T6/gV6aIU0C6Z6xji8JcoMNASHUVgt49Olv54zib66ewU6lCA79TllI5
 m1QphwQp/vgjMO7jb39pydZwJ+c4l6s5iN3uztvXg1qSv+68b3p0VK2X1
 oW5ClxO/+blmdcH8mK3OwBHo+TeQX4BCkaGJkx57Kvq75ApdR9m13JjD1
 oDJKgjaRK/l4fzqU6vgui/rAapWSq5b1TA0+jxj97kU6eBTMZTyUn3ZsN
 ampDK32WBLnPob1a2ge1oQTzSzjGcedPUZ/tuoD5654Y5+lcUoC2I/Ltr
 kFaS/Pzztp5Cy8GDY8VcGuzQudwHtFSvPSdlPd6AdhjxQpnnaKF+yaVq0
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=T6/gV6aI
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 98d6714e4c9315aa2d3d8fd940c98ac5adc7c87f
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 98d6714e4c9315aa2d3d8fd940c98ac5adc7c87f  i40e: Fix kernel crash during reboot when adapter is in recovery mode

elapsed time: 821m

configs tested: 19
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
clang                                   alpha   defconfig
gcc                                       arc   defconfig
gcc                                       arm   defconfig
gcc                                     arm64   defconfig
gcc                                      csky   defconfig
gcc                                      i386   defconfig
gcc                                      ia64   defconfig
gcc                                 loongarch   defconfig
gcc                                      m68k   defconfig
gcc                                     nios2   defconfig
gcc                                    parisc   defconfig
gcc                                  parisc64   defconfig
gcc                                     riscv   defconfig
gcc                                     riscv   rv32_defconfig
gcc                                      s390   defconfig
gcc                                     sparc   defconfig
gcc                                        um   i386_defconfig
gcc                                        um   x86_64_defconfig
gcc                                    x86_64   defconfig
gcc                                                  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
