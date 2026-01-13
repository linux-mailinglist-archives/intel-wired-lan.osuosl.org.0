Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2108D16D1C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 07:23:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 504D5417DD;
	Tue, 13 Jan 2026 06:23:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WBtMIjPS0Jt6; Tue, 13 Jan 2026 06:23:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6328D417DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768285415;
	bh=7Q/1vwLnWWhQWl2eZctZfI+Ih/Sfa2bcUGJlXzxDiLE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=u1enVkV8uwqxD2O+5geSULytzsu8ZX7V2cQu58C3V4A+nfzIlQKAUZvMxSkTth2RF
	 ZXYh1W7wo57nU6WD1kHXCEQCeSY2ACt4qcIlX5aCHGhkramhCL5iH7T3dtRobExxO6
	 zDIKyV7/jCF892izIWEQl/Al8WxIVFUbP21ZOd087W2ie6zpzsu9vPec6AlZNSxiyb
	 jyog1FO210g1MTmLD70rp33qhQGs1P/GKH/4L5xrzMt5W3iAoDBVVggUzak6Q/kFwg
	 QJKKfc9VE5XPI38yd1Zx86H3kYa37yXlYPT39q99ZY3rS0r1l1gXPLAsEIn0Ur0ML5
	 M2vHhl8ZMsmsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6328D417DA;
	Tue, 13 Jan 2026 06:23:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 96AE3231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 06:23:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 88348405E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 06:23:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dYx86lLF_Fji for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 06:23:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8DAB840025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8DAB840025
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8DAB840025
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 06:23:31 +0000 (UTC)
X-CSE-ConnectionGUID: /cntaS49RWmfS9O2CnNmoQ==
X-CSE-MsgGUID: HLQKBxoJRw+JYRjhhOgqoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="92232834"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="92232834"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 22:23:30 -0800
X-CSE-ConnectionGUID: 28fKDtKlTUmki4X0c/gYWw==
X-CSE-MsgGUID: CGD/1AENT+O1U9f0eKRrzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="203456650"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 12 Jan 2026 22:23:29 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vfXoM-00000000EJo-3lZ0;
 Tue, 13 Jan 2026 06:23:26 +0000
Date: Tue, 13 Jan 2026 14:23:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202601131457.BlvIexwW-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768285412; x=1799821412;
 h=date:from:to:subject:message-id;
 bh=Wci2vXwwGBx+PZv1dVr4xdqcKaE0SVaWvyKCQRgFvi8=;
 b=T8GooOEhEHcCLdvcJaTOAzw1SP+EzI9rT4qUJmrnHCuLT4kMgj5stGBe
 +pc67X8y5gPhriI5+vRqZ+CDrKtJE/XI2vnmtx2O3ZPYzg5B00uPfPdML
 7ipjCPML0w3HtLOzG5uPUaIWEQdrlPIvdx1XmVUg8/ZxAt7k0T/feOZ4Z
 l2C3VuvhA45ZwdMYAojWGB4lmDOC9T50QYDxl2CNEI3up2bTALr1McoxD
 wqrd713YOM7D2FBpf0vs1AGylJre6kx5FJ1l85UiAP8gRTH44rq2KOywc
 hgIspqzqO+snet11qJSudbQsPASfzd8ZEy7jk+2BJLyAMVLgilC0tlDCu
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=T8GooOEh
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 f93fc5d12d69012788f82151bee55fce937e1432
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: f93fc5d12d69012788f82151bee55fce937e1432  net: octeon_ep_vf: fix free_irq dev_id mismatch in IRQ rollback

elapsed time: 780m

