Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3F94D131A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Mar 2022 10:13:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52FF180BDD;
	Tue,  8 Mar 2022 09:13:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id saSSgTAORoBD; Tue,  8 Mar 2022 09:13:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18ACB80024;
	Tue,  8 Mar 2022 09:13:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F36901BF30D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 09:13:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F0020401E3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 09:13:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IS2ASe7svgOo for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Mar 2022 09:13:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D58534018C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 09:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646730802; x=1678266802;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=DsHyoEUFLeUhwF49RN4YOoL8BpH+wTrWvzq/BgDQCFQ=;
 b=MMpo3rIxBnrcSKOhGF+ErEQtXGm9FL61ld/+lmYvVrDXc4joyrfb4RRt
 YKizGwHMCfxny+JThUnagFUf5xexsDW816oO4thAgVwNmfP1/mhm1sz5l
 y4HrJnmouacCXemQNOJdTLDRQTGU9f9IcnObPfziYJTJKtMCABtbJMOqd
 yCGQLo0UvkyqvWTXMD0Teg5G8d+J2CbYl8Cf+2Gc1AoMp/FRryZN270Q6
 fEK2VvQZyBym9u8S4Q6zGE2lwpxw2fC/gYRjci/NO4UVbaP0mxfX7bv5J
 00aR6SgQu0vScpgu78GKaXVzfPdBNQE7REqbK5JuKO1b8vHvglhGH8rO9 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="254364575"
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="254364575"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 01:13:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="547203598"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 08 Mar 2022 01:13:17 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nRVu9-0001C1-99; Tue, 08 Mar 2022 09:13:17 +0000
Date: Tue, 08 Mar 2022 17:12:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62271dff.kwxamtgzwPD8HAMr%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 0baa704ac200daa6dc02a86617e09440bf837910
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
branch HEAD: 0baa704ac200daa6dc02a86617e09440bf837910  igc: Fix infinite loop in release_swfw_sync

elapsed time: 732m

configs tested: 175
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
i386                 randconfig-c001-20220307
alpha                            alldefconfig
arm                      footbridge_defconfig
m68k                           sun3_defconfig
sh                           se7722_defconfig
sh                          urquell_defconfig
powerpc                      ep88xc_defconfig
arm                         nhk8815_defconfig
powerpc                     asp8347_defconfig
arm                        realview_defconfig
sh                           se7780_defconfig
nios2                               defconfig
m68k                          sun3x_defconfig
arm                         assabet_defconfig
mips                       bmips_be_defconfig
m68k                        m5307c3_defconfig
mips                     loongson1b_defconfig
powerpc64                           defconfig
xtensa                  cadence_csp_defconfig
arm                          pxa3xx_defconfig
arm                           sama5_defconfig
arc                            hsdk_defconfig
x86_64                           alldefconfig
mips                     decstation_defconfig
ia64                          tiger_defconfig
x86_64                              defconfig
sparc                       sparc32_defconfig
arm                             rpc_defconfig
arc                           tb10x_defconfig
parisc64                         alldefconfig
sh                           se7750_defconfig
sh                             sh03_defconfig
sh                          r7785rp_defconfig
nios2                         3c120_defconfig
powerpc                     ep8248e_defconfig
powerpc                        warp_defconfig
arm                      jornada720_defconfig
arm                            zeus_defconfig
sh                          landisk_defconfig
powerpc                   currituck_defconfig
powerpc                      ppc40x_defconfig
xtensa                           alldefconfig
microblaze                          defconfig
sh                           se7712_defconfig
alpha                               defconfig
microblaze                      mmu_defconfig
sh                         ecovec24_defconfig
sh                          rsk7201_defconfig
arm                        shmobile_defconfig
mips                         tb0226_defconfig
mips                  decstation_64_defconfig
arm                         s3c6400_defconfig
sh                            titan_defconfig
arm                            xcep_defconfig
xtensa                          iss_defconfig
powerpc                 mpc834x_itx_defconfig
m68k                       m5249evb_defconfig
arm                            hisi_defconfig
riscv                               defconfig
um                           x86_64_defconfig
arc                          axs101_defconfig
sh                           se7751_defconfig
sparc                            allyesconfig
mips                      maltasmvp_defconfig
powerpc                  iss476-smp_defconfig
arm                  randconfig-c002-20220308
arm                  randconfig-c002-20220307
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
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
i386                 randconfig-a005-20220307
i386                 randconfig-a004-20220307
i386                 randconfig-a003-20220307
i386                 randconfig-a006-20220307
i386                 randconfig-a002-20220307
i386                 randconfig-a001-20220307
x86_64               randconfig-a006-20220307
x86_64               randconfig-a004-20220307
x86_64               randconfig-a005-20220307
x86_64               randconfig-a001-20220307
x86_64               randconfig-a003-20220307
x86_64               randconfig-a002-20220307
arc                  randconfig-r043-20220308
riscv                randconfig-r042-20220308
s390                 randconfig-r044-20220308
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                                  kexec

clang tested configs:
x86_64                        randconfig-c007
riscv                randconfig-c006-20220308
powerpc              randconfig-c003-20220308
i386                          randconfig-c001
arm                  randconfig-c002-20220308
mips                 randconfig-c004-20220308
x86_64               randconfig-c007-20220307
i386                 randconfig-c001-20220307
powerpc              randconfig-c003-20220307
riscv                randconfig-c006-20220307
mips                 randconfig-c004-20220307
arm                  randconfig-c002-20220307
s390                 randconfig-c005-20220307
powerpc                      walnut_defconfig
mips                        qi_lb60_defconfig
powerpc                     skiroot_defconfig
mips                     loongson2k_defconfig
arm                         bcm2835_defconfig
powerpc                      ppc44x_defconfig
arm                         socfpga_defconfig
arm                        vexpress_defconfig
hexagon                             defconfig
mips                           ip22_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                 randconfig-a012-20220307
i386                 randconfig-a013-20220307
i386                 randconfig-a015-20220307
i386                 randconfig-a011-20220307
i386                 randconfig-a014-20220307
i386                 randconfig-a016-20220307
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220307
hexagon              randconfig-r045-20220308
hexagon              randconfig-r041-20220308
riscv                randconfig-r042-20220307
hexagon              randconfig-r041-20220307

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
