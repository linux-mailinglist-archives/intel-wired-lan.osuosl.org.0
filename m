Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5953706D2
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 May 2021 12:29:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C42940408;
	Sat,  1 May 2021 10:29:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WUxp6N_NIaX5; Sat,  1 May 2021 10:29:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 28521403FB;
	Sat,  1 May 2021 10:29:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9205B1BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 May 2021 10:29:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 84D7960629
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 May 2021 10:29:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sFaUOzatfoA2 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 May 2021 10:28:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD00D60622
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 May 2021 10:28:59 +0000 (UTC)
IronPort-SDR: tnRmNCh8n93vrRAQaWFciNGcG59BsR53Z0IndiwCdofhUCkrFlBUEyj1jZ13DsZXeLoRev3UOj
 La7hcjY8CdIA==
X-IronPort-AV: E=McAfee;i="6200,9189,9970"; a="195356619"
X-IronPort-AV: E=Sophos;i="5.82,264,1613462400"; d="scan'208";a="195356619"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2021 03:28:57 -0700
IronPort-SDR: EIas9bQ4XMrH2xAwyX5TLl7iv5yu1V67CNfwRe995YHw1Gt7jQub8CL+KZhwDSlCfbtFvXQRhV
 MOVAO9WHhZEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,264,1613462400"; d="scan'208";a="449338782"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 01 May 2021 03:28:56 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lcmrn-0008Wh-Mz; Sat, 01 May 2021 10:28:55 +0000
Date: Sat, 01 May 2021 18:28:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <608d2d66.GJwxb4oW+Pq9xn2u%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS WITH
 WARNING 9db33b54fb98525e323d0d3f16b01778f17b9493
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
branch HEAD: 9db33b54fb98525e323d0d3f16b01778f17b9493  igb: Add counter to i21x doublecheck

Warning in current branch:

drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c:654:14: warning: variable 'reg_c1' set but not used [-Wunused-but-set-variable]

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm64-defconfig
|   `-- drivers-net-ethernet-mellanox-mlx5-core-en-rep-tc.c:warning:variable-reg_c1-set-but-not-used
`-- i386-randconfig-a004-20210430
    `-- drivers-net-ethernet-mellanox-mlx5-core-en-rep-tc.c:warning:variable-reg_c1-set-but-not-used

elapsed time: 724m

configs tested: 107
configs skipped: 2

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
mips                     loongson1b_defconfig
powerpc                     rainier_defconfig
mips                       capcella_defconfig
arm                  colibri_pxa270_defconfig
m68k                        m5407c3_defconfig
sh                           se7712_defconfig
powerpc                      ppc40x_defconfig
sh                           se7750_defconfig
powerpc                    ge_imp3a_defconfig
ia64                        generic_defconfig
powerpc                      bamboo_defconfig
arm                        oxnas_v6_defconfig
arm                           corgi_defconfig
sh                   sh7770_generic_defconfig
mips                        bcm47xx_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                         ps3_defconfig
powerpc                     tqm8541_defconfig
arm                         axm55xx_defconfig
mips                     decstation_defconfig
arm                        trizeps4_defconfig
arm                         cm_x300_defconfig
m68k                          hp300_defconfig
xtensa                         virt_defconfig
arm                           sunxi_defconfig
ia64                                defconfig
mips                           jazz_defconfig
openrisc                            defconfig
sh                             shx3_defconfig
sh                  sh7785lcr_32bit_defconfig
ia64                             allmodconfig
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
x86_64               randconfig-a003-20210430
x86_64               randconfig-a004-20210430
x86_64               randconfig-a002-20210430
x86_64               randconfig-a006-20210430
x86_64               randconfig-a001-20210430
x86_64               randconfig-a005-20210430
i386                 randconfig-a004-20210430
i386                 randconfig-a001-20210430
i386                 randconfig-a003-20210430
i386                 randconfig-a002-20210430
i386                 randconfig-a005-20210430
i386                 randconfig-a006-20210430
i386                 randconfig-a013-20210430
i386                 randconfig-a011-20210430
i386                 randconfig-a016-20210430
i386                 randconfig-a015-20210430
i386                 randconfig-a012-20210430
i386                 randconfig-a014-20210430
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a011-20210430
x86_64               randconfig-a016-20210430
x86_64               randconfig-a013-20210430
x86_64               randconfig-a014-20210430
x86_64               randconfig-a012-20210430
x86_64               randconfig-a015-20210430

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
