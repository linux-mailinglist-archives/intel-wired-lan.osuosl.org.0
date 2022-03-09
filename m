Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4521C4D31F9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Mar 2022 16:42:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B53860C2D;
	Wed,  9 Mar 2022 15:42:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id As6YgtHv9gTs; Wed,  9 Mar 2022 15:42:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6988960B4C;
	Wed,  9 Mar 2022 15:42:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 503C21BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 15:42:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3994E842CB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 15:42:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7hXDP-lueCcD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Mar 2022 15:42:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4489D842CA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 15:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646840536; x=1678376536;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=pNqHEQ5Pfti5cWqaaQwKDpFbgD5pY9cUJSwnzPKuU9U=;
 b=LWaIEjODE6khfgX7FZk5eKRH9td1XrMwh+jySDCPet5vMVRutvegZwNI
 +JbPEK+OxJl3ieawDoCj5mNtWc/EhN08o9MJDGPVqM796aRt76EuC1vQI
 HFxwZBUta6aQHD+8HTki6GFCmxjL9HBzes4JSofDk4aXr68pyugT9bzHi
 F6j02JcctuP+Aktnk1AwNqHKoOpDMdbOiGAIT4Z0pWdo1IanWwM+J10hZ
 E7jmYV0GZbxB6cBW/wxhPostH/5dti+joC4moD5YuTm8Imp/bFyo4MIY/
 PgqCgLrnY94yZxSQTTg+xx0VkSen/ElBmLMEEgVdwSTMnpa1ONMw7XLO8 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="237168318"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="237168318"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 07:42:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="554160116"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 09 Mar 2022 07:42:14 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nRyS5-0003Sq-QX; Wed, 09 Mar 2022 15:42:13 +0000
Date: Wed, 09 Mar 2022 23:41:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6228ca9f.0tQmdm91606EtgvY%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 ad35ffa252af67d4cc7c744b9377a2b577748e3f
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
branch HEAD: ad35ffa252af67d4cc7c744b9377a2b577748e3f  ice: Fix curr_link_speed advertised speed

elapsed time: 728m

configs tested: 133
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
powerpc                    klondike_defconfig
sh                   secureedge5410_defconfig
openrisc                 simple_smp_defconfig
m68k                          multi_defconfig
nios2                            alldefconfig
arm                        keystone_defconfig
microblaze                      mmu_defconfig
arm                           stm32_defconfig
ia64                         bigsur_defconfig
powerpc                 mpc834x_mds_defconfig
arm                          lpd270_defconfig
arc                          axs103_defconfig
sh                           se7722_defconfig
m68k                             alldefconfig
arm                         s3c6400_defconfig
mips                           xway_defconfig
ia64                          tiger_defconfig
h8300                     edosk2674_defconfig
xtensa                generic_kc705_defconfig
powerpc                     ep8248e_defconfig
sh                        apsh4ad0a_defconfig
sparc                       sparc32_defconfig
um                               alldefconfig
powerpc                        cell_defconfig
sh                   rts7751r2dplus_defconfig
sh                   sh7724_generic_defconfig
arm                        mini2440_defconfig
sh                           se7206_defconfig
xtensa                          iss_defconfig
arc                      axs103_smp_defconfig
powerpc                      arches_defconfig
microblaze                          defconfig
arm                  randconfig-c002-20220309
arm                  randconfig-c002-20220308
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arc                  randconfig-r043-20220309
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                                  kexec

clang tested configs:
x86_64                        randconfig-c007
riscv                randconfig-c006-20220309
powerpc              randconfig-c003-20220309
i386                          randconfig-c001
arm                  randconfig-c002-20220309
powerpc                 mpc836x_rdk_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                       ebony_defconfig
mips                           ip22_defconfig
mips                         tb0219_defconfig
arm                           spitz_defconfig
arm                       cns3420vb_defconfig
powerpc                     pseries_defconfig
arm                         s3c2410_defconfig
powerpc                          allyesconfig
arm                           sama7_defconfig
mips                            e55_defconfig
powerpc                     ppa8548_defconfig
hexagon                             defconfig
powerpc                      ppc44x_defconfig
arm                  colibri_pxa300_defconfig
powerpc                 mpc8272_ads_defconfig
mips                          ath25_defconfig
powerpc                     skiroot_defconfig
powerpc               mpc834x_itxgp_defconfig
arm                       netwinder_defconfig
powerpc                      katmai_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220309
hexagon              randconfig-r041-20220309
riscv                randconfig-r042-20220309
hexagon              randconfig-r045-20220308
hexagon              randconfig-r041-20220308

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
