Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F0AD0D7FA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jan 2026 16:09:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B490409B1;
	Sat, 10 Jan 2026 15:09:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id js_EGoBwvzqT; Sat, 10 Jan 2026 15:09:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41E3740966
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768057746;
	bh=8hI+G+XOcXQd8FuaIqVBqLEaT1TBpnSe7dAFdhoa4wo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Jhsg17VMY4+Auh0uDEBeScz/J7InR0ra7AaP1es7zCBvSRuYZSTK2wbZTJEFJElGc
	 y9SjppC/Ko8bmpH0mQccdwWmX/1Z+I73AevJbpFH7nGBkpWvZnJvLp6qulqefyZjnd
	 nKYt4r1JvbfqiCAyNHW3JJVRWPyv7ivPQNF8KO0OIQ5FA82r4XlQZyFGZNs7Puu8qp
	 DlKRYZssJlAJGdORpEI4ahz3NFVEGYiVBaQez8HQU6pT4/3OD+2sp0ehBDC/GMvxgn
	 6wRaZJp3xQvkJJfXhKcUwLmPpbVEzH21c3NGJu4Hg/iIakFV05nqPyyOYYLawTYZGP
	 C6BpTnyZXBVDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41E3740966;
	Sat, 10 Jan 2026 15:09:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 23C4812E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 15:09:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 09FBB6077D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 15:09:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n_z_PKDqmeXr for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jan 2026 15:09:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E2498605F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2498605F5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E2498605F5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 15:09:03 +0000 (UTC)
X-CSE-ConnectionGUID: jad6+NZNSPuY2NmZxHsTHg==
X-CSE-MsgGUID: 5gKoS7DmR++bwBIPLnp7Ng==
X-IronPort-AV: E=McAfee;i="6800,10657,11667"; a="68412441"
X-IronPort-AV: E=Sophos;i="6.21,215,1763452800"; d="scan'208";a="68412441"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2026 07:09:03 -0800
X-CSE-ConnectionGUID: At/ZXbLNSKGzZeU85pIFxg==
X-CSE-MsgGUID: 7a6sZw54Rsq0HBpKun1Mxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,215,1763452800"; d="scan'208";a="203500619"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 10 Jan 2026 07:09:02 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1veaaJ-000000008mD-2zm6;
 Sat, 10 Jan 2026 15:08:59 +0000
Date: Sat, 10 Jan 2026 23:08:13 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202601102308.lP7TZtyt-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768057744; x=1799593744;
 h=date:from:to:subject:message-id;
 bh=3Uin9cOK2IT2ThOv6Z05JfB4PnRnULMKCZuWJ7FhEv0=;
 b=PNHurDNBIR6tnTm0xT+LdTrIIKpeu+8M14SJfKCnlwxwCBMte4ALnR7i
 bWok/DqxjFcqfYbd3LB4oY34o4yxkye3X5At5NRrxfwBobmJ38lCdkm6Q
 FmRqKANE5DSNXz1Hz7TOuKoEKyXNdJkdqGG3PryeLP/r6KB8P+PLIErRd
 8bRX+TP1WRN0KUCUGm79DPqnyU7uBgo9Ppjj4JFZsr9VS6QKQka/AMIbn
 q5AlijKpz0QfKFmvDhsbo4zAktutF2wRleZdSiahLBDtDvltOE/UpiyVa
 zhb/EKptfE9FMribmriZZwGPEEIQTsOL3sDHgb4QMGacmcWAmeaVMdjxz
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PNHurDNB
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 872ac785e7680dac9ec7f8c5ccd4f667f49d6997
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 872ac785e7680dac9ec7f8c5ccd4f667f49d6997  ipv4: ip_tunnel: spread netdev_lockdep_set_classes()

elapsed time: 2211m

