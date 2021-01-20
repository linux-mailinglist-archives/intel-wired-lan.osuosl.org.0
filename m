Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E4D2FCC7D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jan 2021 09:17:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F8F987016;
	Wed, 20 Jan 2021 08:17:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yJE16wIFxKUk; Wed, 20 Jan 2021 08:17:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC30F86864;
	Wed, 20 Jan 2021 08:17:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 064D31C1135
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 08:17:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 02DDC85091
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 08:17:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3EZDRlzsggNP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jan 2021 08:17:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5EBAC85025
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 08:17:01 +0000 (UTC)
IronPort-SDR: H8V01+6WefiXA6G/vjaPJwdaUSv7oU2rlxG4gjyMRUWUieGySEuRRJhwWUjcKSaLyGtjbc+F/F
 vHvxlkKx6VMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="176494832"
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="176494832"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 00:17:00 -0800
IronPort-SDR: aTAMObie4jc+VD9cUDZGv+q/d2UsClRdt6mLpkrXWCta/86zjd41qzIqsdzLe/YuozQs6j2xxj
 pp0TyYYQbi1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="570046873"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 20 Jan 2021 00:16:59 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l28fi-0005gt-B9; Wed, 20 Jan 2021 08:16:58 +0000
Date: Wed, 20 Jan 2021 16:16:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6007e6e3.QLL+VOGDaSlfZ9fu%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 e4144f5fde1a09e02820b7a022c800a703df21c3
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
branch HEAD: e4144f5fde1a09e02820b7a022c800a703df21c3  i40e: Fix for link-flapping

elapsed time: 727m

configs tested: 109
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                           gcw0_defconfig
openrisc                            defconfig
sh                        sh7763rdp_defconfig
powerpc                      bamboo_defconfig
sh                           sh2007_defconfig
powerpc                      mgcoge_defconfig
powerpc                 mpc8313_rdb_defconfig
riscv                            alldefconfig
powerpc                      pmac32_defconfig
mips                           ci20_defconfig
arm                           sunxi_defconfig
mips                        bcm63xx_defconfig
powerpc                  iss476-smp_defconfig
powerpc                    adder875_defconfig
arm                            hisi_defconfig
arm                         palmz72_defconfig
mips                malta_kvm_guest_defconfig
m68k                         amcore_defconfig
mips                  decstation_64_defconfig
ia64                            zx1_defconfig
sh                              ul2_defconfig
sh                           se7721_defconfig
arm                           corgi_defconfig
m68k                        m5407c3_defconfig
m68k                          amiga_defconfig
powerpc                      cm5200_defconfig
parisc                generic-32bit_defconfig
arm                             ezx_defconfig
arm                          pxa168_defconfig
powerpc                 mpc837x_rdb_defconfig
h8300                            allyesconfig
arm                        spear6xx_defconfig
ia64                        generic_defconfig
powerpc                     mpc83xx_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210120
i386                 randconfig-a002-20210120
i386                 randconfig-a004-20210120
i386                 randconfig-a006-20210120
i386                 randconfig-a005-20210120
i386                 randconfig-a003-20210120
x86_64               randconfig-a012-20210120
x86_64               randconfig-a015-20210120
x86_64               randconfig-a016-20210120
x86_64               randconfig-a011-20210120
x86_64               randconfig-a013-20210120
x86_64               randconfig-a014-20210120
i386                 randconfig-a013-20210120
i386                 randconfig-a011-20210120
i386                 randconfig-a012-20210120
i386                 randconfig-a014-20210120
i386                 randconfig-a015-20210120
i386                 randconfig-a016-20210120
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a002-20210120
x86_64               randconfig-a003-20210120
x86_64               randconfig-a001-20210120
x86_64               randconfig-a005-20210120
x86_64               randconfig-a006-20210120
x86_64               randconfig-a004-20210120

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
