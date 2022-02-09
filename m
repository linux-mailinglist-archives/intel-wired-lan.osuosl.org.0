Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E630F4AF245
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Feb 2022 14:02:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B5124001F;
	Wed,  9 Feb 2022 13:02:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hNIIxa5q8xun; Wed,  9 Feb 2022 13:02:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 391A640270;
	Wed,  9 Feb 2022 13:02:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 632081BF281
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Feb 2022 13:02:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5A48F60F0E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Feb 2022 13:02:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WExufzB7lX4Z for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Feb 2022 13:02:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6336760F0B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Feb 2022 13:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644411770; x=1675947770;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=/P2P/pYm1xl6uV8/vw1AlD09hnu06l+rWubEZmBfdtU=;
 b=Pe4D911kJ4eGaQin/a3AV5sdFwHSBQcosxeS3YFhdkUnAAGpVhnNnjNy
 fm5KlQlT5dsrtINlXTjkg4231G+qIb/MsitPhiCcJFdYVGqhRblB+nDcu
 2u9wMvacjRt2z1r2SVY8o67ICICOw26ujQe43UHTZ10EPnLYGM5BmTUSp
 d8Q0ctPzozqnPbmEi0OisoZwTBBfFT7JYQRbtsCxEDL4zUA9sP+wc6q4j
 1eeYH37caUtFhePFNJRUTa3WGpQE0KNkSOtYAxV8V8ad3f799g2eGdK8T
 WgltgQIX6NfUpzUxk89W1vfKHiITUM9JR6LDVVbTkUtRFycFC3LL3IRbr A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="249146729"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="249146729"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:02:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="568229246"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 09 Feb 2022 05:02:48 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nHmcQ-0001pm-O0; Wed, 09 Feb 2022 13:02:46 +0000
Date: Wed, 09 Feb 2022 21:01:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6203bb3c.4GNDqxNqeSFtFBFM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 4d610d80c8616d6a5ff96fa805fe4017d491797b
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
branch HEAD: 4d610d80c8616d6a5ff96fa805fe4017d491797b  ice: Add ability for PF admin to enable VF VLAN pruning

elapsed time: 725m

configs tested: 94
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm64                               defconfig
powerpc                   motionpro_defconfig
sh                   sh7724_generic_defconfig
sh                               alldefconfig
arc                          axs103_defconfig
sh                         ap325rxa_defconfig
mips                         bigsur_defconfig
m68k                        m5407c3_defconfig
sh                         apsh4a3a_defconfig
powerpc                   currituck_defconfig
arm                        cerfcube_defconfig
sh                        dreamcast_defconfig
arm                           stm32_defconfig
powerpc                     taishan_defconfig
powerpc                     tqm8548_defconfig
powerpc                 mpc834x_itx_defconfig
sh                          sdk7780_defconfig
powerpc                     sequoia_defconfig
sh                   rts7751r2dplus_defconfig
arm                        multi_v7_defconfig
sh                                  defconfig
mips                     loongson1b_defconfig
sh                   sh7770_generic_defconfig
ia64                             allyesconfig
ia64                                defconfig
ia64                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
nios2                            allyesconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a002
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
riscv                randconfig-r042-20220209
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                    rhel-8.3-kselftests

clang tested configs:
mips                      malta_kvm_defconfig
powerpc                      katmai_defconfig
powerpc                      pmac32_defconfig
x86_64                        randconfig-a003
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a015
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
