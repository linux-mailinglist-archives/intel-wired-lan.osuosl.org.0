Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0946B654C33
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Dec 2022 06:26:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2BAE60C28;
	Fri, 23 Dec 2022 05:26:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2BAE60C28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671773174;
	bh=JzVcTgdX9id2VswLAxPphi0LCGYMilGwsJYintRja5k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tzwSMmJJkT5ZAww81TTsVZ6JGWRHyDWn+kTCgixnPsQfIinIAgNmGYkRusVaxnxZW
	 9HytqGLiDYEPDyghCLK1tw/8ANMyabQeRFDV10sNFaM9TsTZE3pXE2tlOxCnHNIJR9
	 Orm8/++MnM+GyVP4aXESws497EIXPgwY2V/btuuwVnRsRjTQRuRGeB88u9ayzvS6Oz
	 advt+8hlK/XWPLvjl7C+n1zgza0DvjQY23ZiamtonqS3erf0AjFEwnerExnVe7X7uq
	 0Mv9Z4Kpr6rffhKhZDY35K9rXBS6n7itUYFtauTrT3iv0OnEEjo9w1Zi5AzQ/37Tcl
	 JsRkfu8Y+amHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uImZ9I5_52P6; Fri, 23 Dec 2022 05:26:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C9ABF60792;
	Fri, 23 Dec 2022 05:26:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9ABF60792
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 971CA1BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Dec 2022 05:26:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 733904177F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Dec 2022 05:26:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 733904177F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AvAuD6b0hkQF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Dec 2022 05:26:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D409B4088E
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D409B4088E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Dec 2022 05:26:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="299950811"
X-IronPort-AV: E=Sophos;i="5.96,267,1665471600"; d="scan'208";a="299950811"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2022 21:26:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="682624266"
X-IronPort-AV: E=Sophos;i="5.96,267,1665471600"; d="scan'208";a="682624266"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 22 Dec 2022 21:26:02 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p8aZF-000CRb-23;
 Fri, 23 Dec 2022 05:26:01 +0000
Date: Fri, 23 Dec 2022 13:25:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63a53bc2.HnmOkU4bzzL10jCS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671773164; x=1703309164;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=IllNJ3RRM+8m9mSTglThxDz7mtlkANg2k15WDuY/H+0=;
 b=CkCjymhZx1w4YiYm1o7mP7ZmyVGzhQuOYxC0KmlfVj++g+nMDJ9ZALCF
 8oRMD6PFnCgpaVP6Xv6T1n+qeeAJkL8l1/ICMrv5FOdh+rVxyhs5xAAIO
 MeFRf52dq/A9aMOAQdLAIOVmPDvX7A/4aW3ZGmaHEAJT6QeZ09H9ikegy
 mq01RIxrDDwEVdz8d6JeRReAHYA/68Nr+fxnsgbuNutQ0+3C36vnyNzaC
 g+4nGelPqU+S4GtoDx1YIzDm8abcRapXLYikYEIetdU3yrWuaVf+Hs9uK
 RvSleju8fnqgsfVpwPOFQEGxRKMecmDd3HeTCTH/QUqc1didcDj/DP2fS
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CkCjymhZ
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 6de52ca4b9a7543a213cae72b7ef8b4d3175922f
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
branch HEAD: 6de52ca4b9a7543a213cae72b7ef8b4d3175922f  iavf/iavf_main: actually log ->src mask when talking about it

elapsed time: 720m

configs tested: 95
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                                defconfig
powerpc                           allnoconfig
s390                             allmodconfig
x86_64               randconfig-a002-20221219
x86_64               randconfig-a003-20221219
x86_64               randconfig-a001-20221219
x86_64               randconfig-a004-20221219
s390                             allyesconfig
x86_64               randconfig-a005-20221219
sh                               allmodconfig
x86_64               randconfig-a006-20221219
powerpc                          allmodconfig
x86_64                              defconfig
m68k                             allyesconfig
mips                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
i386                                defconfig
i386                             allyesconfig
alpha                            allyesconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
arc                  randconfig-r043-20221222
s390                 randconfig-r044-20221222
riscv                randconfig-r042-20221222
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
ia64                             allmodconfig
arm                                 defconfig
arm64                            allyesconfig
i386                 randconfig-a004-20221219
i386                 randconfig-a001-20221219
i386                 randconfig-a003-20221219
i386                 randconfig-a002-20221219
i386                 randconfig-a005-20221219
i386                 randconfig-a006-20221219
arm                              allyesconfig
x86_64                            allnoconfig
sh                   rts7751r2dplus_defconfig
sh                           se7724_defconfig
sh                          rsk7203_defconfig
arm                            xcep_defconfig
mips                           xway_defconfig
i386                          randconfig-c001
arm                        trizeps4_defconfig
sh                            shmin_defconfig
um                               alldefconfig
powerpc                      makalu_defconfig
m68k                        mvme147_defconfig
powerpc                    amigaone_defconfig
m68k                         amcore_defconfig
m68k                        m5272c3_defconfig
arm                           stm32_defconfig
sh                          sdk7780_defconfig
m68k                          multi_defconfig
powerpc                 mpc8540_ads_defconfig
mips                            ar7_defconfig
openrisc                    or1ksim_defconfig
sh                          lboxre2_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
s390                 randconfig-r044-20221218
arm                  randconfig-r046-20221219
arc                  randconfig-r043-20221218
arc                  randconfig-r043-20221219
riscv                randconfig-r042-20221218

clang tested configs:
hexagon              randconfig-r041-20221222
arm                  randconfig-r046-20221222
hexagon              randconfig-r045-20221222
x86_64                          rhel-8.3-rust
x86_64               randconfig-a011-20221219
x86_64               randconfig-a012-20221219
x86_64               randconfig-a014-20221219
x86_64               randconfig-a015-20221219
x86_64               randconfig-a016-20221219
x86_64               randconfig-a013-20221219
i386                 randconfig-a014-20221219
i386                 randconfig-a012-20221219
i386                 randconfig-a013-20221219
i386                 randconfig-a015-20221219
i386                 randconfig-a016-20221219
i386                 randconfig-a011-20221219
x86_64                        randconfig-k001
hexagon                          alldefconfig
powerpc                 mpc832x_rdb_defconfig
x86_64               randconfig-k001-20221219

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
