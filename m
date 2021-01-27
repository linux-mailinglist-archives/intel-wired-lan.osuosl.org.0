Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF63305DF9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jan 2021 15:13:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8790285722;
	Wed, 27 Jan 2021 14:13:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OQR5Z_YG3UNS; Wed, 27 Jan 2021 14:13:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B28AB85ABB;
	Wed, 27 Jan 2021 14:13:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 70B641BF301
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 14:13:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 67A3784FC9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 14:13:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DU-O0gKGFqxI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jan 2021 14:13:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1157F84F24
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 14:13:53 +0000 (UTC)
IronPort-SDR: mFjyCPTJwD1LaIZ3SdRaXLb9iRjyeQprTsgRAtyr1f+rYowluYQPIgJV28UFK0PU4LeIiH7D3U
 ynVNw3+XCeJg==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="180151837"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="180151837"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 06:13:52 -0800
IronPort-SDR: gxsV9to5lZz4KYFccl2EJl21ENn/Is+UO5AyRN6vvegdGTKj3KMZJhuICosf+hnAZnpic8JUiG
 GvYxaNNCQlHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="430112784"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 27 Jan 2021 06:13:51 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l4lZu-0001bx-Jh; Wed, 27 Jan 2021 14:13:50 +0000
Date: Wed, 27 Jan 2021 22:13:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <601174fa.LW8/F7WqUnwVl1Tn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS WITH
 WARNING 6cb2d50eee0b83d340d508d095414ae6faaaf2cf
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
branch HEAD: 6cb2d50eee0b83d340d508d095414ae6faaaf2cf  i40e: Revert "i40e: don't report link up for a VF who hasn't enabled queues"

possible Warning in current branch:

drivers/net/ethernet/intel/i40e/i40e_ptp.c:29:57-58: WARNING opportunity for kobj_to_dev()

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- powerpc64-randconfig-c004-20210126
    `-- drivers-net-ethernet-intel-i40e-i40e_ptp.c:WARNING-opportunity-for-kobj_to_dev()

elapsed time: 720m

configs tested: 103
configs skipped: 2

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                          landisk_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                        warp_defconfig
powerpc                     tqm8560_defconfig
powerpc                      ppc44x_defconfig
arm                        clps711x_defconfig
mips                     decstation_defconfig
powerpc                  storcenter_defconfig
arm                          ep93xx_defconfig
powerpc                         wii_defconfig
sh                           se7780_defconfig
arm                  colibri_pxa300_defconfig
c6x                                 defconfig
powerpc                     taishan_defconfig
arm                            hisi_defconfig
arc                              allyesconfig
nds32                             allnoconfig
powerpc                    adder875_defconfig
arm                       cns3420vb_defconfig
um                            kunit_defconfig
sh                        edosk7705_defconfig
powerpc                 mpc832x_rdb_defconfig
arm                            lart_defconfig
powerpc                           allnoconfig
arm                        spear3xx_defconfig
arm                        spear6xx_defconfig
arc                         haps_hs_defconfig
mips                        nlm_xlr_defconfig
arm                        neponset_defconfig
arm                        multi_v7_defconfig
nds32                               defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
c6x                              allyesconfig
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
i386                 randconfig-a001-20210126
i386                 randconfig-a002-20210126
i386                 randconfig-a004-20210126
i386                 randconfig-a006-20210126
i386                 randconfig-a003-20210126
i386                 randconfig-a005-20210126
x86_64               randconfig-a012-20210126
x86_64               randconfig-a016-20210126
x86_64               randconfig-a015-20210126
x86_64               randconfig-a011-20210126
x86_64               randconfig-a013-20210126
x86_64               randconfig-a014-20210126
i386                 randconfig-a013-20210126
i386                 randconfig-a011-20210126
i386                 randconfig-a012-20210126
i386                 randconfig-a014-20210126
i386                 randconfig-a015-20210126
i386                 randconfig-a016-20210126
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
x86_64               randconfig-a003-20210126
x86_64               randconfig-a002-20210126
x86_64               randconfig-a001-20210126
x86_64               randconfig-a005-20210126
x86_64               randconfig-a006-20210126
x86_64               randconfig-a004-20210126

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
