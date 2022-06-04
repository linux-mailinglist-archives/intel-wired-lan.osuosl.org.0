Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5B953D6FD
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jun 2022 15:18:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39E026116F;
	Sat,  4 Jun 2022 13:17:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tkTF5oCgszjU; Sat,  4 Jun 2022 13:17:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4283660EAD;
	Sat,  4 Jun 2022 13:17:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED1DE1BF38D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jun 2022 13:17:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DACAF84517
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jun 2022 13:17:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Esp5TbNPHftG for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jun 2022 13:17:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F2467844B3
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jun 2022 13:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654348668; x=1685884668;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=dVtqcFDrCqx3+mXX+6nowyTh00pa6/5bT/OeYXOnBRg=;
 b=bHk3TVP/6vu6ZYbYNwmlYBufDlM/FzracXZCQ+3SHla2bd+TSa8U9HrO
 nYp68E24J65l2ijfQnPzEd25zCndDLPNgfZBqtWbHLyyNoTNNhleftjam
 AgnjceoXurA2BFgm7vgP32W9qpXkLp/L1YQVwTMOTMD8tW4heMd8fq0y2
 XyVkq3uRndCLD60tDhSXL3hfRYvgoro6KaO/UPVXvPlCLi/llDLDFfUP8
 6CYlUXeHldAz0xksaP0os5q4Uk6ERhIYLn9IY0rlNVIe31qt0obL9YA2a
 xpiFy0wvT9oXjbF09yve+TCY2aCnULyKyI/cKwdFrDPZkMEIqKw3PtGs/ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10368"; a="339507504"
X-IronPort-AV: E=Sophos;i="5.91,277,1647327600"; d="scan'208";a="339507504"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2022 06:17:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,277,1647327600"; d="scan'208";a="578429937"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 04 Jun 2022 06:17:38 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nxTer-000Atf-8u;
 Sat, 04 Jun 2022 13:17:37 +0000
Date: Sat, 04 Jun 2022 21:17:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <629b5b6f.kyaIf08obU0DMr+U%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 99edb37da211826176976a58a9c19d54af700fd4
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
branch HEAD: 99edb37da211826176976a58a9c19d54af700fd4  igc: Reinstate IGC_REMOVED logic and implement it properly

elapsed time: 1049m

configs tested: 101
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
s390                             allmodconfig
sh                        dreamcast_defconfig
powerpc                     mpc83xx_defconfig
arm                        trizeps4_defconfig
m68k                            q40_defconfig
arm                           u8500_defconfig
sh                   rts7751r2dplus_defconfig
arm                        cerfcube_defconfig
xtensa                    xip_kc705_defconfig
x86_64                        randconfig-c001
i386                          randconfig-c001
arm                  randconfig-c002-20220603
riscv                             allnoconfig
s390                                defconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
parisc                              defconfig
parisc64                            defconfig
riscv                    nommu_k210_defconfig
parisc                           allyesconfig
riscv                            allmodconfig
riscv                            allyesconfig
s390                             allyesconfig
h8300                            allyesconfig
m68k                             allyesconfig
xtensa                           allyesconfig
m68k                             allmodconfig
csky                                defconfig
arc                                 defconfig
mips                             allyesconfig
nios2                            allyesconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
alpha                               defconfig
alpha                            allyesconfig
mips                             allmodconfig
sh                               allmodconfig
sparc                               defconfig
powerpc                          allyesconfig
i386                             allyesconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
sparc                            allyesconfig
powerpc                          allmodconfig
i386                                defconfig
um                             i386_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
ia64                             allmodconfig
ia64                             allyesconfig
arm64                               defconfig
arm64                            allyesconfig
ia64                                defconfig
i386                          randconfig-a001
x86_64                        randconfig-a004
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a002
x86_64                        randconfig-a011
x86_64                        randconfig-a008
i386                          randconfig-a009
i386                          randconfig-a010
i386                          randconfig-a007
x86_64                        randconfig-a006
i386                          randconfig-a012
x86_64                    rhel-8.3-kselftests
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz

clang tested configs:
powerpc              randconfig-c003-20220603
x86_64                        randconfig-c007
riscv                randconfig-c006-20220603
i386                          randconfig-c001
s390                 randconfig-c005-20220603
mips                 randconfig-c004-20220603
arm                  randconfig-c002-20220603
mips                malta_qemu_32r6_defconfig
powerpc                 mpc8313_rdb_defconfig
arm                         shannon_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                     mpc5200_defconfig
powerpc                     kmeter1_defconfig
x86_64                        randconfig-a012
i386                          randconfig-a002
x86_64                        randconfig-a009
x86_64                        randconfig-a007
i386                          randconfig-a006
x86_64                        randconfig-a010
i386                          randconfig-a011
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a008
i386                          randconfig-a004

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
