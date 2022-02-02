Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A6F4A6CD0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Feb 2022 09:20:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 321D54033F;
	Wed,  2 Feb 2022 08:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VGgITzWYvZbo; Wed,  2 Feb 2022 08:20:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4A5B40320;
	Wed,  2 Feb 2022 08:20:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B74C31BF909
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 08:20:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF4AE83252
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 08:20:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bg7nIZjSm1t8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Feb 2022 08:20:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E0BB082521
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 08:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643790049; x=1675326049;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=haNVcDNqhCq2OwywsASnCF3csrzl7ZNbkiw2ol6lrFs=;
 b=T2HaL/KL69t9rYigChqKwGS0xwE1wSwXH/u5OjEOMU1mvOCaZgK6142L
 nBGJxvY8TeIIj6VvbchulDP5npou5JaebdmXPgOw4WeXFKuK1QUzZ+7JM
 UOC04dCQtq27pO6Gi45A7IIfo0SDgpdyiyJO48cwKxQvMMXI+WFA45CYS
 dDj47Nkrgy6XCyLHMnpK+VcaEDEuZXVLHiRvqIxB5VAp3u0DweBNGwSsk
 sqpsSN641q01Dyv+AW0QW8bopEcZyMGfjLZEBytnSi6u2ut8i8le5dRY/
 x6AnJVUUa+W+hmsviByXJuCiPOFgKiqt793ViRny3Ht7ZZYCfqYQRHXBK w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="248090210"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="248090210"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 00:20:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="698705960"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 02 Feb 2022 00:20:48 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nFAsh-000UKz-JY; Wed, 02 Feb 2022 08:20:47 +0000
Date: Wed, 02 Feb 2022 16:20:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61fa3ed0.zFHtmm0eSAX8sKGw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 f282fe1914eda89d5b9dd471e91eb7aa2fd3d9d8
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
branch HEAD: f282fe1914eda89d5b9dd471e91eb7aa2fd3d9d8  ice: Add slow path offload stats on port representor in switchdev

elapsed time: 731m

configs tested: 105
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
i386                 randconfig-c001-20220131
powerpc              randconfig-c003-20220131
i386                          randconfig-c001
m68k                       m5475evb_defconfig
powerpc                      ppc40x_defconfig
mips                      maltasmvp_defconfig
powerpc                 mpc85xx_cds_defconfig
sh                             espt_defconfig
powerpc                    adder875_defconfig
arm                      integrator_defconfig
arm                           h3600_defconfig
openrisc                 simple_smp_defconfig
powerpc                    amigaone_defconfig
mips                         rt305x_defconfig
powerpc                      pasemi_defconfig
powerpc                     taishan_defconfig
xtensa                              defconfig
arm                  randconfig-c002-20220130
arm                  randconfig-c002-20220131
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
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
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20220131
i386                 randconfig-a005-20220131
i386                 randconfig-a003-20220131
i386                 randconfig-a002-20220131
i386                 randconfig-a001-20220131
i386                 randconfig-a004-20220131
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
riscv                randconfig-r042-20220130
arc                  randconfig-r043-20220130
s390                 randconfig-r044-20220130
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
mips                           ip27_defconfig
arm                              alldefconfig
powerpc                     mpc5200_defconfig
arm                       cns3420vb_defconfig
x86_64               randconfig-a013-20220131
x86_64               randconfig-a015-20220131
x86_64               randconfig-a014-20220131
x86_64               randconfig-a016-20220131
x86_64               randconfig-a011-20220131
x86_64               randconfig-a012-20220131
i386                 randconfig-a013-20220131
i386                 randconfig-a014-20220131
i386                 randconfig-a012-20220131
i386                 randconfig-a015-20220131
i386                 randconfig-a016-20220131
i386                 randconfig-a011-20220131
riscv                randconfig-r042-20220131
hexagon              randconfig-r045-20220130
hexagon              randconfig-r045-20220131
hexagon              randconfig-r041-20220130
hexagon              randconfig-r041-20220131

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
