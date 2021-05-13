Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B927237FB5D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 May 2021 18:19:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1880C84391;
	Thu, 13 May 2021 16:19:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hs8JAELzCpZ7; Thu, 13 May 2021 16:19:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2ABBE83981;
	Thu, 13 May 2021 16:19:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 496671BF403
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 May 2021 16:19:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 36F1483981
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 May 2021 16:19:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 138Eq05NvENo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 May 2021 16:19:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 43421834F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 May 2021 16:19:00 +0000 (UTC)
IronPort-SDR: 2kNiy129MQ5eYoxgnS0zFRfHurS3qGvkpO8Rm8nS79Bn1RToP5eZ+otOvHHT4P0KHHXD0168hv
 ISd9v6uhNZ0A==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="285488223"
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="285488223"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 09:10:26 -0700
IronPort-SDR: aS+ZXMmsZ4geFR6/Jg7P+lwMnbSrYhxXMTlhmaGpt1MazEkklI+LsnynGvvCfEMimx27Hh/Xge
 CeIqU1kIqzJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="542539499"
Received: from lkp-server01.sh.intel.com (HELO ddd90b05c979) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 13 May 2021 09:10:25 -0700
Received: from kbuild by ddd90b05c979 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lhDuq-0000LM-3N; Thu, 13 May 2021 16:10:24 +0000
Date: Fri, 14 May 2021 00:09:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <609d4f57.+9EwR3ahWY05NLgt%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 69c04c2d36d6500dfa1f7033905e344323b06e8c
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
branch HEAD: 69c04c2d36d6500dfa1f7033905e344323b06e8c  ixgbe: fix large MTU request from VF

elapsed time: 722m

configs tested: 98
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
nds32                               defconfig
arc                     haps_hs_smp_defconfig
mips                          rm200_defconfig
powerpc                      cm5200_defconfig
powerpc                      katmai_defconfig
sh                          lboxre2_defconfig
powerpc                       maple_defconfig
powerpc                 linkstation_defconfig
powerpc                  storcenter_defconfig
ia64                             alldefconfig
powerpc                     powernv_defconfig
sh                             sh03_defconfig
powerpc                 mpc8313_rdb_defconfig
m68k                       m5249evb_defconfig
arm                         s5pv210_defconfig
arc                     nsimosci_hs_defconfig
m68k                          hp300_defconfig
arm                      footbridge_defconfig
sh                         ecovec24_defconfig
powerpc                  iss476-smp_defconfig
mips                       rbtx49xx_defconfig
riscv                            alldefconfig
arm                        vexpress_defconfig
m68k                        mvme147_defconfig
mips                            gpr_defconfig
sh                           sh2007_defconfig
mips                      malta_kvm_defconfig
arm                       imx_v6_v7_defconfig
arc                            hsdk_defconfig
arm                         lubbock_defconfig
sh                              ul2_defconfig
sh                           se7619_defconfig
x86_64                            allnoconfig
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
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210513
i386                 randconfig-a001-20210513
i386                 randconfig-a005-20210513
i386                 randconfig-a004-20210513
i386                 randconfig-a002-20210513
i386                 randconfig-a006-20210513
x86_64               randconfig-a012-20210513
x86_64               randconfig-a015-20210513
x86_64               randconfig-a011-20210513
x86_64               randconfig-a013-20210513
x86_64               randconfig-a016-20210513
x86_64               randconfig-a014-20210513
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                      rhel-8.3-kbuiltin
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
