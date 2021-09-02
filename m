Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC673FE90F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Sep 2021 08:04:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C95740291;
	Thu,  2 Sep 2021 06:04:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LADlyJk23L3Y; Thu,  2 Sep 2021 06:04:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA200406C3;
	Thu,  2 Sep 2021 06:04:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA0B41BF35A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Sep 2021 06:04:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D5C26403AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Sep 2021 06:04:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pkepQkCukXYl for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Sep 2021 06:04:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA90740386
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Sep 2021 06:04:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="218993935"
X-IronPort-AV: E=Sophos;i="5.84,371,1620716400"; d="scan'208";a="218993935"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 23:04:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,371,1620716400"; d="scan'208";a="602133845"
Received: from lkp-server01.sh.intel.com (HELO 4fbc2b3ce5aa) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 01 Sep 2021 23:04:20 -0700
Received: from kbuild by 4fbc2b3ce5aa with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mLfpj-0008fm-MG; Thu, 02 Sep 2021 06:04:19 +0000
Date: Thu, 02 Sep 2021 14:04:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6130695b.9CTWvh4DQAjj5Uzv%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 7bc1a44eee6072021560b14a81e468e04923ba99
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
branch HEAD: 7bc1a44eee6072021560b14a81e468e04923ba99  iavf: Refactor string format to avoid static analysis warnings

elapsed time: 1856m

configs tested: 139
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210901
i386                 randconfig-c001-20210831
mips                        workpad_defconfig
i386                             alldefconfig
powerpc                    mvme5100_defconfig
sh                            titan_defconfig
arm                           u8500_defconfig
nds32                            alldefconfig
mips                           ip27_defconfig
powerpc                 xes_mpc85xx_defconfig
mips                           jazz_defconfig
arm                         vf610m4_defconfig
mips                      maltaaprp_defconfig
powerpc                 mpc8313_rdb_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                            hisi_defconfig
mips                          ath25_defconfig
arm                       multi_v4t_defconfig
ia64                             allyesconfig
i386                             allyesconfig
arm                         hackkit_defconfig
sh                                  defconfig
xtensa                       common_defconfig
xtensa                  nommu_kc705_defconfig
sh                          lboxre2_defconfig
powerpc                  mpc866_ads_defconfig
arm                           h3600_defconfig
arm                         s5pv210_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
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
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a005-20210831
x86_64               randconfig-a001-20210831
x86_64               randconfig-a003-20210831
x86_64               randconfig-a002-20210831
x86_64               randconfig-a004-20210831
x86_64               randconfig-a006-20210831
i386                 randconfig-a005-20210831
i386                 randconfig-a002-20210831
i386                 randconfig-a003-20210831
i386                 randconfig-a006-20210831
i386                 randconfig-a004-20210831
i386                 randconfig-a001-20210831
x86_64               randconfig-a016-20210901
x86_64               randconfig-a011-20210901
x86_64               randconfig-a012-20210901
x86_64               randconfig-a015-20210901
x86_64               randconfig-a014-20210901
x86_64               randconfig-a013-20210901
i386                 randconfig-a012-20210901
i386                 randconfig-a015-20210901
i386                 randconfig-a011-20210901
i386                 randconfig-a013-20210901
i386                 randconfig-a014-20210901
i386                 randconfig-a016-20210901
arc                  randconfig-r043-20210831
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
x86_64                                  kexec

clang tested configs:
s390                 randconfig-c005-20210901
mips                 randconfig-c004-20210901
x86_64               randconfig-c007-20210901
powerpc              randconfig-c003-20210901
i386                 randconfig-c001-20210901
arm                  randconfig-c002-20210901
riscv                randconfig-c006-20210901
i386                 randconfig-c001-20210831
s390                 randconfig-c005-20210831
riscv                randconfig-c006-20210831
powerpc              randconfig-c003-20210831
mips                 randconfig-c004-20210831
arm                  randconfig-c002-20210831
x86_64               randconfig-c007-20210831
x86_64               randconfig-a004-20210901
x86_64               randconfig-a006-20210901
x86_64               randconfig-a003-20210901
x86_64               randconfig-a005-20210901
x86_64               randconfig-a001-20210901
x86_64               randconfig-a002-20210901
x86_64               randconfig-a014-20210831
x86_64               randconfig-a015-20210831
x86_64               randconfig-a013-20210831
x86_64               randconfig-a016-20210831
x86_64               randconfig-a012-20210831
x86_64               randconfig-a011-20210831
i386                 randconfig-a016-20210831
i386                 randconfig-a011-20210831
i386                 randconfig-a015-20210831
i386                 randconfig-a014-20210831
i386                 randconfig-a012-20210831
i386                 randconfig-a013-20210831
s390                 randconfig-r044-20210831
hexagon              randconfig-r041-20210831
hexagon              randconfig-r045-20210831
riscv                randconfig-r042-20210831
hexagon              randconfig-r045-20210901
hexagon              randconfig-r041-20210901

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
