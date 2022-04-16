Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B47503665
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Apr 2022 13:40:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E5F983FB9;
	Sat, 16 Apr 2022 11:40:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XftkdUeCl1hU; Sat, 16 Apr 2022 11:40:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 273BF83F66;
	Sat, 16 Apr 2022 11:40:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0BC8F1BF59F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 11:40:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ED6D840438
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 11:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id urhpXS-8_syH for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Apr 2022 11:40:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F1598410CF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 11:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650109203; x=1681645203;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=d0uRH3zFGIeL9FIRJ3OsPMDgaiRFvql1r2ld3MVb8oA=;
 b=e73Ooi5hBJFfg2SQJ1cX10koci0ELk6M3ay0WtkFMsYkxuBjKzgF//OG
 jbKRBG1cMfv9L/zflUmUCiJ7y8ZuXJgtak0YONf8DD0tBmkC5qGpyubi8
 ARGEUg5GBTQNCMTzB3BJsRehA4raryuTr+dmfhpHflyD0U9C+eseDsHnW
 W1KIT7DvjgoqZ2WvFliamm1P5tgv9bbkykXsx/BZ1dmqVpjff15HpqdcG
 2hTCxT5g6f42iMjrXmli4icOu4Wr2dg3n9NCLTxqi/93g9i/NfbmR1NYM
 tmK6N1r2fnsHyTgReD8BuoZfyaqD+wmirsE3wodKT7a5oNRe7CmAbBOc2 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="262747342"
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="262747342"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2022 04:40:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="509227548"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 16 Apr 2022 04:40:02 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nfgmX-00035T-FW;
 Sat, 16 Apr 2022 11:40:01 +0000
Date: Sat, 16 Apr 2022 19:39:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <625aaaff.jtEW8JwTLwXcnaWe%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 7b05c54226015807993a7d1bab0ba59d00e592ad
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: 7b05c54226015807993a7d1bab0ba59d00e592ad  Merge branch 'net-ethool-add-support-to-get-set-tx-push-by-ethtool-g-g'

elapsed time: 865m

configs tested: 99
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
arm                       imx_v6_v7_defconfig
sh                               j2_defconfig
m68k                             allyesconfig
sh                          r7780mp_defconfig
sh                        edosk7760_defconfig
arm                       aspeed_g5_defconfig
openrisc                            defconfig
powerpc64                        alldefconfig
arm                     eseries_pxa_defconfig
sh                   sh7724_generic_defconfig
powerpc                 mpc85xx_cds_defconfig
sh                           se7722_defconfig
um                                  defconfig
arc                     haps_hs_smp_defconfig
x86_64                              defconfig
powerpc                     tqm8555_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220415
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220414
arm                  randconfig-c002-20220414
i386                          randconfig-c001
mips                         tb0287_defconfig
i386                             allyesconfig
powerpc                        icon_defconfig
arm                        neponset_defconfig
arm                       aspeed_g4_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
riscv                randconfig-r042-20220414
hexagon              randconfig-r041-20220414
hexagon              randconfig-r045-20220414

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