configs tested: 207
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-22
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260113    clang-22
arc                   randconfig-002-20260113    clang-22
arc                        vdk_hs38_defconfig    gcc-15.2.0
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                       aspeed_g4_defconfig    clang-22
arm                                 defconfig    gcc-15.2.0
arm                          exynos_defconfig    gcc-15.2.0
arm                       imx_v4_v5_defconfig    clang-22
arm                       imx_v6_v7_defconfig    gcc-15.2.0
arm                            mmp2_defconfig    gcc-15.2.0
arm                           omap1_defconfig    gcc-15.2.0
arm                          pxa910_defconfig    clang-22
arm                   randconfig-001-20260113    clang-22
arm                   randconfig-002-20260113    clang-22
arm                   randconfig-003-20260113    clang-22
arm                   randconfig-004-20260113    clang-22
arm                           spitz_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260113    clang-22
arm64                 randconfig-002-20260113    clang-22
arm64                 randconfig-003-20260113    clang-22
arm64                 randconfig-004-20260113    clang-22
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260113    clang-22
csky                  randconfig-002-20260113    clang-22
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260113    clang-22
hexagon               randconfig-002-20260113    clang-22
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260113    clang-20
i386        buildonly-randconfig-002-20260113    clang-20
i386        buildonly-randconfig-003-20260113    clang-20
i386        buildonly-randconfig-004-20260113    clang-20
i386        buildonly-randconfig-005-20260113    clang-20
i386        buildonly-randconfig-006-20260113    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260113    clang-20
i386                  randconfig-002-20260113    clang-20
i386                  randconfig-003-20260113    clang-20
i386                  randconfig-004-20260113    clang-20
i386                  randconfig-005-20260113    clang-20
i386                  randconfig-006-20260113    clang-20
i386                  randconfig-007-20260113    clang-20
i386                  randconfig-011-20260113    gcc-14
i386                  randconfig-012-20260113    gcc-14
i386                  randconfig-013-20260113    gcc-14
i386                  randconfig-014-20260113    gcc-14
i386                  randconfig-015-20260113    gcc-14
i386                  randconfig-016-20260113    gcc-14
i386                  randconfig-017-20260113    gcc-14
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260113    clang-22
loongarch             randconfig-002-20260113    clang-22
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                          amiga_defconfig    clang-22
m68k                                defconfig    clang-19
m68k                        m5272c3_defconfig    clang-22
m68k                        mvme147_defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                  cavium_octeon_defconfig    gcc-15.2.0
mips                           gcw0_defconfig    clang-22
mips                           ip30_defconfig    gcc-15.2.0
mips                           mtx1_defconfig    clang-22
mips                           rs90_defconfig    gcc-15.2.0
mips                   sb1250_swarm_defconfig    clang-22
nios2                            allmodconfig    clang-22
nios2                             allnoconfig    clang-22
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260113    clang-22
nios2                 randconfig-002-20260113    clang-22
openrisc                         allmodconfig    clang-22
openrisc                          allnoconfig    clang-22
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                           allyesconfig    clang-19
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260113    clang-19
parisc                randconfig-002-20260113    clang-19
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                      arches_defconfig    clang-22
powerpc                  iss476-smp_defconfig    clang-22
powerpc                      mgcoge_defconfig    clang-22
powerpc                     mpc512x_defconfig    clang-22
powerpc                     mpc5200_defconfig    clang-22
powerpc                      pasemi_defconfig    clang-22
powerpc               randconfig-001-20260113    clang-19
powerpc               randconfig-002-20260113    clang-19
powerpc                     taishan_defconfig    gcc-15.2.0
powerpc                     tqm8540_defconfig    clang-22
powerpc                     tqm8541_defconfig    clang-22
powerpc                      tqm8xx_defconfig    clang-22
powerpc                        warp_defconfig    clang-22
powerpc64             randconfig-001-20260113    clang-19
powerpc64             randconfig-002-20260113    clang-19
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                    nommu_virt_defconfig    clang-22
riscv                 randconfig-001-20260113    gcc-15.2.0
riscv                 randconfig-002-20260113    gcc-15.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260113    gcc-15.2.0
s390                  randconfig-002-20260113    gcc-15.2.0
s390                       zfcpdump_defconfig    clang-22
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                               allyesconfig    clang-19
sh                                  defconfig    gcc-14
sh                               j2_defconfig    clang-22
sh                          landisk_defconfig    gcc-15.2.0
sh                          r7785rp_defconfig    gcc-15.2.0
sh                    randconfig-001-20260113    gcc-15.2.0
sh                    randconfig-002-20260113    gcc-15.2.0
sh                      rts7751r2d1_defconfig    clang-22
sh                           se7705_defconfig    gcc-15.2.0
sh                  sh7785lcr_32bit_defconfig    clang-22
sh                              ul2_defconfig    clang-22
sparc                             allnoconfig    clang-22
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260113    gcc-14.3.0
sparc                 randconfig-002-20260113    gcc-14.3.0
sparc                       sparc32_defconfig    gcc-15.2.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260113    gcc-14.3.0
sparc64               randconfig-002-20260113    gcc-14.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260113    gcc-14.3.0
um                    randconfig-002-20260113    gcc-14.3.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260113    clang-20
x86_64      buildonly-randconfig-002-20260113    clang-20
x86_64      buildonly-randconfig-003-20260113    clang-20
x86_64      buildonly-randconfig-004-20260113    clang-20
x86_64      buildonly-randconfig-005-20260113    clang-20
x86_64      buildonly-randconfig-006-20260113    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260113    gcc-14
x86_64                randconfig-002-20260113    gcc-14
x86_64                randconfig-003-20260113    gcc-14
x86_64                randconfig-004-20260113    gcc-14
x86_64                randconfig-005-20260113    gcc-14
x86_64                randconfig-006-20260113    gcc-14
x86_64                randconfig-011-20260113    clang-20
x86_64                randconfig-012-20260113    clang-20
x86_64                randconfig-013-20260113    clang-20
x86_64                randconfig-014-20260113    clang-20
x86_64                randconfig-015-20260113    clang-20
x86_64                randconfig-016-20260113    clang-20
x86_64                randconfig-071-20260113    clang-20
x86_64                randconfig-072-20260113    clang-20
x86_64                randconfig-073-20260113    clang-20
x86_64                randconfig-074-20260113    clang-20
x86_64                randconfig-075-20260113    clang-20
x86_64                randconfig-076-20260113    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                           allyesconfig    clang-22
xtensa                randconfig-001-20260113    gcc-14.3.0
xtensa                randconfig-002-20260113    gcc-14.3.0
xtensa                    smp_lx200_defconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
