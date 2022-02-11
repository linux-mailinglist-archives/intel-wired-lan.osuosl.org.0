Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D688C4B1F41
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Feb 2022 08:23:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D5CC81344;
	Fri, 11 Feb 2022 07:23:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lO6PpYDNjBbr; Fri, 11 Feb 2022 07:23:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CDEB81285;
	Fri, 11 Feb 2022 07:23:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2A4AA1BF35A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 07:23:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 20DD280F05
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 07:23:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LHdMYe9gXr4A for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Feb 2022 07:23:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 046E580E55
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 07:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644564216; x=1676100216;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=IH2ENkTYGe9q3OWExLOU1TnIXRqB3p4ERZUmmrKWfmM=;
 b=NSgZfA4PzzlBbjdTnIGs6weBADlRbzC5qzSlWxyPDEXZ6zwOzK887I8W
 rt470EwdvYmxUcB56lk9PILrvCWM2NhyTPqs9VjtuA/Wcj+FoMZO+TAt5
 SoCu2WQQs/Tz8UGzB7KMaZdra4loMFlnzyrsQEdxszjIKOtJAH67HcO1f
 Fb3FxQMq7UryOGFD9CPvMCPvekLcqYv4DFDsq/D+7kdd13Z+FV1vulPwj
 IEcVo4pq5QVf6ih80+UGc4Fvqv9dwKGZrFKO5ly+mCi7ZJKO0frfHwXcs
 HzmdmJAyZXGkepb8Uv70mmecdsQWyADPDUOvX5G+zWgrwBy7tFd0YKu24 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="310415274"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="310415274"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 23:23:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="602297368"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 10 Feb 2022 23:23:34 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nIQHF-0004I5-EK; Fri, 11 Feb 2022 07:23:33 +0000
Date: Fri, 11 Feb 2022 15:22:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62060eb8./VLOeA+AhtLueYYg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 43260f8632bb67556e26172730b58beb885035ab
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
branch HEAD: 43260f8632bb67556e26172730b58beb885035ab  e1000e: Print PHY register address when MDI read/write fails

possible Warning in current branch (please contact us if interested):

include/net/gro.h:58:1: sparse: sparse: directive in macro's argument list

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm-randconfig-s032-20220210
|   `-- include-net-gro.h:sparse:sparse:directive-in-macro-s-argument-list
|-- powerpc-randconfig-s031-20220210
|   `-- include-net-gro.h:sparse:sparse:directive-in-macro-s-argument-list
|-- x86_64-randconfig-s021
|   `-- include-net-gro.h:sparse:sparse:directive-in-macro-s-argument-list
|-- x86_64-randconfig-s022
|   `-- include-net-gro.h:sparse:sparse:directive-in-macro-s-argument-list
`-- x86_64-rhel-8.3-kselftests
    `-- include-net-gro.h:sparse:sparse:directive-in-macro-s-argument-list

elapsed time: 726m

configs tested: 110
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
parisc                generic-64bit_defconfig
powerpc                 mpc834x_itx_defconfig
arm                             ezx_defconfig
arm                        cerfcube_defconfig
nios2                            alldefconfig
sh                          urquell_defconfig
arc                 nsimosci_hs_smp_defconfig
m68k                       m5249evb_defconfig
sh                                  defconfig
m68k                        m5407c3_defconfig
sh                   sh7770_generic_defconfig
arm                           sunxi_defconfig
arm                  randconfig-c002-20220209
arm                  randconfig-c002-20220210
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
s390                 randconfig-r044-20220209
arc                  randconfig-r043-20220209
riscv                randconfig-r042-20220210
riscv                randconfig-r042-20220209
arc                  randconfig-r043-20220210
s390                 randconfig-r044-20220210
riscv                    nommu_k210_defconfig
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
powerpc              randconfig-c003-20220210
arm                  randconfig-c002-20220210
i386                          randconfig-c001
mips                 randconfig-c004-20220209
mips                 randconfig-c004-20220210
arm                  randconfig-c002-20220209
arm                          ep93xx_defconfig
powerpc                    gamecube_defconfig
x86_64                           allyesconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
hexagon              randconfig-r045-20220210
hexagon              randconfig-r045-20220208
hexagon              randconfig-r041-20220210
hexagon              randconfig-r041-20220208

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
