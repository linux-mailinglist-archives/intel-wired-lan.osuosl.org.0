Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B3666C61C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jan 2023 17:14:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42D1481A33;
	Mon, 16 Jan 2023 16:14:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42D1481A33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673885697;
	bh=Tb1R0qlCL9NcQSdHONayeLCytnAlmN+WEdh9MD5Xkug=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7DNcMVXETRouc6HteAvF2K1iN/joal5urDpYyfijrH5s+oUpI8JzFZpC4b4aHsreU
	 dWVvL6fV7Cbwh6Bwf/m3uJqSVNLoqm7MYDE42n+fx6N5DRXtOc6hwzwq6Uow+hKEPl
	 SwUKfd71gqtXd/KuWv3Z1xm9r13R9ez3/ePyocV+DPw0cH+8xDiZkBcxm/PVED4CWu
	 Nxvr9NhD9CPvismslUcQorVMBBNkObO5dHvp1wuu/7uAnTROqx4SMU3twe0qZzV4PX
	 ei59aUZ8XBL7G1TFSZq/tys3hiOAk0Dv/KubXKDm6Zg6sO81yx2OTmN+V5ogFLe3CW
	 9YQfBUdrn7e2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5mztbuXCMBOf; Mon, 16 Jan 2023 16:14:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22930818A2;
	Mon, 16 Jan 2023 16:14:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22930818A2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7261D1BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 16:14:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 543F140450
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 16:14:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 543F140450
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hbJ4tgp8xeMB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jan 2023 16:14:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F381A4034A
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F381A4034A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 16:14:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="325761296"
X-IronPort-AV: E=Sophos;i="5.97,221,1669104000"; d="scan'208";a="325761296"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 08:14:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="747774130"
X-IronPort-AV: E=Sophos;i="5.97,221,1669104000"; d="scan'208";a="747774130"
Received: from lkp-server02.sh.intel.com (HELO f57cd993bc73) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Jan 2023 08:14:47 -0800
Received: from kbuild by f57cd993bc73 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pHS8F-0000Yl-0n;
 Mon, 16 Jan 2023 16:14:47 +0000
Date: Tue, 17 Jan 2023 00:13:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63c577c7.97TZfuvWWe3ei0i8%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673885690; x=1705421690;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Lxn6K7ShA6u/OQtCkFZMBuN+qfheXLryh8yjvHtk7Ak=;
 b=Sy9qncsstV+C3tbjzerXmFBXJUgdbqfPc2frFel+6qOoLS1neec4AEgT
 ttL4grNgVpXQMJ0Z6g5qhXJi2N0Tcuf9+04KiZcyW0Z71dbNHbnmGgtcX
 CcJykckibp4Lj7bD41y42Xc8MD0EfH2P7Ywi2iTcG67TH+tfrC99yxAzz
 bSwMpVuqdl/MV9vRBwawY28rJYGMIJBBKp2XCJpNnxg/W0kARBRVglY6g
 7IfTYNzW8OCFmrVvHGwFTrqm7avZGQ5rPCwqvC/GJvbLGSosdSZdbL6/b
 txCijTUSEkJ9phjHtgGZ5lsJlxyIZaVi87BVmWqiKcBt0zV7P3+ZGHrHe
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sy9qncss
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 de87cc88c24145e991bf5d04f70e29422c963f5d
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
branch HEAD: de87cc88c24145e991bf5d04f70e29422c963f5d  ice: avoid bonding causing auxiliary plug/unplug under RTNL lock

elapsed time: 3953m

configs tested: 168
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                  randconfig-r043-20230112
riscv                randconfig-r042-20230112
s390                 randconfig-r044-20230112
um                           x86_64_defconfig
um                             i386_defconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
ia64                             allmodconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
arm                      footbridge_defconfig
sh                            shmin_defconfig
arc                 nsimosci_hs_smp_defconfig
arm64                            alldefconfig
arm                         cm_x300_defconfig
sparc                             allnoconfig
powerpc                    amigaone_defconfig
mips                           xway_defconfig
arm                         vf610m4_defconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
i386                          randconfig-c001
arc                     haps_hs_smp_defconfig
arm                             ezx_defconfig
mips                         rt305x_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
arc                        nsim_700_defconfig
xtensa                  nommu_kc705_defconfig
xtensa                    xip_kc705_defconfig
sh                              ul2_defconfig
mips                         bigsur_defconfig
sh                          rsk7203_defconfig
m68k                                defconfig
sh                                  defconfig
nios2                         3c120_defconfig
m68k                       bvme6000_defconfig
sh                          r7785rp_defconfig
sh                        dreamcast_defconfig
sh                             espt_defconfig
mips                      maltasmvp_defconfig
arm                           h3600_defconfig
sh                           se7712_defconfig
powerpc                       eiger_defconfig
powerpc                    sam440ep_defconfig
s390                          debug_defconfig
sparc64                          alldefconfig
sh                          rsk7201_defconfig
sh                             shx3_defconfig
sh                            hp6xx_defconfig
mips                        bcm47xx_defconfig
arm                         axm55xx_defconfig
arm                            hisi_defconfig
powerpc                       maple_defconfig
openrisc                    or1ksim_defconfig
mips                     decstation_defconfig
riscv                            allmodconfig
sh                        sh7757lcr_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20230115
loongarch                 loongson3_defconfig
arm                          pxa3xx_defconfig
sparc64                             defconfig
powerpc                      makalu_defconfig
sh                           se7705_defconfig
x86_64               randconfig-a011-20230116
x86_64               randconfig-a013-20230116
x86_64               randconfig-a012-20230116
x86_64               randconfig-a014-20230116
x86_64               randconfig-a016-20230116
x86_64               randconfig-a015-20230116
powerpc                          allyesconfig
sh                           se7619_defconfig
arm                             rpc_defconfig
sh                         ecovec24_defconfig
riscv                            allyesconfig
i386                 randconfig-a013-20230116
i386                 randconfig-a015-20230116
i386                 randconfig-a011-20230116
nios2                         10m50_defconfig
arc                               allnoconfig

clang tested configs:
x86_64                        randconfig-a016
i386                          randconfig-a006
arm                  randconfig-r046-20230112
hexagon              randconfig-r041-20230112
hexagon              randconfig-r045-20230112
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-k001
mips                           mtx1_defconfig
riscv                          rv32_defconfig
powerpc                 mpc8560_ads_defconfig
mips                     cu1000-neo_defconfig
powerpc                 mpc836x_mds_defconfig
mips                malta_qemu_32r6_defconfig
riscv                randconfig-r042-20230115
s390                 randconfig-r044-20230115
hexagon              randconfig-r041-20230115
hexagon              randconfig-r045-20230115
powerpc                      pmac32_defconfig
powerpc                     kilauea_defconfig
arm                          collie_defconfig
powerpc                       ebony_defconfig
powerpc                     ppa8548_defconfig
arm                         s3c2410_defconfig
i386                 randconfig-a002-20230116
i386                 randconfig-a004-20230116
i386                 randconfig-a001-20230116
i386                 randconfig-a003-20230116
i386                 randconfig-a005-20230116
i386                 randconfig-a006-20230116
arm                       mainstone_defconfig
powerpc                        fsp2_defconfig
powerpc                          g5_defconfig
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
