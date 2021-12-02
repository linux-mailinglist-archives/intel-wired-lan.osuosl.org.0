Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9BC46621A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Dec 2021 12:11:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02B2683E1B;
	Thu,  2 Dec 2021 11:11:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J9NBkOt-Ykeb; Thu,  2 Dec 2021 11:11:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CD9F83E11;
	Thu,  2 Dec 2021 11:11:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C6CD1BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 11:11:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 68130403CE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 11:11:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GaNN89zYTg3i for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Dec 2021 11:11:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 838BF4028A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 11:11:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="216703103"
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="216703103"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 03:11:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="677627172"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 02 Dec 2021 03:11:29 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1msjzs-000GEn-OG; Thu, 02 Dec 2021 11:11:28 +0000
Date: Thu, 02 Dec 2021 19:10:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61a8a9a2.itOdIRqAdSI66fpg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 27b0f1485fe9a68d52554a85af81440644fc7675
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
branch HEAD: 27b0f1485fe9a68d52554a85af81440644fc7675  i40e: Fix NULL pointer dereference in i40e_dbg_dump_desc

elapsed time: 748m

configs tested: 164
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm                              allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211202
arm                           corgi_defconfig
sparc                       sparc64_defconfig
powerpc                        warp_defconfig
arm                          pxa910_defconfig
powerpc                          g5_defconfig
arc                        nsim_700_defconfig
openrisc                 simple_smp_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                 linkstation_defconfig
sh                        apsh4ad0a_defconfig
arm                       versatile_defconfig
sh                     sh7710voipgw_defconfig
riscv                    nommu_k210_defconfig
arm                          moxart_defconfig
sh                               allmodconfig
arm                         lubbock_defconfig
xtensa                          iss_defconfig
arm                          ixp4xx_defconfig
powerpc                 mpc8540_ads_defconfig
sh                          r7780mp_defconfig
sh                         apsh4a3a_defconfig
xtensa                    smp_lx200_defconfig
arm                         hackkit_defconfig
arm                         mv78xx0_defconfig
s390                                defconfig
nds32                            alldefconfig
sh                          landisk_defconfig
sh                        edosk7760_defconfig
m68k                       m5275evb_defconfig
arm                      tct_hammer_defconfig
mips                        bcm63xx_defconfig
s390                       zfcpdump_defconfig
xtensa                       common_defconfig
arm                      jornada720_defconfig
nds32                               defconfig
arm                            pleb_defconfig
arm                          pxa168_defconfig
m68k                          hp300_defconfig
m68k                            q40_defconfig
arm                           sama5_defconfig
powerpc                   lite5200b_defconfig
arm                        spear3xx_defconfig
powerpc                      mgcoge_defconfig
arm                       cns3420vb_defconfig
arm                            hisi_defconfig
um                                  defconfig
sh                        edosk7705_defconfig
arm                           h5000_defconfig
arm                         cm_x300_defconfig
powerpc                   microwatt_defconfig
arm                         s3c2410_defconfig
sh                           se7619_defconfig
arm                  randconfig-c002-20211202
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
i386                             allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sparc                            allyesconfig
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20211129
i386                 randconfig-a002-20211129
i386                 randconfig-a006-20211129
i386                 randconfig-a005-20211129
i386                 randconfig-a004-20211129
i386                 randconfig-a003-20211129
x86_64               randconfig-a016-20211202
x86_64               randconfig-a011-20211202
x86_64               randconfig-a013-20211202
x86_64               randconfig-a014-20211202
x86_64               randconfig-a012-20211202
x86_64               randconfig-a015-20211202
i386                 randconfig-a016-20211202
i386                 randconfig-a013-20211202
i386                 randconfig-a011-20211202
i386                 randconfig-a014-20211202
i386                 randconfig-a012-20211202
i386                 randconfig-a015-20211202
arc                  randconfig-r043-20211129
arc                  randconfig-r043-20211128
s390                 randconfig-r044-20211128
riscv                randconfig-r042-20211128
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
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20211202
x86_64               randconfig-c007-20211202
riscv                randconfig-c006-20211202
i386                 randconfig-c001-20211202
powerpc              randconfig-c003-20211202
s390                 randconfig-c005-20211202
x86_64               randconfig-a006-20211202
x86_64               randconfig-a005-20211202
x86_64               randconfig-a001-20211202
x86_64               randconfig-a002-20211202
x86_64               randconfig-a004-20211202
x86_64               randconfig-a003-20211202
i386                 randconfig-a001-20211128
i386                 randconfig-a002-20211128
i386                 randconfig-a006-20211128
i386                 randconfig-a005-20211128
i386                 randconfig-a004-20211128
i386                 randconfig-a003-20211128
i386                 randconfig-a001-20211202
i386                 randconfig-a005-20211202
i386                 randconfig-a002-20211202
i386                 randconfig-a003-20211202
i386                 randconfig-a006-20211202
i386                 randconfig-a004-20211202
x86_64               randconfig-a014-20211130
x86_64               randconfig-a013-20211130
x86_64               randconfig-a012-20211130
x86_64               randconfig-a015-20211130
x86_64               randconfig-a011-20211130
x86_64               randconfig-a016-20211130
i386                 randconfig-a013-20211201
i386                 randconfig-a016-20211201
i386                 randconfig-a011-20211201
i386                 randconfig-a014-20211201
i386                 randconfig-a012-20211201
i386                 randconfig-a015-20211201
hexagon              randconfig-r045-20211129
hexagon              randconfig-r041-20211129
s390                 randconfig-r044-20211129
riscv                randconfig-r042-20211129

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
