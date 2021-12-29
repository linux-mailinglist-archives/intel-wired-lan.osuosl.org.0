Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A785481062
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Dec 2021 07:31:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFA8D605DB;
	Wed, 29 Dec 2021 06:31:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xf4H3pA1cHJM; Wed, 29 Dec 2021 06:31:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F3C160AE3;
	Wed, 29 Dec 2021 06:31:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 81CF31BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 06:30:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 713B381418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 06:30:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0a1aQNeE20G6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Dec 2021 06:30:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A40F28141F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 06:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640759450; x=1672295450;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=hjvFk7+XcBF83wKxCPz4WuOadPNRjR9fftdxdJ/J130=;
 b=cEB4WHZKYftkpWrHDZ5QVpDh7tV1RKMcpqES/Tnxl0uAawloaCHSJN/A
 JzjhuxUdOfegQQiSZLc/B26HdEwUgooifj7VPCutf9q4H3FGjLkZARLPZ
 jYKFJtcf/KAPwWgwU8UqGlU0DYlEaQs52e69vZ3oQN8zxrh5q7Tk9mcQw
 bXrb9IIAh26THhIOoNddvz8eqLTN35Sgjimh107g6XIPntAUT78PXRIEq
 g1u81cFgl1VSVNaKGRTIM1kXPaNklNaNs3wt5aSL2UC+wPpd7/7YM46+W
 EGtxY6g6FUFLE2whx4IAv3WEDM4Mp3Qd25lCei/1xSXIDC4PeRqBBkPu0 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10211"; a="241685175"
X-IronPort-AV: E=Sophos;i="5.88,244,1635231600"; d="scan'208";a="241685175"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2021 22:30:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,244,1635231600"; d="scan'208";a="524736548"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 28 Dec 2021 22:30:48 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n2SU3-0008cL-SU; Wed, 29 Dec 2021 06:30:47 +0000
Date: Wed, 29 Dec 2021 14:30:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61cc008b.TwKS7tNWqvorIWeX%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 f2835db66281a070b3756a15ff78b7ebf817a50d
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
branch HEAD: f2835db66281a070b3756a15ff78b7ebf817a50d  i40e: Add a stat for tracking busy rx pages

elapsed time: 722m

configs tested: 136
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm64                               defconfig
i386                 randconfig-c001-20211228
arm                             mxs_defconfig
arm                          simpad_defconfig
mips                        workpad_defconfig
powerpc               mpc834x_itxgp_defconfig
mips                           ip32_defconfig
powerpc                     mpc5200_defconfig
mips                     decstation_defconfig
parisc                generic-32bit_defconfig
h8300                    h8300h-sim_defconfig
arm                         nhk8815_defconfig
parisc                generic-64bit_defconfig
arm                       versatile_defconfig
powerpc                     tqm8541_defconfig
powerpc                       holly_defconfig
riscv             nommu_k210_sdcard_defconfig
arm                              alldefconfig
mips                  cavium_octeon_defconfig
h8300                     edosk2674_defconfig
powerpc                    ge_imp3a_defconfig
arm                             rpc_defconfig
ia64                            zx1_defconfig
powerpc                 mpc836x_mds_defconfig
mips                         bigsur_defconfig
mips                          rm200_defconfig
riscv                            allyesconfig
powerpc                         wii_defconfig
i386                                defconfig
mips                         cobalt_defconfig
openrisc                            defconfig
sh                         ecovec24_defconfig
sh                        edosk7705_defconfig
powerpc                  mpc885_ads_defconfig
arm                           sama5_defconfig
arm                          pxa910_defconfig
h8300                       h8s-sim_defconfig
openrisc                         alldefconfig
m68k                          atari_defconfig
m68k                          sun3x_defconfig
arm                             ezx_defconfig
powerpc                     tqm5200_defconfig
powerpc                     sequoia_defconfig
arm                            hisi_defconfig
riscv                            allmodconfig
arm                     davinci_all_defconfig
mips                     loongson2k_defconfig
powerpc                    amigaone_defconfig
powerpc                          g5_defconfig
m68k                        m5272c3_defconfig
arm                  randconfig-c002-20211228
arm                  randconfig-c002-20211229
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
sh                               allmodconfig
arc                                 defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
parisc                              defconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20211228
i386                 randconfig-a004-20211228
i386                 randconfig-a002-20211228
i386                 randconfig-a003-20211228
i386                 randconfig-a001-20211228
i386                 randconfig-a005-20211228
x86_64               randconfig-a001-20211228
x86_64               randconfig-a003-20211228
x86_64               randconfig-a006-20211228
x86_64               randconfig-a005-20211228
x86_64               randconfig-a004-20211228
x86_64               randconfig-a002-20211228
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
i386                 randconfig-a006-20211229
i386                 randconfig-a004-20211229
i386                 randconfig-a002-20211229
i386                 randconfig-a003-20211229
i386                 randconfig-a001-20211229
i386                 randconfig-a005-20211229
x86_64               randconfig-a015-20211228
x86_64               randconfig-a013-20211228
x86_64               randconfig-a012-20211228
x86_64               randconfig-a011-20211228
x86_64               randconfig-a016-20211228
x86_64               randconfig-a014-20211228
i386                 randconfig-a012-20211228
i386                 randconfig-a013-20211228
i386                 randconfig-a015-20211228
i386                 randconfig-a011-20211228
i386                 randconfig-a014-20211228
i386                 randconfig-a016-20211228
hexagon              randconfig-r041-20211228
riscv                randconfig-r042-20211228
s390                 randconfig-r044-20211228
hexagon              randconfig-r045-20211228

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
