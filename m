Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4364DD078
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Mar 2022 23:01:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7028A403E0;
	Thu, 17 Mar 2022 22:01:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G9SmPWOxAvS9; Thu, 17 Mar 2022 22:01:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 309744048A;
	Thu, 17 Mar 2022 22:01:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F3331BF315
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 22:01:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5768C60E32
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 22:01:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Za1SoTw9vX9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Mar 2022 22:01:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 91F1660BA0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 22:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647554470; x=1679090470;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=xXc5EeKq8Xa2fBeQpyaiFZNPY51Y7KlvVOcTRWF1rgk=;
 b=a0v0cG8xE+VPPCHqh1c2tSOJLbrbF2Gdo0PUPrd8o+TZem/9sEhq/el6
 wn/ZSRA6MR/2eSszA0G0C8QoP7zCskFriVl+gHrYAo9xRKgx69+Erar9+
 UnQboPpeLb03AHBKAHqfkUqCoVDRzsrBuWU0/6zU8DRe7tez2nFDhl6XU
 vIbEfyqTBgYKq0x8Dlea4s+P3bA+jx6LNprOEz476OtRclAnzU4uI1yU4
 uw5CjnvppY4GbaFRCV0UxMLz/OujIgA45eLkIVO8oCxg97hmmagS92xVz
 3CCVNrHJAJ5N+X1zAlGvc2TI5Y2vBNSc8b3UxkKTIh6eLuLOFzxLYmOH6 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="257179468"
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="257179468"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 15:01:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="715207781"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 17 Mar 2022 15:01:08 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nUyB9-000E8z-Pi; Thu, 17 Mar 2022 22:01:07 +0000
Date: Fri, 18 Mar 2022 06:01:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6233afa0.M8GGTkKbDEY0koTH%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 4c1202189e351bc99856805ee9c82ffca6594ba0
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
branch HEAD: 4c1202189e351bc99856805ee9c82ffca6594ba0  ice: add trace events for tx timestamps

elapsed time: 827m

configs tested: 117
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
i386                          randconfig-c001
sh                           se7724_defconfig
sh                            titan_defconfig
mips                 decstation_r4k_defconfig
sh                               alldefconfig
powerpc                     tqm8548_defconfig
xtensa                              defconfig
arm                            zeus_defconfig
powerpc                      pasemi_defconfig
arm                        shmobile_defconfig
sh                           se7751_defconfig
sparc                            alldefconfig
riscv                               defconfig
mips                  decstation_64_defconfig
mips                      loongson3_defconfig
mips                      maltasmvp_defconfig
sh                             espt_defconfig
powerpc                      bamboo_defconfig
ia64                             alldefconfig
mips                          rb532_defconfig
arm64                            alldefconfig
h8300                       h8s-sim_defconfig
powerpc64                           defconfig
mips                           jazz_defconfig
x86_64                              defconfig
mips                           ip32_defconfig
arm                            xcep_defconfig
sh                        edosk7705_defconfig
arm                  randconfig-c002-20220317
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
parisc64                            defconfig
s390                             allmodconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
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
x86_64                        randconfig-a006
x86_64                        randconfig-a002
x86_64                        randconfig-a004
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
riscv                randconfig-r042-20220317
arc                  randconfig-r043-20220317
s390                 randconfig-r044-20220317
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
mips                       lemote2f_defconfig
powerpc                      ppc64e_defconfig
arm                          pcm027_defconfig
arm                       versatile_defconfig
arm                         orion5x_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r041-20220317
hexagon              randconfig-r045-20220317

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
