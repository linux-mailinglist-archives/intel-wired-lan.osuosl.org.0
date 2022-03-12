Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC714D6B7D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Mar 2022 01:40:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4B5382718;
	Sat, 12 Mar 2022 00:40:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nG67q294OuDB; Sat, 12 Mar 2022 00:40:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 836168239A;
	Sat, 12 Mar 2022 00:40:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6EC531BF376
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Mar 2022 00:40:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5BFDE8239A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Mar 2022 00:40:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V8Dd17rUqWw2 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Mar 2022 00:40:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4711281D65
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Mar 2022 00:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647045619; x=1678581619;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=dyTfhufzFE8RI53byrvMJetk2VHcLGX1pDAJAovKCX4=;
 b=hXPIZByP7FmO+XiqKokUUbYQvll1K4DkVeE1Wdl5eGeKyR33pQEHuqE6
 zviUvcvYbzu93QzTeXGdmDghE1G4hp/1vuR5K9ZSxXcpVZUxhCi55nLz7
 ee97QX1rvRZAuLFnK/aRTSJB7WfgIhx7vOzPQZd6mehzdNklitKlzqMWQ
 /tm2c/cdBcinuMLO9db+bOq4rd3r93Y+gPktSIG13Dz8LDVNtshAuRgUc
 X0JIjChdYUeoEEFnsYD8q8GFGk0YMTavxpnr8Ng7aJbZgevVz4z0hov1z
 vxUBW3zX0sfGh+nBk6yaFSEtWnYOh2FV9elhnQpssZ4HC+pUwZPCOLuis A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="236282522"
X-IronPort-AV: E=Sophos;i="5.90,175,1643702400"; d="scan'208";a="236282522"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 16:40:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,175,1643702400"; d="scan'208";a="539197876"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 11 Mar 2022 16:39:59 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nSpnb-0007Kb-1X; Sat, 12 Mar 2022 00:39:59 +0000
Date: Sat, 12 Mar 2022 08:39:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <622bebbf.MGeFv8zksekWqP02%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 ea40ac664b270eac2577411f7906e67b448423c6
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: ea40ac664b270eac2577411f7906e67b448423c6  ice: Support GTP-U and GTP-C offload in switchdev

elapsed time: 1288m

configs tested: 117
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm                              allyesconfig
arm64                            allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
powerpc                     tqm8548_defconfig
arm                         cm_x300_defconfig
sh                   sh7770_generic_defconfig
arm                     eseries_pxa_defconfig
ia64                         bigsur_defconfig
sh                          r7785rp_defconfig
arm                        realview_defconfig
nds32                             allnoconfig
sh                   sh7724_generic_defconfig
m68k                          amiga_defconfig
sh                            migor_defconfig
m68k                        mvme16x_defconfig
arc                           tb10x_defconfig
arm                           viper_defconfig
h8300                       h8s-sim_defconfig
powerpc                      bamboo_defconfig
arm                         vf610m4_defconfig
mips                         db1xxx_defconfig
powerpc                      ep88xc_defconfig
sh                            hp6xx_defconfig
arm                  randconfig-c002-20220310
arm                  randconfig-c002-20220312
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                             allyesconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
i386                                defconfig
sparc                               defconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
arc                  randconfig-r043-20220310
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit

clang tested configs:
arm                  randconfig-c002-20220310
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220310
riscv                randconfig-c006-20220310
mips                 randconfig-c004-20220310
i386                          randconfig-c001
arm                           sama7_defconfig
powerpc                      acadia_defconfig
arm                       spear13xx_defconfig
mips                     loongson2k_defconfig
arm                    vt8500_v6_v7_defconfig
hexagon                          alldefconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r045-20220310
hexagon              randconfig-r041-20220310
riscv                randconfig-r042-20220310
s390                 randconfig-r044-20220310

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
