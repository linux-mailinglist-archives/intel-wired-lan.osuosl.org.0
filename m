Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF024B35DC
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Feb 2022 16:35:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9833D401CC;
	Sat, 12 Feb 2022 15:35:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w0b8WGxPDDpp; Sat, 12 Feb 2022 15:35:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 586C940153;
	Sat, 12 Feb 2022 15:35:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D41D71BF37B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Feb 2022 15:34:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BE7DC60769
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Feb 2022 15:34:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 21G9kJ4RalOC for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Feb 2022 15:34:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D950D60760
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Feb 2022 15:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644680097; x=1676216097;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=H6v3E1LE+PHXCmvR0v6V/CZBAiCJVHWVnR6dnd+AhTU=;
 b=CZLU22VRsfPs4oH9B3BYz5+xzTw5aLPzlJJMMtcPFdws4UumTP8Rz+af
 +HHnhjxFgu+vcI7WTOfsYLq3rYpo6L/k+kaJAAauOftGdGs5nhHK/NQZ9
 IL+98p1hrHHWZePZDk0jqjTbVxf+BweZG0VAxt8aAXSYWV3E+G7xTHrms
 pen3IWaMSa29ActqFHysPL+TFWPpK8828d7geFC2fwy4j3+RPw3f51m2H
 JaxkoYAoz6qeYccWhmKASDC6hF5aWT26jySzuQ+p/qMcw3lsnD2Jhv3Le
 5dMweq6C/UBmHeqb3DZErLCLyxQp6B0nGrwVl44B4oxYeR2Nh6XjYti8/ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10255"; a="249634356"
X-IronPort-AV: E=Sophos;i="5.88,363,1635231600"; d="scan'208";a="249634356"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2022 07:34:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,363,1635231600"; d="scan'208";a="490944800"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 12 Feb 2022 07:34:52 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nIuQF-0006K9-Nw; Sat, 12 Feb 2022 15:34:51 +0000
Date: Sat, 12 Feb 2022 23:33:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6207d35e.rQqSKvc1gRA7qKW4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD REGRESSION
 3f6a8609890e9c3173c52ee51428b0ace232b7e4
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
branch HEAD: 3f6a8609890e9c3173c52ee51428b0ace232b7e4  ice: fix concurrent reset and removal of VFs

possible Error/Warning in current branch (please contact us if interested):

net/netfilter/xt_socket.c:224:3: error: implicit declaration of function 'nf_defrag_ipv6_disable'; did you mean 'nf_defrag_ipv4_disable'? [-Werror=implicit-function-declaration]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- i386-randconfig-a005
    `-- net-netfilter-xt_socket.c:error:implicit-declaration-of-function-nf_defrag_ipv6_disable

elapsed time: 900m

configs tested: 119
configs skipped: 4

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
powerpc                      chrp32_defconfig
xtensa                    xip_kc705_defconfig
openrisc                            defconfig
mips                          rb532_defconfig
ia64                             alldefconfig
ia64                        generic_defconfig
xtensa                       common_defconfig
xtensa                         virt_defconfig
arm                         axm55xx_defconfig
m68k                       m5475evb_defconfig
m68k                        m5307c3_defconfig
powerpc64                           defconfig
arm                          pxa3xx_defconfig
arm                     eseries_pxa_defconfig
arm                           sama5_defconfig
powerpc                      bamboo_defconfig
arc                     nsimosci_hs_defconfig
xtensa                generic_kc705_defconfig
mips                        vocore2_defconfig
xtensa                    smp_lx200_defconfig
arm                        realview_defconfig
m68k                        mvme147_defconfig
sh                          rsk7203_defconfig
arc                      axs103_smp_defconfig
um                           x86_64_defconfig
mips                           ci20_defconfig
arm                  randconfig-c002-20220211
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nds32                               defconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
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
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220211
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                       imx_v4_v5_defconfig
mips                          ath79_defconfig
powerpc                      walnut_defconfig
mips                      malta_kvm_defconfig
powerpc                      katmai_defconfig
powerpc                      ppc44x_defconfig
powerpc                     mpc5200_defconfig
hexagon                             defconfig
powerpc               mpc834x_itxgp_defconfig
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
