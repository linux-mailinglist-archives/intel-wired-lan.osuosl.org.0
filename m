Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 762E4648135
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Dec 2022 11:59:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A72D40CB2;
	Fri,  9 Dec 2022 10:59:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A72D40CB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670583559;
	bh=vr1+Cly0jgbFekRQZoRE/M58kN8vMhXWWPJSnF+1VG8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ir4URyCj5wIrTOdL8zpakoAoLEJIQqnKuFS5kDtQV3i8NlWDwQLcmkxp7ZdTC+Aa5
	 ha8zWOupgbSHhYk9yDAihr/u58ZCz85iDeM2vbucdEzPL0m15hthnf3Ci0TOVvHO3E
	 a98lwlrxFXtMWpgRh1t6xudEODmdfq3F6QODtbi1qLUtmY5TuOxpxuLV3FVrDbIKBj
	 afkfJ+/JUS36gw27T9FLao+AxgbbYZ3G+f5fJPSvVgkQWJOOTlJTXxB7zGX/30TDrx
	 wO/DuFfyxKDUILLjG+lBQP7cfGWcCdBH3Fgla50u3zZzaxFCmdFYe36Mcbo5P/1VzK
	 XqUMu9mJzqY0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hOVDwcUzNxqY; Fri,  9 Dec 2022 10:59:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 168DD40CB4;
	Fri,  9 Dec 2022 10:59:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 168DD40CB4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 967C21BF20B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 10:59:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6D42441B38
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 10:59:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D42441B38
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3MFGu-FREUYY for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Dec 2022 10:59:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5379C41B36
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5379C41B36
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 10:59:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="315071221"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="315071221"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 02:59:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="892634111"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="892634111"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 09 Dec 2022 02:59:10 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p3b5y-0001nn-0p;
 Fri, 09 Dec 2022 10:59:10 +0000
Date: Fri, 09 Dec 2022 18:58:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <639314d2.QsZeYYA0u+PFglFV%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670583552; x=1702119552;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=NUHFaen8L/roWJ8qwkurKJS5bl6ECPfUG9Bt+d8A49o=;
 b=FThP/w8Yeh2Kp1SOykBYnuc+qnxtrEtfksoys8bJN0l3FtG6rSUmx2t5
 z0SX3Xm9209Gkm28buNvVzzGZtMhKwmD8r7VPuvolEnvlHYlOs7ld/WSG
 NfGFhqx/GOI9HGCsztcahFNY8HSU+V+WoDQYJVFU2ei8Vd/WR5aUXK2Wh
 gINR6H/D0VyPxyRuDL+jh8Ij7cKZ8QpYwvco1vLxyPGecalOVywAhaO6D
 TUDviHTM3ZmVG0S/3xGqCDRucwFvZTe2PAknrk+ZlNV7DliHH02KYkNOK
 fWKGDK+ldWFXpYr5+1n1LcV3XU6RycE4YeFOfG+tusXwztgPi9tN6467n
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FThP/w8Y
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 141858f3c51aa015654db9c09c0692405857f49d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: 141858f3c51aa015654db9c09c0692405857f49d  i40e: Fix the inability to attach XDP program on downed interface

elapsed time: 726m

configs tested: 54
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
powerpc                           allnoconfig
um                             i386_defconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
arc                              allyesconfig
sh                               allmodconfig
x86_64                          rhel-8.3-rust
s390                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
alpha                            allyesconfig
arc                  randconfig-r043-20221207
mips                             allyesconfig
powerpc                          allmodconfig
i386                                defconfig
riscv                randconfig-r042-20221207
s390                 randconfig-r044-20221207
arm                                 defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
arm                              allyesconfig
arm64                            allyesconfig
ia64                             allmodconfig
i386                             allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015

clang tested configs:
arm                  randconfig-r046-20221207
hexagon              randconfig-r041-20221207
hexagon              randconfig-r045-20221207
i386                          randconfig-a013
i386                          randconfig-a011
x86_64                        randconfig-a014
x86_64                        randconfig-a012
i386                          randconfig-a015
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
