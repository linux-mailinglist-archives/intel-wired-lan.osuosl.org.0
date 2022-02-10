Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9784B116C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Feb 2022 16:13:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1D4E82909;
	Thu, 10 Feb 2022 15:13:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gICjL2tIEmbF; Thu, 10 Feb 2022 15:13:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6E8782883;
	Thu, 10 Feb 2022 15:13:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9488A1BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 15:13:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 829D782883
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 15:13:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WKlyZ6-t9GUt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Feb 2022 15:13:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 93DDB8126E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 15:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644506029; x=1676042029;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=0thPToT/eIPg8aqysMGDrtl7NVgP83MyKbNBgWKoRsw=;
 b=l4VLIpSnwIhvZgzBG5I4JyDzoqg6//Ea88mbwIsAXkwRX0+QsLZQtqQm
 1hILOckT2vfcaMkCJIv42s6UhRVqSIcujiDm3RqwwfZS7Tq+U/qszoVqv
 hcB0UJY7gA+WzjypT+DlC4yj8qSL54xUAOTt3ciEI0l9ZssLsgDLFbUZe
 /To71pHtueOPDmHGqSxXQI8wZntMoF90stlRYQgu1SfF1WH4RADH6l0Xq
 3Y1iOIu5WJkPgM58H7BQ17kkP0iVFe0X3sDEvft1ODowhA0bGpxhRTQUW
 0Z5W8JU4bEICjEWsyhYfMkU5027XNHrCZ69/1Sr0GQmTGyH+VWfmvVLir w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="248342581"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="248342581"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:12:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="679175787"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 10 Feb 2022 07:12:55 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nIB7u-0003OT-H2; Thu, 10 Feb 2022 15:12:54 +0000
Date: Thu, 10 Feb 2022 23:12:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62052b71.r3kVgZi3UKFDikJi%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 f1da5a0866bcbe14164f4b1d399a25feec56fe49
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: f1da5a0866bcbe14164f4b1d399a25feec56fe49  ice: Add ability for PF admin to enable VF VLAN pruning

elapsed time: 724m

configs tested: 116
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc              randconfig-c003-20220210
i386                          randconfig-c001
powerpc                 mpc8540_ads_defconfig
arm                         lubbock_defconfig
mips                         cobalt_defconfig
riscv                    nommu_k210_defconfig
arm                            mps2_defconfig
arm                      jornada720_defconfig
powerpc                     redwood_defconfig
arm                           sunxi_defconfig
s390                          debug_defconfig
sh                          sdk7780_defconfig
sh                        edosk7760_defconfig
arm                        mvebu_v7_defconfig
arm                         vf610m4_defconfig
sh                           se7206_defconfig
m68k                             alldefconfig
arm                       aspeed_g5_defconfig
arc                        nsim_700_defconfig
powerpc                      chrp32_defconfig
m68k                       m5475evb_defconfig
sh                             sh03_defconfig
sh                              ul2_defconfig
m68k                          amiga_defconfig
arm                  randconfig-c002-20220210
arm                  randconfig-c002-20220209
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
s390                 randconfig-r044-20220209
arc                  randconfig-r043-20220209
riscv                randconfig-r042-20220210
riscv                randconfig-r042-20220209
arc                  randconfig-r043-20220210
s390                 randconfig-r044-20220210
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func

clang tested configs:
riscv                randconfig-c006-20220209
riscv                randconfig-c006-20220210
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220209
powerpc              randconfig-c003-20220210
arm                  randconfig-c002-20220210
i386                          randconfig-c001
mips                 randconfig-c004-20220209
mips                 randconfig-c004-20220210
arm                  randconfig-c002-20220209
mips                           ip27_defconfig
powerpc                     ksi8560_defconfig
arm                        neponset_defconfig
arm                          pcm027_defconfig
powerpc                   bluestone_defconfig
arm                       versatile_defconfig
powerpc                   microwatt_defconfig
riscv                             allnoconfig
powerpc                     mpc512x_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r045-20220210
hexagon              randconfig-r045-20220208
hexagon              randconfig-r041-20220210
hexagon              randconfig-r041-20220208
riscv                randconfig-r042-20220208

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
