Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 444B04AD866
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Feb 2022 13:38:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBC3060EC9;
	Tue,  8 Feb 2022 12:38:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6C1MBVwmOUEe; Tue,  8 Feb 2022 12:38:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE1D460773;
	Tue,  8 Feb 2022 12:38:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 662A01BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Feb 2022 12:38:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 54EE3401B3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Feb 2022 12:38:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MrPE9fAdjuik for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Feb 2022 12:38:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1FA8E4019D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Feb 2022 12:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644323909; x=1675859909;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=UAd5KJTQymot+uT02H2yHkhp54Qb60Cc7Z125UZn4P8=;
 b=VPJofpInnoSTXeqqMP07n4gxfZSN+KVNO5U1I5SWdmnh9zTtTNuvitAK
 u7xeAjv66nz8DCSCyVLNvh9aJtglPXS5JyDD+V+8/S5Ljh7LwSrdkR8KK
 1euGP3oKCErtQNrYzVaa5AgguiqzK8lQCTIbJUJOv0hq4NG5WFx+Tvi7J
 3J++Ac1625mWtNpjrLNcmo2S4o07R99u48h4K1LS6SsifoFyw/Ds5gf/a
 z1hIKxWJ1jiNzItBi3uPPicicQf4TBtlHNhRr9jwbOpYq2N1qP4Qlvo1p
 CeyFJCAjVooW/SGh6bJzo6XDwYsHHi9FSs+iO4J7OOMV9rNvVBm10UGHZ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="232504037"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="232504037"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 04:38:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="481929190"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 08 Feb 2022 04:38:27 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nHPlK-0000BT-H3; Tue, 08 Feb 2022 12:38:26 +0000
Date: Tue, 08 Feb 2022 20:38:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6202643a.XtyVqTn3YTjhiFyV%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 c89ef08a3fb6598289e97903c590fb089022789f
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
branch HEAD: c89ef08a3fb6598289e97903c590fb089022789f  ice: fix concurrent reset and removal of VFs

elapsed time: 721m

configs tested: 117
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
powerpc                     pq2fads_defconfig
arc                     haps_hs_smp_defconfig
riscv             nommu_k210_sdcard_defconfig
mips                      loongson3_defconfig
sh                           se7619_defconfig
arm                            mps2_defconfig
xtensa                  nommu_kc705_defconfig
sh                            titan_defconfig
nds32                            alldefconfig
sparc64                             defconfig
arm                        cerfcube_defconfig
sh                            migor_defconfig
arc                         haps_hs_defconfig
arm                       multi_v4t_defconfig
sh                         apsh4a3a_defconfig
arm64                            alldefconfig
sh                          r7785rp_defconfig
arm                      footbridge_defconfig
sh                            shmin_defconfig
arm                            qcom_defconfig
mips                            gpr_defconfig
powerpc                       maple_defconfig
powerpc                      ppc6xx_defconfig
i386                                defconfig
arm                             ezx_defconfig
mips                      maltasmvp_defconfig
h8300                       h8s-sim_defconfig
powerpc                      ep88xc_defconfig
riscv                            allyesconfig
arm                  randconfig-c002-20220207
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
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
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sparc                               defconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64               randconfig-a013-20220207
x86_64               randconfig-a016-20220207
x86_64               randconfig-a015-20220207
x86_64               randconfig-a012-20220207
x86_64               randconfig-a014-20220207
x86_64               randconfig-a011-20220207
i386                 randconfig-a012-20220207
i386                 randconfig-a013-20220207
i386                 randconfig-a015-20220207
i386                 randconfig-a014-20220207
i386                 randconfig-a011-20220207
i386                 randconfig-a016-20220207
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
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
mips                     cu1000-neo_defconfig
powerpc                      ppc44x_defconfig
powerpc                 mpc836x_mds_defconfig
mips                        workpad_defconfig
powerpc                    ge_imp3a_defconfig
arm                       aspeed_g4_defconfig
arm                         hackkit_defconfig
powerpc                     tqm8560_defconfig
riscv                          rv32_defconfig
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-a005
i386                 randconfig-a005-20220207
i386                 randconfig-a004-20220207
i386                 randconfig-a003-20220207
i386                 randconfig-a006-20220207
i386                 randconfig-a001-20220207
i386                 randconfig-a002-20220207
hexagon              randconfig-r045-20220207
hexagon              randconfig-r041-20220207

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
