Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6DC3B44AD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jun 2021 15:43:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 16119421ED;
	Fri, 25 Jun 2021 13:43:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D8ZmrReuRy7O; Fri, 25 Jun 2021 13:43:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E94424160D;
	Fri, 25 Jun 2021 13:43:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0A72F1BF360
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 13:43:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ECD6840164
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 13:43:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 968x4wFemBQl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jun 2021 13:43:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 34F2640142
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 13:43:01 +0000 (UTC)
IronPort-SDR: eVrRbXYb6HkFv9RKWeBduPfMCr4ZHZJqWLJERR81m9H8sv9MA9we94wf1VPp/T2WfyZ+ADivYE
 Y0KOaatumeow==
X-IronPort-AV: E=McAfee;i="6200,9189,10026"; a="194812800"
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="194812800"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 06:43:00 -0700
IronPort-SDR: XY9davUOXTRb5o+Wl9CHUIsKdss6a3zBYwaqBTauj1N3lW12eoA+KwrVmU6/xo1tnw0BwOrQZc
 4vJbuBnD0yNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="453816781"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 25 Jun 2021 06:42:59 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lwm6k-0007BS-LA; Fri, 25 Jun 2021 13:42:58 +0000
Date: Fri, 25 Jun 2021 21:42:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60d5dd46.NeKM7M9j4pegMtVs%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 5a72b3e5938747a1bcd854bc308cdfc112c70e5e
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
branch HEAD: 5a72b3e5938747a1bcd854bc308cdfc112c70e5e  i40e: Fix creation of first queue by omitting it if is not power of two

elapsed time: 871m

configs tested: 136
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                            allyesconfig
arm64                               defconfig
powerpc                      tqm8xx_defconfig
ia64                        generic_defconfig
arm                         mv78xx0_defconfig
powerpc                     kmeter1_defconfig
powerpc                     akebono_defconfig
mips                        workpad_defconfig
xtensa                generic_kc705_defconfig
sh                          urquell_defconfig
mips                        omega2p_defconfig
sh                         ecovec24_defconfig
powerpc                 xes_mpc85xx_defconfig
m68k                       m5249evb_defconfig
arm                        keystone_defconfig
arm                       multi_v4t_defconfig
h8300                            alldefconfig
arm                           sama5_defconfig
arm                        vexpress_defconfig
arm                        cerfcube_defconfig
arm                           h5000_defconfig
mips                      pistachio_defconfig
arm                          lpd270_defconfig
sh                          rsk7269_defconfig
powerpc                     rainier_defconfig
powerpc                      bamboo_defconfig
sh                   sh7770_generic_defconfig
xtensa                    xip_kc705_defconfig
sh                           se7751_defconfig
mips                       capcella_defconfig
arm                      footbridge_defconfig
mips                             allmodconfig
powerpc                 mpc8315_rdb_defconfig
sh                        sh7763rdp_defconfig
powerpc                     tqm8555_defconfig
xtensa                  audio_kc705_defconfig
mips                      maltaaprp_defconfig
riscv                            allyesconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                 mpc8313_rdb_defconfig
arm                   milbeaut_m10v_defconfig
arm                           tegra_defconfig
sh                               alldefconfig
mips                     loongson1c_defconfig
h8300                               defconfig
arm                        neponset_defconfig
mips                 decstation_r4k_defconfig
m68k                        stmark2_defconfig
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
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210622
i386                 randconfig-a002-20210622
i386                 randconfig-a003-20210622
i386                 randconfig-a006-20210622
i386                 randconfig-a005-20210622
i386                 randconfig-a004-20210622
i386                 randconfig-a002-20210625
i386                 randconfig-a001-20210625
i386                 randconfig-a003-20210625
i386                 randconfig-a006-20210625
i386                 randconfig-a005-20210625
i386                 randconfig-a004-20210625
x86_64               randconfig-a012-20210622
x86_64               randconfig-a016-20210622
x86_64               randconfig-a015-20210622
x86_64               randconfig-a014-20210622
x86_64               randconfig-a013-20210622
x86_64               randconfig-a011-20210622
i386                 randconfig-a011-20210622
i386                 randconfig-a014-20210622
i386                 randconfig-a013-20210622
i386                 randconfig-a015-20210622
i386                 randconfig-a012-20210622
i386                 randconfig-a016-20210622
x86_64               randconfig-a002-20210625
x86_64               randconfig-a001-20210625
x86_64               randconfig-a005-20210625
x86_64               randconfig-a003-20210625
x86_64               randconfig-a004-20210625
x86_64               randconfig-a006-20210625
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210622
x86_64               randconfig-b001-20210625
x86_64               randconfig-a002-20210622
x86_64               randconfig-a001-20210622
x86_64               randconfig-a005-20210622
x86_64               randconfig-a003-20210622
x86_64               randconfig-a004-20210622
x86_64               randconfig-a006-20210622

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
