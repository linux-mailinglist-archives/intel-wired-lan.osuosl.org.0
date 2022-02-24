Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE2D4C2BDC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Feb 2022 13:38:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 641B680BE8;
	Thu, 24 Feb 2022 12:38:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 09-xtPYY29tr; Thu, 24 Feb 2022 12:38:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 417E482A29;
	Thu, 24 Feb 2022 12:38:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 17F4B1BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 12:38:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1002561035
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 12:38:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Y6oasSviZNP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Feb 2022 12:38:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 14EA96102E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 12:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645706304; x=1677242304;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=uOL6ghg0mxirRByLYaPk0j/Us+9WGtsBAe7rrgbjVV8=;
 b=jGVfaMdpomjezjdMQwEXuCjLNPPQdskMNFPJygeiGWc+M19rw7tMqjzg
 6ro+YJxGh5Bjatr66c43Lsd69AxIQhYqrIR5dKEAg/eD1V4BC6PhKDyRp
 2RmCUjLm3bn2q175bYWNFvOBK2nGiHAF+s/+wFMQ8X3YBXJG3RIpyfbSh
 7xawseZoq9kw8L0a3R4hBBUSyk/0E7jm9Ed/7Bc6wguYFYZ0X8hARlQNp
 axYiGplmX/fnOuvBoZdsdI4QaHwEabuZmIynxPcxBXksOw/Ps6UubsEfG
 eisiKlJWxrEQZO2NhJva4pfsTgp6E7JCqkrOkyHMVT46DqLVH+nWrHCtQ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="239619956"
X-IronPort-AV: E=Sophos;i="5.90,133,1643702400"; d="scan'208";a="239619956"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 04:38:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,133,1643702400"; d="scan'208";a="543691402"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 24 Feb 2022 04:38:22 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nNDO1-000350-CW; Thu, 24 Feb 2022 12:38:21 +0000
Date: Thu, 24 Feb 2022 20:37:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62177c18.QcA7HuJGSNq1myKc%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 859ca48e6262e340023ac5cdbe1e6c8763243bc1
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
branch HEAD: 859ca48e6262e340023ac5cdbe1e6c8763243bc1  ice: remove PF pointer from ice_check_vf_init

elapsed time: 724m

configs tested: 131
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
mips                 randconfig-c004-20220223
sh                             sh03_defconfig
sh                          sdk7780_defconfig
arm                            pleb_defconfig
powerpc                      bamboo_defconfig
sh                             espt_defconfig
arc                              alldefconfig
sh                          rsk7201_defconfig
sh                          r7780mp_defconfig
sh                           se7724_defconfig
mips                           xway_defconfig
arm                            hisi_defconfig
sh                        sh7757lcr_defconfig
sh                          rsk7269_defconfig
mips                           jazz_defconfig
sh                        sh7763rdp_defconfig
sh                            migor_defconfig
powerpc                      makalu_defconfig
arm                       aspeed_g5_defconfig
powerpc                     tqm8555_defconfig
powerpc                     redwood_defconfig
powerpc                      pasemi_defconfig
sh                     magicpanelr2_defconfig
powerpc                      ep88xc_defconfig
ia64                             alldefconfig
arm                           viper_defconfig
sh                        sh7785lcr_defconfig
nios2                               defconfig
csky                                defconfig
arm                           tegra_defconfig
arm                  randconfig-c002-20220224
arm                  randconfig-c002-20220223
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                             allnoconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                               defconfig
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
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
s390                 randconfig-r044-20220224
arc                  randconfig-r043-20220224
riscv                randconfig-r042-20220224
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
powerpc              randconfig-c003-20220224
powerpc              randconfig-c003-20220223
x86_64                        randconfig-c007
arm                  randconfig-c002-20220224
arm                  randconfig-c002-20220223
mips                 randconfig-c004-20220224
mips                 randconfig-c004-20220223
i386                          randconfig-c001
riscv                randconfig-c006-20220223
riscv                randconfig-c006-20220224
powerpc                      walnut_defconfig
arm                           omap1_defconfig
powerpc                        icon_defconfig
powerpc                      obs600_defconfig
powerpc                     ppa8548_defconfig
arm                          imote2_defconfig
arm                         bcm2835_defconfig
arm                           spitz_defconfig
powerpc                      ppc44x_defconfig
powerpc                      katmai_defconfig
powerpc                     mpc5200_defconfig
powerpc                 mpc8313_rdb_defconfig
arm                        neponset_defconfig
arm                          moxart_defconfig
mips                        maltaup_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220223
hexagon              randconfig-r041-20220223
riscv                randconfig-r042-20220223

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
