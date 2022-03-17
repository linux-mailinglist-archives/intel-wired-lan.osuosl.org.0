Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE174DCF40
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Mar 2022 21:24:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94D4960B61;
	Thu, 17 Mar 2022 20:24:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CN1pUaAqnUm7; Thu, 17 Mar 2022 20:24:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 926DD60B0E;
	Thu, 17 Mar 2022 20:24:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F04D21BF336
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 20:24:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DB0514032B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 20:24:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CpiqmJ0fxHVh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Mar 2022 20:24:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CE91340194
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 20:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647548647; x=1679084647;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=kcG/0dv/3Du0fwagr/R1T32bQsiStsn1Auwku6e4zn0=;
 b=jNzaiNL9BjoKEsfMt3Y0Y1CkqV/7M1BzG2d056XE/xUCubqovz6rk4Mm
 kI0ARhtYEfEp9u4Ugy5hiUh3LsfoydIyxlTNOippmcdhJCf8QCq0n36ZX
 QVZBqGGrxKYbHmnXNrUp+Q9BXx0Qm7zd3RZIUGXIV7QZwMhqj+mdRbovK
 btEOUWxQADbaq0D8uC5tg9OkwW8kRwigrXYDPRdwDPlUjy89DiMPJchs/
 Xw5Hjh7x/k4LLrqkpjQzQhPfvOEBmQP3usj/YM1t0852wD5TGs68nZKXT
 0zF3iyZSSQpHtim6+7BF9oQhXZmAn5rWTehG3Qaut8xEbY24Fro7v45W2 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="281772806"
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="281772806"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 13:24:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="599234045"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 17 Mar 2022 13:24:06 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nUwfF-000E1B-Nr; Thu, 17 Mar 2022 20:24:05 +0000
Date: Fri, 18 Mar 2022 04:23:53 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <623398d9.SXySWRAlRlZSTSHl%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 14ab42ea6d24967edcf0bd69fba004478327617e
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
branch HEAD: 14ab42ea6d24967edcf0bd69fba004478327617e  igc: Fix BUG: scheduling while atomic

elapsed time: 732m

configs tested: 109
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                            allyesconfig
i386                          randconfig-c001
arm                            mps2_defconfig
sh                        edosk7705_defconfig
arm                            pleb_defconfig
powerpc                       eiger_defconfig
openrisc                 simple_smp_defconfig
sh                          sdk7780_defconfig
mips                  decstation_64_defconfig
mips                      loongson3_defconfig
mips                      maltasmvp_defconfig
powerpc                      bamboo_defconfig
ia64                             alldefconfig
sh                             espt_defconfig
h8300                       h8s-sim_defconfig
arc                              alldefconfig
mips                           jazz_defconfig
arm                  randconfig-c002-20220317
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
h8300                            allyesconfig
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
sparc                            allyesconfig
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220317
s390                 randconfig-r044-20220317
riscv                randconfig-r042-20220317
x86_64                        randconfig-a006
x86_64                        randconfig-a002
x86_64                        randconfig-a004
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
arm                         palmz72_defconfig
powerpc                 mpc8315_rdb_defconfig
powerpc                     tqm8540_defconfig
mips                       lemote2f_defconfig
powerpc                      ppc64e_defconfig
arm                          pcm027_defconfig
powerpc                    gamecube_defconfig
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
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
