Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 560D64B1F40
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Feb 2022 08:22:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA6634099A;
	Fri, 11 Feb 2022 07:22:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4JnhEoObATu2; Fri, 11 Feb 2022 07:22:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D504F4089D;
	Fri, 11 Feb 2022 07:22:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2D32B1BF35A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 07:22:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 23C7961C14
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 07:22:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RbjeOLt7vGNh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Feb 2022 07:22:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7075660AA0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 07:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644564156; x=1676100156;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=8w7RfTNpAf+HDKrn/eUNbP1/r3uEX9xMxHqPWroLq+E=;
 b=c9QqVYIY+3Jjc7NmN4tfju81loC8B5TLXN2BPtgCSeeHrIU8w3Tx+MWE
 bpurL7KrmNPX1v5kTKQ4AsBbSc7L0hh09naWuCU2frY25FOO6Ww/UnuHx
 KYS9KpbPtjcR/56zaQSWmvXQZiO8vElrvm0pSOC0VnybG8Fiqmo+IOhpG
 rC+3JtgYPkfzsBB40KftXKNsg/atOL2ne+7aJY7/w33kugTQcP5JpoFot
 E9dGvyQVxtyjZTjXko5LKyUXYeE69kqfQj0hiBUOJBoZL2UuEVBuv3UlU
 PNw1MyNbUbEbh1mo/C/Itp2o85Gf/KUKXgWDUIbNddJducPCqeJpHnf5z w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="312961837"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="312961837"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 23:22:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="586249415"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 10 Feb 2022 23:22:34 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nIQGH-0004Hr-Dl; Fri, 11 Feb 2022 07:22:33 +0000
Date: Fri, 11 Feb 2022 15:22:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62060eb4.S9J+36DTqRgWg3zA%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 4f5e483b8c7a644733db941a1ae00173baa7b463
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
branch HEAD: 4f5e483b8c7a644733db941a1ae00173baa7b463  net: dsa: qca8k: fix noderef.cocci warnings

possible Warning in current branch (please contact us if interested):

net/mctp/route.c:458:4: warning: Value stored to 'msk' is never read [clang-analyzer-deadcode.DeadStores]

Warning ids grouped by kconfigs:

clang_recent_errors
`-- x86_64-randconfig-c007
    `-- net-mctp-route.c:warning:Value-stored-to-msk-is-never-read-clang-analyzer-deadcode.DeadStores

elapsed time: 726m

configs tested: 151
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
powerpc              randconfig-c003-20220210
arm                         lpc18xx_defconfig
powerpc                       ppc64_defconfig
arm                        mini2440_defconfig
arm                       multi_v4t_defconfig
openrisc                 simple_smp_defconfig
openrisc                            defconfig
sparc64                          alldefconfig
powerpc                     mpc83xx_defconfig
m68k                           sun3_defconfig
sh                         ecovec24_defconfig
powerpc                 mpc834x_itx_defconfig
arm                             ezx_defconfig
arm                        cerfcube_defconfig
nios2                            alldefconfig
sh                          urquell_defconfig
arc                 nsimosci_hs_smp_defconfig
m68k                       m5249evb_defconfig
powerpc                     tqm8541_defconfig
arm                           h3600_defconfig
powerpc                       eiger_defconfig
arm                          simpad_defconfig
m68k                          multi_defconfig
s390                       zfcpdump_defconfig
nds32                               defconfig
s390                             allmodconfig
arm                     eseries_pxa_defconfig
alpha                            alldefconfig
mips                            gpr_defconfig
powerpc                     sequoia_defconfig
arm                         assabet_defconfig
riscv                    nommu_k210_defconfig
h8300                     edosk2674_defconfig
parisc                              defconfig
sh                                  defconfig
m68k                        m5407c3_defconfig
sh                   sh7770_generic_defconfig
arm                           sunxi_defconfig
powerpc                      arches_defconfig
powerpc                 mpc837x_rdb_defconfig
arm                  randconfig-c002-20220210
arm                  randconfig-c002-20220209
arm                  randconfig-c002-20220211
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allyesconfig
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
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                        randconfig-a011
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
s390                 randconfig-r044-20220209
arc                  randconfig-r043-20220209
riscv                randconfig-r042-20220210
riscv                randconfig-r042-20220209
arc                  randconfig-r043-20220210
s390                 randconfig-r044-20220210
arc                  randconfig-r043-20220211
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
riscv                randconfig-c006-20220209
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220209
i386                          randconfig-c001
mips                 randconfig-c004-20220209
arm                  randconfig-c002-20220209
powerpc              randconfig-c003-20220210
arm                  randconfig-c002-20220210
mips                 randconfig-c004-20220210
arm                            mmp2_defconfig
mips                            e55_defconfig
arm                        mvebu_v5_defconfig
powerpc                      katmai_defconfig
powerpc                    ge_imp3a_defconfig
arm                        multi_v5_defconfig
powerpc                      ppc44x_defconfig
powerpc                     tqm5200_defconfig
powerpc                       ebony_defconfig
mips                      pic32mzda_defconfig
mips                       rbtx49xx_defconfig
powerpc                     kilauea_defconfig
powerpc                        icon_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a005
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220210
hexagon              randconfig-r045-20220208
hexagon              randconfig-r041-20220210
hexagon              randconfig-r041-20220208
hexagon              randconfig-r045-20220211
hexagon              randconfig-r041-20220211
riscv                randconfig-r042-20220211
s390                 randconfig-r044-20220211

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
