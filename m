Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B67506969
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Apr 2022 13:07:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7654541067;
	Tue, 19 Apr 2022 11:07:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vn4p1db7yT5Z; Tue, 19 Apr 2022 11:07:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7CF5D404C7;
	Tue, 19 Apr 2022 11:07:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A58B91BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 11:06:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9FF1B40C4A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 11:06:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h4-Us0bv9dB1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Apr 2022 11:06:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7E6934011D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 11:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650366414; x=1681902414;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=8ejFUVz/+N9v5NUWntejiLCZxrR/SoQM+KBlGIQbUv8=;
 b=nY2U/VKUT7D7qC0w+vIkl/76/QcbcpBuRp8ggDQKmg6AzoY25MAQ/RGN
 bCSTchvsr5hfJtzt5I3ipPc2ZtHnOL9h7OdkzEWwpd0TVVyc33tuZk4bU
 DNOl1mPHhLRZ0bCVkUE4MaJHSI+TNQSFB4Wd95gEmc0hBaViEPHvPsXxa
 f/3FZ/Kdb/M/oYfvL5lP+5Pvb4TnnJqyN9WlYkAB+YyzZQ+vmrtibASeS
 bD8Ej7trBiY2Y1gWh05jV6OAJZnMWoCZ2vROXyWPk/3yPya/A3mKyMzB5
 mJCoubJI41Obg2pyYyMXHZOaOUTc8kOzE7SxxWE1UdEmuen87Z5OnK+8L Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="324181539"
X-IronPort-AV: E=Sophos;i="5.90,272,1643702400"; d="scan'208";a="324181539"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 04:06:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,272,1643702400"; d="scan'208";a="727027219"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 19 Apr 2022 04:06:51 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nglh2-0005h4-HF;
 Tue, 19 Apr 2022 11:06:48 +0000
Date: Tue, 19 Apr 2022 19:06:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <625e9798./Fc4b2YV1FPPzFfP%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 6e51f61589038cd05bc2fc74577f8f61cfecb801
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 6e51f61589038cd05bc2fc74577f8f61cfecb801  iavf: Add waiting for response from PF in set mac

elapsed time: 1014m

configs tested: 109
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                 randconfig-c001-20220418
sparc                       sparc32_defconfig
xtensa                  cadence_csp_defconfig
mips                            ar7_defconfig
sparc                       sparc64_defconfig
powerpc                 mpc8540_ads_defconfig
sh                     magicpanelr2_defconfig
nios2                               defconfig
sh                          landisk_defconfig
arm                        shmobile_defconfig
sparc64                          alldefconfig
microblaze                      mmu_defconfig
parisc                           alldefconfig
xtensa                  nommu_kc705_defconfig
m68k                          hp300_defconfig
sh                            hp6xx_defconfig
mips                         cobalt_defconfig
powerpc                      pasemi_defconfig
arm                  randconfig-c002-20220417
arm                  randconfig-c002-20220418
x86_64               randconfig-c001-20220418
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64               randconfig-a003-20220418
x86_64               randconfig-a004-20220418
x86_64               randconfig-a006-20220418
x86_64               randconfig-a001-20220418
x86_64               randconfig-a002-20220418
x86_64               randconfig-a005-20220418
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
arm                         s5pv210_defconfig
arm                          collie_defconfig
powerpc                     kmeter1_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a016-20220418
x86_64               randconfig-a012-20220418
x86_64               randconfig-a013-20220418
x86_64               randconfig-a014-20220418
x86_64               randconfig-a015-20220418
x86_64               randconfig-a011-20220418
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                 randconfig-a011-20220418
i386                 randconfig-a015-20220418
i386                 randconfig-a016-20220418
i386                 randconfig-a012-20220418
i386                 randconfig-a013-20220418
i386                 randconfig-a014-20220418
riscv                randconfig-r042-20220418
hexagon              randconfig-r041-20220417
hexagon              randconfig-r041-20220418
hexagon              randconfig-r045-20220417
hexagon              randconfig-r045-20220418

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
