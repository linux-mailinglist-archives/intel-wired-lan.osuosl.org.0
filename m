Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B66354CF1BC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Mar 2022 07:17:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B2C581678;
	Mon,  7 Mar 2022 06:16:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1mZBvh2NE3rr; Mon,  7 Mar 2022 06:16:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33A3F815CD;
	Mon,  7 Mar 2022 06:16:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 991E21BF40A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 06:16:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A30C2400B9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 06:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D6EuVwLLgtWO for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Mar 2022 06:16:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D36D44010C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 06:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646633799; x=1678169799;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=RR4N2m+6980Z68WXGIIb01Vd4Kb5TtcbggH1IasXqPY=;
 b=OeWcEAJR2yOdBQZVoCaw4uYLdYWfZOv4Nl22SrUbxne9YlkJqJFt22jy
 IIywP6VCsDDcUaPqpvlTTq3tuE9mPyM1AjVSd9CqnMuncER/m1MC60NEb
 T1vZdplNKyhSWpRYZdCMVYbViJsRVPGiC2BCDi8Onr11cctW5+UqE+80c
 le1mFA7UQWv3TjTMoIrGqr+zhr0DTliOz8F9DHLvZGd6Ltu5JSa17BOnt
 aJWvWS5ec0RVTB0lSplwzcO3XXxpD1A04NMwNu19nz4h6KoI3ws8zmFCD
 ssabr6SjGKpuvowmr2ZQTsCwmLv9qGrJTUnz9yPhhqFNrJepX+Am4sonN g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10278"; a="315027589"
X-IronPort-AV: E=Sophos;i="5.90,161,1643702400"; d="scan'208";a="315027589"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2022 22:16:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,161,1643702400"; d="scan'208";a="546790427"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 06 Mar 2022 22:16:37 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nR6fY-000019-1z; Mon, 07 Mar 2022 06:16:32 +0000
Date: Mon, 07 Mar 2022 13:42:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62259b34.8YrL8/OC8ITm+fi/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 3d5985a185e6abfc0b38ed187819016a79eca864
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
branch HEAD: 3d5985a185e6abfc0b38ed187819016a79eca864  ice: convert VF storage to hash table with krefs and RCU

Unverified Warning (likely false positive, please contact us if interested):

drivers/net/phy/sfp.c:1713 sfp_sm_mod_hpower() warn: passing zero to 'ERR_PTR'
drivers/net/phy/sfp.c:1797 sfp_cotsworks_fixup_check() warn: passing zero to 'ERR_PTR'
drivers/net/phy/sfp.c:1830 sfp_sm_mod_probe() warn: passing zero to 'ERR_PTR'
drivers/net/phy/sfp.c:473 sfp_soft_get_state() warn: passing zero to 'ERR_PTR'
net/dsa/dsa.c:486 dsa_port_walk_fdbs() error: uninitialized symbol 'err'.
net/dsa/dsa.c:506 dsa_port_walk_mdbs() error: uninitialized symbol 'err'.

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- m68k-randconfig-m031-20220304
    |-- drivers-net-phy-sfp.c-sfp_cotsworks_fixup_check()-warn:passing-zero-to-ERR_PTR
    |-- drivers-net-phy-sfp.c-sfp_sm_mod_hpower()-warn:passing-zero-to-ERR_PTR
    |-- drivers-net-phy-sfp.c-sfp_sm_mod_probe()-warn:passing-zero-to-ERR_PTR
    |-- drivers-net-phy-sfp.c-sfp_soft_get_state()-warn:passing-zero-to-ERR_PTR
    |-- net-dsa-dsa.c-dsa_port_walk_fdbs()-error:uninitialized-symbol-err-.
    `-- net-dsa-dsa.c-dsa_port_walk_mdbs()-error:uninitialized-symbol-err-.

elapsed time: 4820m

configs tested: 99
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
mips                 randconfig-c004-20220303
sh                            migor_defconfig
arm                           sunxi_defconfig
sh                          rsk7269_defconfig
arm                           sama5_defconfig
mips                         mpc30x_defconfig
mips                      maltasmvp_defconfig
parisc64                         alldefconfig
powerpc                     tqm8548_defconfig
powerpc                     sequoia_defconfig
powerpc                 mpc837x_mds_defconfig
sh                         microdev_defconfig
parisc                generic-64bit_defconfig
arm                  randconfig-c002-20220303
arm                  randconfig-c002-20220304
arm                  randconfig-c002-20220302
ia64                                defconfig
ia64                             allmodconfig
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
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
i386                                defconfig
sparc                               defconfig
sparc                            allyesconfig
mips                             allmodconfig
mips                             allyesconfig
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
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                    nommu_virt_defconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                                  kexec

clang tested configs:
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220302
riscv                randconfig-c006-20220302
i386                          randconfig-c001
arm                  randconfig-c002-20220302
mips                 randconfig-c004-20220302
powerpc                          g5_defconfig
arm                        spear3xx_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220304
hexagon              randconfig-r041-20220304

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