configs tested: 238
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig    gcc-15.2.0
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-22
arc                                 defconfig    gcc-15.2.0
arc                        nsimosci_defconfig    gcc-15.2.0
arc                 nsimosci_hs_smp_defconfig    clang-22
arc                   randconfig-001-20260110    clang-22
arc                   randconfig-001-20260110    gcc-13.4.0
arc                   randconfig-002-20260110    clang-22
arc                   randconfig-002-20260110    gcc-8.5.0
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                         bcm2835_defconfig    clang-22
arm                                 defconfig    gcc-15.2.0
arm                           h3600_defconfig    clang-22
arm                           imxrt_defconfig    gcc-15.2.0
arm                          ixp4xx_defconfig    gcc-15.2.0
arm                         orion5x_defconfig    clang-22
arm                   randconfig-001-20260110    clang-22
arm                   randconfig-002-20260110    clang-22
arm                   randconfig-002-20260110    gcc-12.5.0
arm                   randconfig-003-20260110    clang-22
arm                   randconfig-003-20260110    gcc-8.5.0
arm                   randconfig-004-20260110    clang-22
arm                        shmobile_defconfig    clang-22
arm                        vexpress_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260110    gcc-10.5.0
arm64                 randconfig-001-20260110    gcc-15.2.0
arm64                 randconfig-002-20260110    gcc-10.5.0
arm64                 randconfig-003-20260110    gcc-10.5.0
arm64                 randconfig-003-20260110    gcc-12.5.0
arm64                 randconfig-004-20260110    gcc-10.5.0
arm64                 randconfig-004-20260110    gcc-14.3.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260110    gcc-10.5.0
csky                  randconfig-001-20260110    gcc-15.2.0
csky                  randconfig-002-20260110    gcc-10.5.0
csky                  randconfig-002-20260110    gcc-15.2.0
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260110    clang-22
hexagon               randconfig-002-20260110    clang-22
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260110    gcc-14
i386        buildonly-randconfig-002-20260110    gcc-14
i386        buildonly-randconfig-003-20260110    gcc-12
i386        buildonly-randconfig-003-20260110    gcc-14
i386        buildonly-randconfig-004-20260110    clang-20
i386        buildonly-randconfig-004-20260110    gcc-14
i386        buildonly-randconfig-005-20260110    gcc-14
i386        buildonly-randconfig-006-20260110    gcc-14
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260110    gcc-12
i386                  randconfig-001-20260110    gcc-14
i386                  randconfig-002-20260110    gcc-14
i386                  randconfig-003-20260110    gcc-12
i386                  randconfig-003-20260110    gcc-14
i386                  randconfig-004-20260110    clang-20
i386                  randconfig-004-20260110    gcc-14
i386                  randconfig-005-20260110    gcc-14
i386                  randconfig-006-20260110    clang-20
i386                  randconfig-006-20260110    gcc-14
i386                  randconfig-007-20260110    gcc-14
i386                  randconfig-011-20260110    gcc-14
i386                  randconfig-012-20260110    gcc-14
i386                  randconfig-013-20260110    gcc-14
i386                  randconfig-014-20260110    gcc-14
i386                  randconfig-015-20260110    gcc-14
i386                  randconfig-016-20260110    gcc-14
i386                  randconfig-017-20260110    gcc-14
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260110    clang-22
loongarch             randconfig-002-20260110    clang-22
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                                defconfig    clang-19
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                       bmips_be_defconfig    gcc-15.2.0
mips                     decstation_defconfig    clang-22
mips                          eyeq6_defconfig    clang-22
mips                          eyeq6_defconfig    gcc-15.2.0
mips                malta_qemu_32r6_defconfig    gcc-15.2.0
mips                        vocore2_defconfig    clang-22
nios2                            allmodconfig    clang-22
nios2                             allnoconfig    clang-22
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260110    clang-22
nios2                 randconfig-001-20260110    gcc-8.5.0
nios2                 randconfig-002-20260110    clang-22
nios2                 randconfig-002-20260110    gcc-11.5.0
openrisc                         allmodconfig    clang-22
openrisc                          allnoconfig    clang-22
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                           allyesconfig    clang-19
parisc                              defconfig    gcc-15.2.0
parisc                generic-64bit_defconfig    clang-22
parisc                randconfig-001-20260110    gcc-14.3.0
parisc                randconfig-002-20260110    gcc-13.4.0
parisc                randconfig-002-20260110    gcc-14.3.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                       holly_defconfig    clang-22
powerpc                      katmai_defconfig    clang-22
powerpc                      mgcoge_defconfig    clang-22
powerpc               randconfig-001-20260110    gcc-14.3.0
powerpc               randconfig-001-20260110    gcc-8.5.0
powerpc               randconfig-002-20260110    gcc-10.5.0
powerpc               randconfig-002-20260110    gcc-14.3.0
powerpc                     taishan_defconfig    gcc-15.2.0
powerpc                     tqm5200_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260110    gcc-14.3.0
powerpc64             randconfig-002-20260110    clang-22
powerpc64             randconfig-002-20260110    gcc-14.3.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260110    clang-22
riscv                 randconfig-001-20260110    gcc-15.2.0
riscv                 randconfig-002-20260110    clang-22
riscv                 randconfig-002-20260110    gcc-15.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260110    gcc-15.2.0
s390                  randconfig-001-20260110    gcc-9.5.0
s390                  randconfig-002-20260110    clang-22
s390                  randconfig-002-20260110    gcc-15.2.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                               allyesconfig    clang-19
sh                                  defconfig    gcc-14
sh                            hp6xx_defconfig    gcc-15.2.0
sh                    randconfig-001-20260110    gcc-15.2.0
sh                    randconfig-002-20260110    gcc-12.5.0
sh                    randconfig-002-20260110    gcc-15.2.0
sh                          rsk7203_defconfig    gcc-15.2.0
sh                   rts7751r2dplus_defconfig    clang-22
sh                          sdk7786_defconfig    gcc-15.2.0
sh                           sh2007_defconfig    gcc-15.2.0
sh                        sh7785lcr_defconfig    gcc-15.2.0
sh                            titan_defconfig    clang-22
sparc                             allnoconfig    clang-22
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260110    clang-22
sparc                 randconfig-001-20260110    gcc-14.3.0
sparc                 randconfig-002-20260110    clang-22
sparc                 randconfig-002-20260110    gcc-15.2.0
sparc64                          alldefconfig    clang-22
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260110    clang-22
sparc64               randconfig-002-20260110    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260110    clang-22
um                    randconfig-001-20260110    gcc-14
um                    randconfig-002-20260110    clang-22
um                    randconfig-002-20260110    gcc-14
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260110    gcc-14
x86_64      buildonly-randconfig-002-20260110    clang-20
x86_64      buildonly-randconfig-002-20260110    gcc-14
x86_64      buildonly-randconfig-003-20260110    clang-20
x86_64      buildonly-randconfig-003-20260110    gcc-14
x86_64      buildonly-randconfig-004-20260110    gcc-14
x86_64      buildonly-randconfig-005-20260110    gcc-14
x86_64      buildonly-randconfig-006-20260110    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260110    clang-20
x86_64                randconfig-002-20260110    clang-20
x86_64                randconfig-002-20260110    gcc-14
x86_64                randconfig-003-20260110    clang-20
x86_64                randconfig-004-20260110    clang-20
x86_64                randconfig-005-20260110    clang-20
x86_64                randconfig-005-20260110    gcc-14
x86_64                randconfig-006-20260110    clang-20
x86_64                randconfig-011-20260110    clang-20
x86_64                randconfig-012-20260110    clang-20
x86_64                randconfig-012-20260110    gcc-14
x86_64                randconfig-013-20260110    clang-20
x86_64                randconfig-013-20260110    gcc-14
x86_64                randconfig-014-20260110    clang-20
x86_64                randconfig-015-20260110    clang-20
x86_64                randconfig-015-20260110    gcc-14
x86_64                randconfig-016-20260110    clang-20
x86_64                randconfig-071-20260110    clang-20
x86_64                randconfig-072-20260110    clang-20
x86_64                randconfig-073-20260110    clang-20
x86_64                randconfig-074-20260110    clang-20
x86_64                randconfig-075-20260110    clang-20
x86_64                randconfig-075-20260110    gcc-14
x86_64                randconfig-076-20260110    clang-20
x86_64                randconfig-076-20260110    gcc-14
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                           allyesconfig    clang-22
xtensa                randconfig-001-20260110    clang-22
xtensa                randconfig-001-20260110    gcc-10.5.0
xtensa                randconfig-002-20260110    clang-22
xtensa                randconfig-002-20260110    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
