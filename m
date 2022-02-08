Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF414AD865
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Feb 2022 13:38:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1C4CB40590;
	Tue,  8 Feb 2022 12:38:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VbtrMJZ-MHQE; Tue,  8 Feb 2022 12:38:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A106404F5;
	Tue,  8 Feb 2022 12:38:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C82891BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Feb 2022 12:38:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B5FA280B6E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Feb 2022 12:38:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4DWjxlIsqJeL for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Feb 2022 12:38:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B6B4080ADB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Feb 2022 12:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644323908; x=1675859908;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=1JSv/ssxjcMOIzrRxkVzaSF4wXXEtQd6hO3YDSQW6TM=;
 b=Lc8ZVgFhROTWa88kaVvwT/q466VmRbq0dx+SQ8roQ4sp0RKECKl0LwtH
 WXFztgVZZVHAxtkdJ3w/7397VxY6Nf9uFW5ECCu1lzvRSmO+FrFv3ZX0J
 /B8MkGxqlvmo3cHOxZvpPZVlIcd4KlncgyU2SgLhVFE4mhwgussU7O/mW
 0yxCGhB7Yo/JrzDc7O3RF/Bww8gqFCUxWrRsNN9UcjY5K0v05te8ebREO
 FAAiybbzO8vuH51xjWvUMzccenLqVgJi/dPK7xyrQbT8VDs5g6G+QGhtY
 J7q5NFBKZQUXzBlnn4CdiXgkcEZEBB5SNawe/H9LaMBM+P/6M/OcTma3G g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="309682599"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="309682599"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 04:38:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="525531869"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 08 Feb 2022 04:38:27 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nHPlK-0000BF-Aw; Tue, 08 Feb 2022 12:38:26 +0000
Date: Tue, 08 Feb 2022 20:38:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62026432.y8V71Jihy92cs9ZR%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 e62ad74aa534404b3ee7e250b114a3536ac56987
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: e62ad74aa534404b3ee7e250b114a3536ac56987  igb: refactor XDP registration

elapsed time: 722m

configs tested: 146
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
powerpc                    sam440ep_defconfig
m68k                       m5249evb_defconfig
mips                         mpc30x_defconfig
mips                         cobalt_defconfig
arm                             pxa_defconfig
arm                          iop32x_defconfig
arm                          exynos_defconfig
sparc                       sparc32_defconfig
powerpc                     pq2fads_defconfig
arc                     haps_hs_smp_defconfig
riscv             nommu_k210_sdcard_defconfig
mips                      loongson3_defconfig
sh                           se7619_defconfig
nds32                            alldefconfig
sparc64                             defconfig
arm                        cerfcube_defconfig
sh                            migor_defconfig
powerpc                    adder875_defconfig
m68k                         amcore_defconfig
mips                          rb532_defconfig
arm                        clps711x_defconfig
arm                        keystone_defconfig
sh                        edosk7760_defconfig
mips                     decstation_defconfig
sh                ecovec24-romimage_defconfig
powerpc                      ppc6xx_defconfig
i386                                defconfig
arm                             ezx_defconfig
mips                      maltasmvp_defconfig
m68k                        stmark2_defconfig
sh                          urquell_defconfig
arm                       omap2plus_defconfig
powerpc                     rainier_defconfig
powerpc                  iss476-smp_defconfig
h8300                       h8s-sim_defconfig
powerpc                      ep88xc_defconfig
riscv                            allyesconfig
arm                     eseries_pxa_defconfig
powerpc                 mpc8540_ads_defconfig
sh                           se7724_defconfig
s390                       zfcpdump_defconfig
powerpc                     ep8248e_defconfig
sh                            titan_defconfig
powerpc                     asp8347_defconfig
sh                        dreamcast_defconfig
arm                  randconfig-c002-20220207
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
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
h8300                            allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64               randconfig-a013-20220207
x86_64               randconfig-a016-20220207
x86_64               randconfig-a015-20220207
x86_64               randconfig-a012-20220207
x86_64               randconfig-a014-20220207
x86_64               randconfig-a011-20220207
i386                 randconfig-a012-20220207
i386                 randconfig-a013-20220207
i386                 randconfig-a015-20220207
i386                 randconfig-a014-20220207
i386                 randconfig-a011-20220207
i386                 randconfig-a016-20220207
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                   milbeaut_m10v_defconfig
mips                           ip27_defconfig
arm                  colibri_pxa270_defconfig
powerpc                      ppc44x_defconfig
powerpc                 mpc836x_mds_defconfig
mips                           mtx1_defconfig
arm                            dove_defconfig
arm                         hackkit_defconfig
arm                           sama7_defconfig
riscv                          rv32_defconfig
i386                 randconfig-a003-20220207
i386                 randconfig-a006-20220207
i386                 randconfig-a001-20220207
i386                 randconfig-a002-20220207
i386                 randconfig-a005-20220207
i386                 randconfig-a004-20220207
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220207
hexagon              randconfig-r041-20220207
hexagon              randconfig-r045-20220208
hexagon              randconfig-r041-20220208
riscv                randconfig-r042-20220208

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
