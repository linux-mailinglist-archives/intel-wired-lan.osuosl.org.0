Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8438E62D941
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 12:19:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C40C418A7;
	Thu, 17 Nov 2022 11:19:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C40C418A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668683942;
	bh=/YJdGwONT2oUP0uzJIC0Ye4nzVzlfik5yH8iAAsllh8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ep31nCJ7a3hVWYZBHy/LD/IkMIZIYdhE6mqUQFRycZoJRSMWV2fng6aK/sFy4cLPi
	 08wPMZvcKFP17jJLHOEz6BuLSN0V8bKZNCGyk455qV47Ry6QJ4B6YTKXUdqPw6PEkw
	 VORqqpNbVO3ZbfI53ZyY/+448ZU+jdpN8KjBkpLkTm2fmhtA9fcUpi4ni4fnnVOYKp
	 hRahNGB/yigX1enzT4ucBsSmFsYLjK+RO+Uri8BHvg4v4ZN1K1JgbglEHVgV6Y0/VB
	 pNK2/myOx9j3ePOjnsWAEkFRy9mAmpUG+OglrJIoSZQbcDt91iAfV1sCfQQnPww66j
	 FFsF57/26QwdQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F76-mpRwtjah; Thu, 17 Nov 2022 11:19:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 391B441859;
	Thu, 17 Nov 2022 11:19:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 391B441859
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E18B21BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 11:18:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B7D57402FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 11:18:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7D57402FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IMKvWaF5SYlU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 11:18:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F15A400C8
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9F15A400C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 11:18:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="292530899"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="292530899"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 03:18:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="703295561"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="703295561"
Received: from lkp-server01.sh.intel.com (HELO 55744f5052f8) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 17 Nov 2022 03:18:53 -0800
Received: from kbuild by 55744f5052f8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ovcuy-0000FH-20;
 Thu, 17 Nov 2022 11:18:52 +0000
Date: Thu, 17 Nov 2022 19:18:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63761893.n0H4219UbxZYSmoG%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668683934; x=1700219934;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ww9KVGtzY8Cw2vOV+aUfoQXjX5KOQGKp4s9x7gvzw1Q=;
 b=Cx4Z7Sjd8fSPH8wrffjQ4Jb9TzPt9rqJbnRn3sUT91TDpzAmpT19rKjl
 Rz7JhEG773RfUPIDvtFxScOBwYyMeOk1OwMuEtWrGdADnS31BF0l9BPzV
 LizJLxjDu/Hy/X+vrlXmJUKJldoquMuONGYJTP+SnSUpIdkItud3iTqIS
 eyXb8Gso2ecPoK/X/nv8wMwlSvA/ZOLSuCcZX3aN8uT5DWqovPxRe9xSl
 on8QXQu+rEr16BXfG5M2OlfQGlAGbeGvN7cN6KUMrGLC6rGKt802Dng7t
 YX+4ONPdq6xtJ8LctQBiDD0MBl+a6gjw/2rGl4ExbEFqZOVts54koQMLj
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Cx4Z7Sjd
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 064bc7312bd09a48798418663090be0c776183db
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: 064bc7312bd09a48798418663090be0c776183db  netdevsim: Fix memory leak of nsim_dev->fa_cookie

elapsed time: 876m

configs tested: 82
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
sh                               allmodconfig
x86_64                        randconfig-a015
x86_64                        randconfig-a004
x86_64                        randconfig-a006
i386                          randconfig-a016
um                           x86_64_defconfig
um                             i386_defconfig
arc                                 defconfig
arc                  randconfig-r043-20221117
s390                                defconfig
alpha                               defconfig
riscv                randconfig-r042-20221117
s390                             allmodconfig
s390                             allyesconfig
x86_64                            allnoconfig
s390                 randconfig-r044-20221117
ia64                             allmodconfig
sh                          sdk7786_defconfig
arm                            zeus_defconfig
openrisc                            defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
alpha                            allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
i386                                defconfig
i386                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
x86_64                        randconfig-a002
um                               alldefconfig
sh                           se7722_defconfig
sh                         ap325rxa_defconfig
i386                          randconfig-c001
m68k                             allyesconfig
powerpc                      bamboo_defconfig
powerpc                     mpc83xx_defconfig
openrisc                 simple_smp_defconfig
sh                        sh7757lcr_defconfig
sh                        sh7785lcr_defconfig
arm                            hisi_defconfig
sh                  sh7785lcr_32bit_defconfig
arc                               allnoconfig
powerpc                    klondike_defconfig
sh                ecovec24-romimage_defconfig
arm                           tegra_defconfig
mips                        vocore2_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm                       omap2plus_defconfig
arm                           stm32_defconfig
sh                           se7705_defconfig
powerpc                       maple_defconfig
sh                        edosk7705_defconfig

clang tested configs:
x86_64                        randconfig-a016
x86_64                        randconfig-a005
hexagon              randconfig-r041-20221117
hexagon              randconfig-r045-20221117
powerpc                          g5_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-k001
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
