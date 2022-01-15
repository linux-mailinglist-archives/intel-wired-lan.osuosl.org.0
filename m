Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4356D48F783
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Jan 2022 16:26:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C63C6408A7;
	Sat, 15 Jan 2022 15:26:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I27WAqdcXwZ2; Sat, 15 Jan 2022 15:26:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9522B4087C;
	Sat, 15 Jan 2022 15:26:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A79E1BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jan 2022 15:26:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 53FBF4087C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jan 2022 15:26:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jD1QsrEfKG1X for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Jan 2022 15:26:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B45F5403C5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jan 2022 15:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642260365; x=1673796365;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=gtSNEK7pIs3V90hkv3LHrkaMGDq7Uqgj7CDZKzAwgaM=;
 b=U854wpc0QuNEGJsZxpnsvDW//EjE/7/KoGKD/KzD8O8llr0rsElndLkP
 dpaoB/WhV27RPim9SyJZ5rLRZs+ZITR9LA1c4xdK3Usr3psYHORzI+NM5
 REPi7sWUtcJFJ+ppHFixwGBVpjcPZ1QHvc9hSrLIRod8yB3YQkp736wep
 +vAerX6AfsgW1OED31KBtiLkKZywXey9KtQeaPmYJkYWKu2AxosBbzXlO
 ng7nyQG9jmLpMDCoBlyRNQsGrIFjC9YAnra7hS4S5IsKr7fBnIo5Gt/6i
 67NdsUxQugCjwqC146Dn6mvr3KJCNiAfW9u1dInWMncife3n95NLYFARY A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10227"; a="244376452"
X-IronPort-AV: E=Sophos;i="5.88,290,1635231600"; d="scan'208";a="244376452"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2022 07:26:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,290,1635231600"; d="scan'208";a="476115325"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 15 Jan 2022 07:26:04 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n8kwN-0009vg-Ao; Sat, 15 Jan 2022 15:26:03 +0000
Date: Sat, 15 Jan 2022 23:25:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61e2e770.0Uc76vwzhjiGfBS/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 47c96796277acb62f2a21b9100dc200e1028af31
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
branch HEAD: 47c96796277acb62f2a21b9100dc200e1028af31  i40e: Fix race condition while adding/deleting MAC/VLAN filters

elapsed time: 817m

configs tested: 115
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
i386                          randconfig-c001
powerpc                      pcm030_defconfig
arm                             pxa_defconfig
arm                        mvebu_v7_defconfig
arm                           viper_defconfig
arm                      integrator_defconfig
xtensa                generic_kc705_defconfig
xtensa                    xip_kc705_defconfig
ia64                                defconfig
sh                   secureedge5410_defconfig
mips                          rb532_defconfig
arm                         assabet_defconfig
m68k                            mac_defconfig
sh                            shmin_defconfig
sh                             shx3_defconfig
sh                          r7785rp_defconfig
powerpc                     tqm8541_defconfig
arc                    vdk_hs38_smp_defconfig
sh                          polaris_defconfig
sh                          rsk7269_defconfig
arm                         s3c6400_defconfig
arm                       multi_v4t_defconfig
sh                        dreamcast_defconfig
arm                  randconfig-c002-20220114
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                             allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sparc                               defconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220113
arc                  randconfig-r043-20220113
s390                 randconfig-r044-20220113
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                          rhel-8.3-func
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests

clang tested configs:
powerpc                     skiroot_defconfig
arm                     davinci_all_defconfig
powerpc                     pseries_defconfig
arm                       spear13xx_defconfig
arm                       imx_v4_v5_defconfig
arm                           spitz_defconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a005
x86_64                        randconfig-a003
hexagon              randconfig-r045-20220113
hexagon              randconfig-r045-20220114
riscv                randconfig-r042-20220114
hexagon              randconfig-r041-20220114
hexagon              randconfig-r041-20220113

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
