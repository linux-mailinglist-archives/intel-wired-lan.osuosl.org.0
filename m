Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE864BD1DC
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Feb 2022 22:23:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F2BF81490;
	Sun, 20 Feb 2022 21:23:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N7YDpLNMACrC; Sun, 20 Feb 2022 21:23:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 148AC813FC;
	Sun, 20 Feb 2022 21:23:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4638B1BF3D7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Feb 2022 21:22:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 42A51401A0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Feb 2022 21:22:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0yGswp0C7FFI for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Feb 2022 21:22:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62C7B400F9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Feb 2022 21:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645392175; x=1676928175;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=zn5Z8BQWtIYGambTeKWSUaJZgeeXLnvyFRw1SqOEiAs=;
 b=WsH7htgxB8q7ntyBF/Rmaq61+sS+exmMfYQArZBpnh4dUFy7YuxFtAlK
 L0EhbQLgRZLwKxnzx0Rt0CmzFrPPA8N/HTSEeptjrQTLYwhM/sX5G5rv2
 M+QDh39eGzxRc1dOEX96pPPL1yeP5YPfMl7rQFwpeVrHzbYGFIpMqgeov
 4ju+c59fymkz6lr/T+631odIiN/QhENcFI6ECoiFr0o3QLVdzRM71Ow7J
 AS7BYfhzOheWB9LHpORLOsH0hX+wN5W2l2yALqR9rdQXHdoTLVosCZeHT
 jUyGxRK5Cvyvm2E7QG1EjPqscd9T3g14CwOZS/re7nRwCHp+alw8fYlqw w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="250222434"
X-IronPort-AV: E=Sophos;i="5.88,384,1635231600"; d="scan'208";a="250222434"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2022 13:22:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,384,1635231600"; d="scan'208";a="778517533"
Received: from lkp-server01.sh.intel.com (HELO da3212ac2f54) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 20 Feb 2022 13:22:53 -0800
Received: from kbuild by da3212ac2f54 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nLtfQ-0000pu-TR; Sun, 20 Feb 2022 21:22:52 +0000
Date: Mon, 21 Feb 2022 05:22:07 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6212b0ff.aNWIQeB9ImQTgrRl%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 98b1f1d6a184646cb70760676f70ec5c6bedda24
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
branch HEAD: 98b1f1d6a184646cb70760676f70ec5c6bedda24  Revert "i40e: Fix reset bw limit when DCB enabled with 1 TC"

elapsed time: 732m

configs tested: 106
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
arm                         lpc18xx_defconfig
powerpc                     pq2fads_defconfig
mips                             allyesconfig
ia64                         bigsur_defconfig
mips                      maltasmvp_defconfig
xtensa                    smp_lx200_defconfig
xtensa                          iss_defconfig
powerpc                      ppc40x_defconfig
powerpc                    klondike_defconfig
m68k                        m5272c3_defconfig
xtensa                              defconfig
powerpc                      pcm030_defconfig
mips                       bmips_be_defconfig
h8300                            alldefconfig
nios2                         10m50_defconfig
arm                         lubbock_defconfig
sh                         ecovec24_defconfig
mips                           xway_defconfig
mips                      loongson3_defconfig
arm                            zeus_defconfig
sh                        sh7763rdp_defconfig
powerpc                      bamboo_defconfig
nds32                               defconfig
sh                          landisk_defconfig
powerpc                      ppc6xx_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220220
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
nios2                            allyesconfig
csky                                defconfig
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
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
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
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
powerpc              randconfig-c003-20220220
x86_64                        randconfig-c007
arm                  randconfig-c002-20220220
mips                 randconfig-c004-20220220
i386                          randconfig-c001
riscv                randconfig-c006-20220220
powerpc                    mvme5100_defconfig
powerpc                        fsp2_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                     mpc5200_defconfig
powerpc                     kilauea_defconfig
mips                        workpad_defconfig
powerpc                   bluestone_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220220
hexagon              randconfig-r041-20220220

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
