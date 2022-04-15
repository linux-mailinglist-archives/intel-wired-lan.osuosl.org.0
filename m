Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CE95026C0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Apr 2022 10:37:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5EC0C40B3C;
	Fri, 15 Apr 2022 08:37:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5cp8em5RERlb; Fri, 15 Apr 2022 08:37:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 64F5A40A83;
	Fri, 15 Apr 2022 08:37:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 83B6F1BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 08:37:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7D94B40A83
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 08:37:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QhrtK63FmE2B for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Apr 2022 08:37:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7A470400DB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 08:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650011842; x=1681547842;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=kBcpMkx0O4TjeNpbezGgzN2mK1LfPp4QbglIKkoNZaU=;
 b=DcqdevrPRlc9EWnnMS1lHORkypFrztm5Pp4skZSmwUwLE5m571vz+a7P
 RhlX/hZCKYy7EdWfpyewOaFPAYmYyEMP42VA6dojBfG1ias7JGEYKeFkf
 dpz47l4EfxFkHcmIFBtULqPM1jrOo8Iiqf3o7ljuY0jgrBeaKHrBwSpHk
 /T/XFUSpkb9H8JgOG7SKyApXEZjAuHHyxR+RY32FNSvgGPMGX7gLqGl2o
 oJAvcR531H09DGBeq+DLuL2u5Z+XkfcbCKHZfflwrx5iCXdJOF/GIgcfw
 bEzmmyZGMU2aj425VemGxj1hdDHKDTJykxmT2a29+lUk7Fo3dzDKnfdQE w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="243052619"
X-IronPort-AV: E=Sophos;i="5.90,262,1643702400"; d="scan'208";a="243052619"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 01:37:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,262,1643702400"; d="scan'208";a="591566179"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 15 Apr 2022 01:37:20 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nfHSB-0001m1-Ko;
 Fri, 15 Apr 2022 08:37:19 +0000
Date: Fri, 15 Apr 2022 16:36:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62592ea9./Mk8FlcAtWwNFTVU%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3c367f4adb1480a40215a831ae7fb3400482b52d
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
branch HEAD: 3c367f4adb1480a40215a831ae7fb3400482b52d  ice: wait 5 s for EMP reset after firmware flash

elapsed time: 872m

configs tested: 87
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
sparc                       sparc64_defconfig
sh                          rsk7264_defconfig
mips                           xway_defconfig
xtensa                       common_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220414
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
alpha                               defconfig
csky                                defconfig
alpha                            allyesconfig
nios2                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220414
arm                  randconfig-c002-20220414
i386                          randconfig-c001
powerpc                 mpc8313_rdb_defconfig
powerpc                      acadia_defconfig
powerpc                      obs600_defconfig
arm                      tct_hammer_defconfig
powerpc                     tqm5200_defconfig
arm                        multi_v5_defconfig
mips                           mtx1_defconfig
arm                        spear3xx_defconfig
arm                        vexpress_defconfig
arm                          collie_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
hexagon              randconfig-r041-20220414
hexagon              randconfig-r045-20220414

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
