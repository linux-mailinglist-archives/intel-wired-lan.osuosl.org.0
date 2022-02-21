Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 235BD4BD2F3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Feb 2022 02:00:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 83D86404CD;
	Mon, 21 Feb 2022 01:00:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hXGli1pzmVdU; Mon, 21 Feb 2022 01:00:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2E573404C9;
	Mon, 21 Feb 2022 01:00:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 88AF21BF355
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 01:00:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6F1F6813AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 01:00:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VQeejche64v7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Feb 2022 01:00:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7901C813A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 01:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645405203; x=1676941203;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=I2iSuEBief+T4hrLM9oYiNTgIQ+m7HbxLHT0klkPA40=;
 b=Namzb91HNV6ah11KX6KyEda9JJWT7aTV5FWHRwQVWYruz0uixnZBywS+
 jb9p1Tmy75m/Mqo3BMKu5rwE/Sd1FqsDV0Qs3lILtjuLMitdBAgFm4nIR
 frrnDnAAgQhmAO17ZOWs8KnMlc0AV+ANcr5MImMLDlugHx02oyZbG15nH
 uoLsrT8V0JQdpIY4nyAp9/6gHELFA43drDSktVlBPGSOh7xoJE/u80Hw9
 pY1y9wsRT8iLVk2MXYAnJ2Etbe31U36ljTSSnxRFdkZOMhyATOFNZy4UY
 hQL9HKTUy/o3OigBSWvax1Xp9Arwmj1ed1H5BFrJiltp1vw3SEDo9LtHe Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="314678385"
X-IronPort-AV: E=Sophos;i="5.88,384,1635231600"; d="scan'208";a="314678385"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2022 17:00:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,384,1635231600"; d="scan'208";a="706067406"
Received: from lkp-server01.sh.intel.com (HELO da3212ac2f54) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 20 Feb 2022 17:00:01 -0800
Received: from kbuild by da3212ac2f54 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nLx3Y-000179-C8; Mon, 21 Feb 2022 01:00:00 +0000
Date: Mon, 21 Feb 2022 08:59:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6212e3e9.mBPVEyR5gmb08kfl%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 23d06e78396bc3b206b5937e9b417f7f4e48177d
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
branch HEAD: 23d06e78396bc3b206b5937e9b417f7f4e48177d  ice: Add inline flow director support for channels

elapsed time: 948m

configs tested: 109
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                               defconfig
arm64                            allyesconfig
i386                          randconfig-c001
mips                 randconfig-c004-20220220
arm                           u8500_defconfig
m68k                        stmark2_defconfig
mips                     decstation_defconfig
powerpc                    klondike_defconfig
alpha                               defconfig
m68k                        m5272c3_defconfig
xtensa                              defconfig
powerpc                      pcm030_defconfig
mips                       bmips_be_defconfig
h8300                            alldefconfig
powerpc                   motionpro_defconfig
sh                             espt_defconfig
powerpc                     tqm8555_defconfig
powerpc                    sam440ep_defconfig
sh                           se7343_defconfig
sh                   rts7751r2dplus_defconfig
arm                         lubbock_defconfig
sh                         ecovec24_defconfig
nios2                         10m50_defconfig
sh                           se7751_defconfig
um                           x86_64_defconfig
s390                                defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
csky                                defconfig
nds32                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                                 defconfig
h8300                            allyesconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                             allyesconfig
sparc                               defconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a001
x86_64                        randconfig-a011
x86_64                        randconfig-a015
x86_64                        randconfig-a013
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
arc                  randconfig-r043-20220220
riscv                randconfig-r042-20220220
s390                 randconfig-r044-20220220
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
x86_64                                  kexec
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func

clang tested configs:
arm                            dove_defconfig
powerpc                          allyesconfig
arm                         lpc32xx_defconfig
powerpc                    gamecube_defconfig
arm                             mxs_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
hexagon              randconfig-r045-20220220
hexagon              randconfig-r041-20220220

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
