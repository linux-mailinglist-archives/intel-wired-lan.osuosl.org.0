Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F127F35DFFD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Apr 2021 15:26:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 94FB340699;
	Tue, 13 Apr 2021 13:26:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8AKQLTeQYGxk; Tue, 13 Apr 2021 13:26:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B18D40624;
	Tue, 13 Apr 2021 13:26:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 48B071BF841
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 13:26:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 37D1A606BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 13:26:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id svhOljMNncOh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Apr 2021 13:26:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 399F66060D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 13:26:17 +0000 (UTC)
IronPort-SDR: Sop+WEJWm7tvJrmih74xQPb+TYsAP7RERwlOis2VesHdAwwPok+J6dZKUUEOtwlCffgwytev/u
 U/5RxhKmn8iw==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="173904242"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="173904242"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 06:26:05 -0700
IronPort-SDR: A2c/SqVlsQFyH6QKY5uDNvuEngNLwGQcjltZZPK7E/uRksk6ho3vlIl86cdWlv+D9092/TtNvl
 lu1wsM6x2XfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="450396272"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Apr 2021 06:26:03 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lWJ3L-00014O-3s; Tue, 13 Apr 2021 13:26:03 +0000
Date: Tue, 13 Apr 2021 21:25:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60759be3.C+GAkh7bzdqLGbo1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS WITH
 WARNING 4947076b75387e9e94efd80d0ba4fb26341cd2fd
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
branch HEAD: 4947076b75387e9e94efd80d0ba4fb26341cd2fd  i40e: Fix use-after-free in i40e_client_subtask()

Warning in current branch:

drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c:654:14: warning: variable 'reg_c1' set but not used [-Wunused-but-set-variable]

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- arm64-defconfig
    `-- drivers-net-ethernet-mellanox-mlx5-core-en-rep-tc.c:warning:variable-reg_c1-set-but-not-used

elapsed time: 721m

configs tested: 147
configs skipped: 3

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
h8300                       h8s-sim_defconfig
mips                       bmips_be_defconfig
powerpc                 canyonlands_defconfig
mips                  decstation_64_defconfig
arm                              alldefconfig
arm                       aspeed_g4_defconfig
powerpc                      cm5200_defconfig
arm                   milbeaut_m10v_defconfig
arm                        mvebu_v7_defconfig
mips                          ath79_defconfig
microblaze                          defconfig
sh                          rsk7269_defconfig
arm                       cns3420vb_defconfig
ia64                          tiger_defconfig
arc                        nsim_700_defconfig
openrisc                 simple_smp_defconfig
sh                           se7750_defconfig
mips                           rs90_defconfig
powerpc                    gamecube_defconfig
arc                     nsimosci_hs_defconfig
powerpc                     redwood_defconfig
powerpc                    klondike_defconfig
m68k                           sun3_defconfig
sh                         ecovec24_defconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                     sbc8548_defconfig
arm                         assabet_defconfig
h8300                    h8300h-sim_defconfig
xtensa                              defconfig
powerpc                 mpc832x_rdb_defconfig
arm                           h3600_defconfig
powerpc                   lite5200b_defconfig
arm                       netwinder_defconfig
arm                           corgi_defconfig
arm                        magician_defconfig
um                                  defconfig
arm                            zeus_defconfig
openrisc                         alldefconfig
m68k                          atari_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc                        fsp2_defconfig
sh                   sh7770_generic_defconfig
powerpc                     pq2fads_defconfig
riscv             nommu_k210_sdcard_defconfig
arm                         hackkit_defconfig
m68k                       m5208evb_defconfig
arm                            xcep_defconfig
arm                             ezx_defconfig
um                               allmodconfig
arm                            qcom_defconfig
mips                        omega2p_defconfig
mips                         mpc30x_defconfig
arm                            mmp2_defconfig
arm                          ep93xx_defconfig
m68k                            mac_defconfig
arm                  colibri_pxa270_defconfig
mips                           ci20_defconfig
arm                        clps711x_defconfig
sh                          landisk_defconfig
x86_64                           alldefconfig
sh                           sh2007_defconfig
openrisc                    or1ksim_defconfig
m68k                          multi_defconfig
mips                        workpad_defconfig
m68k                          amiga_defconfig
powerpc                     pseries_defconfig
mips                          ath25_defconfig
mips                 decstation_r4k_defconfig
mips                         tb0219_defconfig
powerpc                       ebony_defconfig
parisc                generic-32bit_defconfig
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
x86_64               randconfig-a003-20210413
x86_64               randconfig-a002-20210413
x86_64               randconfig-a001-20210413
x86_64               randconfig-a005-20210413
x86_64               randconfig-a006-20210413
x86_64               randconfig-a004-20210413
i386                 randconfig-a003-20210413
i386                 randconfig-a001-20210413
i386                 randconfig-a006-20210413
i386                 randconfig-a005-20210413
i386                 randconfig-a004-20210413
i386                 randconfig-a002-20210413
i386                 randconfig-a015-20210413
i386                 randconfig-a014-20210413
i386                 randconfig-a013-20210413
i386                 randconfig-a012-20210413
i386                 randconfig-a016-20210413
i386                 randconfig-a011-20210413
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                                allnoconfig
um                               allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a014-20210413
x86_64               randconfig-a015-20210413
x86_64               randconfig-a011-20210413
x86_64               randconfig-a013-20210413
x86_64               randconfig-a012-20210413
x86_64               randconfig-a016-20210413

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
