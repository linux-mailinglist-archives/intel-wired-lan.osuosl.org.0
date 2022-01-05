Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C639B4851EA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jan 2022 12:35:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D448408ED;
	Wed,  5 Jan 2022 11:35:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8E3Ymmis8ZkT; Wed,  5 Jan 2022 11:35:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2E50640502;
	Wed,  5 Jan 2022 11:35:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 700541BF575
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 11:35:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5C07A82F31
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 11:35:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EvEldybYpZC9 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jan 2022 11:35:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A59D82F37
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 11:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641382540; x=1672918540;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=hpeVo0Q1AMvBYQ3+lkIOA4xXrKN9higviSHF2P9mFAQ=;
 b=EaQfF4JeN/GNCFs7aT6hPJ7VRaJisbvto9yMKnw2SdHBjVnSC7d+1BQm
 HDkPouHtSe160yZ1UAYd77HcnAE/eLUi7W4/CULgaeST/cMMZlf30myTx
 hIM9/ZDEqvfLfFCZmmHpdEC9anf55k7XrVDsrhImLnCPfhD1Ob6jiJKL5
 /ijFwJgjLW3vGBfXEIZWaHmRi1PphL9BtntJA2+sIUSYSPtQf7sNmNMTh
 1JvbELPzivpO97Awfrha+p39rnGl0i501we4+Q0IrIgnXHFzKPWZh03Ad
 kS4jxsvoB1ZGhpJmuwtegGX9o/mod41bq7o+WyGWtgpKcFVNnRsPjA5LW Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="242219656"
X-IronPort-AV: E=Sophos;i="5.88,263,1635231600"; d="scan'208";a="242219656"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 03:35:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,263,1635231600"; d="scan'208";a="760772301"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 05 Jan 2022 03:35:38 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n54Zt-000GYn-9f; Wed, 05 Jan 2022 11:35:37 +0000
Date: Wed, 05 Jan 2022 19:34:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61d58260.1grlBLjZzBNRinMI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 b712941c8085e638bb92456e866ed3de4404e3d5
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
branch HEAD: b712941c8085e638bb92456e866ed3de4404e3d5  iavf: Fix limit of total number of queues to active queues of VF

elapsed time: 721m

configs tested: 127
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220105
sh                          polaris_defconfig
mips                      fuloong2e_defconfig
powerpc                    klondike_defconfig
powerpc                 canyonlands_defconfig
ia64                             allyesconfig
powerpc                           allnoconfig
powerpc                      bamboo_defconfig
arc                        nsim_700_defconfig
sh                        edosk7705_defconfig
sh                     magicpanelr2_defconfig
powerpc                      tqm8xx_defconfig
powerpc                 linkstation_defconfig
arm                           stm32_defconfig
powerpc                        warp_defconfig
arm                          lpd270_defconfig
arm                        shmobile_defconfig
arm                           u8500_defconfig
h8300                               defconfig
arm                         axm55xx_defconfig
sh                           sh2007_defconfig
i386                             alldefconfig
nds32                               defconfig
arm                            zeus_defconfig
mips                  maltasmvp_eva_defconfig
powerpc                 mpc85xx_cds_defconfig
arm                  randconfig-c002-20220105
ia64                             allmodconfig
ia64                                defconfig
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
sh                               allmodconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
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
x86_64               randconfig-a005-20220105
x86_64               randconfig-a001-20220105
x86_64               randconfig-a004-20220105
x86_64               randconfig-a006-20220105
x86_64               randconfig-a003-20220105
x86_64               randconfig-a002-20220105
i386                 randconfig-a003-20220105
i386                 randconfig-a005-20220105
i386                 randconfig-a004-20220105
i386                 randconfig-a006-20220105
i386                 randconfig-a002-20220105
i386                 randconfig-a001-20220105
arc                  randconfig-r043-20220105
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
x86_64                                  kexec

clang tested configs:
mips                 randconfig-c004-20220105
arm                  randconfig-c002-20220105
i386                 randconfig-c001-20220105
riscv                randconfig-c006-20220105
powerpc              randconfig-c003-20220105
x86_64               randconfig-c007-20220105
powerpc                  mpc885_ads_defconfig
arm                        multi_v5_defconfig
riscv                          rv32_defconfig
mips                           ip28_defconfig
mips                      maltaaprp_defconfig
powerpc                 mpc8313_rdb_defconfig
powerpc                     akebono_defconfig
arm                         hackkit_defconfig
arm                              alldefconfig
powerpc                      obs600_defconfig
powerpc                          g5_defconfig
arm                          collie_defconfig
mips                   sb1250_swarm_defconfig
arm                         socfpga_defconfig
mips                           ip22_defconfig
mips                        qi_lb60_defconfig
arm                           spitz_defconfig
arm                         s3c2410_defconfig
x86_64               randconfig-a012-20220105
x86_64               randconfig-a015-20220105
x86_64               randconfig-a014-20220105
x86_64               randconfig-a013-20220105
x86_64               randconfig-a011-20220105
x86_64               randconfig-a016-20220105
i386                 randconfig-a012-20220105
i386                 randconfig-a016-20220105
i386                 randconfig-a015-20220105
i386                 randconfig-a014-20220105
i386                 randconfig-a011-20220105
i386                 randconfig-a013-20220105
hexagon              randconfig-r041-20220105
hexagon              randconfig-r045-20220105
riscv                randconfig-r042-20220105

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
