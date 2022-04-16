Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BA5503663
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Apr 2022 13:40:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D89F409F3;
	Sat, 16 Apr 2022 11:40:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vB5AhhNwRu2T; Sat, 16 Apr 2022 11:40:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D6BC40935;
	Sat, 16 Apr 2022 11:40:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E8A7F1BF59F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 11:40:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC810409B5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 11:40:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gd_22958H4u5 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Apr 2022 11:40:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF67C40002
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 11:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650109203; x=1681645203;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=skMBwX81O5OLkuM0af4oUEKxYdM35usPYH6Y3wTpQVk=;
 b=EZEMIQ5NvGfNow82oGVedjk2ymznz7+oR7G2mzE/dsihdxyx7lSiEsL8
 YNmWXt60x4fL/DkJLigkf61M0hDH24vliYW2FnVlQXbFOEIGwxPvfoTcD
 c56lVh5laYUIdKgDmV2TqNv9uWQQMlKahOOuc6dc/6ZE3nJJbQ/3xeHzx
 WTDK/8VyDZDpgG19zF0Kqfe5QC71f3hU0MSy74pFK+PDjBBSrTEUWgOXK
 wRNYAW6IDCG1BifKzbkeylFg0d6OUXIP0NtqlI8ho5mOgUaaUSgYks+UC
 LX7m6Vc2gpWsImSiuz2FiDIr6vyd/CqsmKYTvf8838BjCVDkTWeeRRFq5 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="243218096"
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="243218096"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2022 04:40:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="528255240"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 16 Apr 2022 04:40:02 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nfgmX-00035R-EY;
 Sat, 16 Apr 2022 11:40:01 +0000
Date: Sat, 16 Apr 2022 19:39:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <625aaafc.qP6WPEJRnUql2tEX%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 d08ed852560eb71445547f3df7b05bf5c5c69cc4
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: d08ed852560eb71445547f3df7b05bf5c5c69cc4  net: lan966x: Make sure to release ptp interrupt

elapsed time: 730m

configs tested: 110
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
powerpc                     taishan_defconfig
arc                           tb10x_defconfig
m68k                           sun3_defconfig
powerpc                       eiger_defconfig
powerpc                 linkstation_defconfig
m68k                          sun3x_defconfig
powerpc                        cell_defconfig
xtensa                    smp_lx200_defconfig
s390                          debug_defconfig
powerpc                 mpc834x_itx_defconfig
i386                             alldefconfig
powerpc                      ppc6xx_defconfig
powerpc                   motionpro_defconfig
powerpc                      cm5200_defconfig
arm                            mps2_defconfig
um                                  defconfig
arc                     haps_hs_smp_defconfig
x86_64                              defconfig
powerpc                     tqm8555_defconfig
arm                  randconfig-c002-20220414
x86_64                        randconfig-c001
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
arc                              allyesconfig
nios2                               defconfig
alpha                               defconfig
csky                                defconfig
nios2                            allyesconfig
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
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                        randconfig-a006
x86_64                        randconfig-a004
arc                  randconfig-r043-20220415
s390                 randconfig-r044-20220415
riscv                randconfig-r042-20220415
arc                  randconfig-r043-20220414
arc                  randconfig-r043-20220416
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
powerpc                      ppc64e_defconfig
mips                     cu1000-neo_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a015
hexagon              randconfig-r045-20220415
hexagon              randconfig-r041-20220415
hexagon              randconfig-r041-20220414
riscv                randconfig-r042-20220414
s390                 randconfig-r044-20220414
s390                 randconfig-r044-20220416
hexagon              randconfig-r041-20220416
hexagon              randconfig-r045-20220416
riscv                randconfig-r042-20220416
hexagon              randconfig-r045-20220414

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
