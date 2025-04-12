Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0406BA86FC3
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Apr 2025 23:10:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D52B40BBC;
	Sat, 12 Apr 2025 21:10:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DKc3p1e3dOog; Sat, 12 Apr 2025 21:10:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C49D40BA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744492207;
	bh=o/5CmhG2dSC7jIE2Ssv1ReMIOUkb/9httvr1be/6la4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=otgh/LbJrMSvMa2bptVDbw7IAhtRr3bVtxNNeoaWxGQFZgrfpWvFFbkYSgbkYaf44
	 3siJO+OKE3IIeMh0PNbtUawBbb+QusbtX5+TzWsMPH1vZEgtl44on66W+Gp/p0m1W7
	 9JLEJg9ER65FBJtnim/7OQr4kf3SUR2Si1Ub0cabWov0+p/+Wmrd6cag6tM4uCFUPX
	 XDiiaX4XwvASWji7V8YtWGcY4qzO1YhLwwrpL0VOa2Foper26skwXgDDGuSJRHgtEV
	 YpWBX16UGm/+4QJzH8OvkcvYnMq0nxeQ/GS+VS4sqeO5t4KqE5fo8UJPY0cogV9zd8
	 6tYASupckOSBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C49D40BA9;
	Sat, 12 Apr 2025 21:10:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 60EF6138
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Apr 2025 21:10:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46CFE80C12
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Apr 2025 21:10:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RNF-P2U-kEBd for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Apr 2025 21:10:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5D07980BBE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D07980BBE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D07980BBE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Apr 2025 21:10:04 +0000 (UTC)
X-CSE-ConnectionGUID: kbsL2TAsQ0yubE40e4XevQ==
X-CSE-MsgGUID: 1GBd+5RETFOzOpFQzfAxYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="33626033"
X-IronPort-AV: E=Sophos;i="6.15,209,1739865600"; d="scan'208";a="33626033"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2025 14:10:04 -0700
X-CSE-ConnectionGUID: wdJgOhHEQLujoByrW1xIOg==
X-CSE-MsgGUID: RjD4x/EcQeaSSjY0lLflYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,209,1739865600"; d="scan'208";a="134238848"
Received: from lkp-server01.sh.intel.com (HELO b207828170a5) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 12 Apr 2025 14:10:03 -0700
Received: from kbuild by b207828170a5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1u3i6y-000C88-37
 for intel-wired-lan@lists.osuosl.org; Sat, 12 Apr 2025 21:10:00 +0000
Date: Sun, 13 Apr 2025 05:09:13 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202504130507.NC3Z3FrD-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744492204; x=1776028204;
 h=date:from:to:subject:message-id;
 bh=tVkoqZjuEB29CBMRIc3xT4JfePE0R+cEk1iVtYqP84w=;
 b=BlFot707AkvJGL0ZOqZ1XbvO8H9Cwk6cxWgqZ72be1lhEc8V9r3Acax/
 6CuuWAcKN7h9l8iGqixoonskQIobCnPUzgLsE5yPROcyBrqyhfvOxX0LG
 6f4j88uwQk4aS49519q8oqKSnR3VYESxGRwTLJcZLI3KnLIhATVqvzUG8
 VUCZii1shwT3G9lMSQg165HtYotJMPzbK3pNnfUfdB5lnRTAaVYiLJMRN
 LSCPd433s6CoR5YRLBLghTgt4MJBsQhU6CsR8Rp8+ym+G2EzHYrV+0R5S
 Rf/KQGoBibWwiwV8rOEqgDdzQJ92tqIewgp3JDynChQoHta6ippiINMT1
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BlFot707
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 39aa687a849489897a15cd8a2d8a4b513def6237
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 39aa687a849489897a15cd8a2d8a4b513def6237  net: e1000e: convert to ndo_hwtstamp_get() and ndo_hwtstamp_set()

elapsed time: 1444m

configs tested: 111
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                     nsimosci_hs_defconfig    gcc-14.2.0
arc                   randconfig-001-20250412    gcc-14.2.0
arc                   randconfig-002-20250412    gcc-14.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250412    clang-21
arm                   randconfig-002-20250412    gcc-7.5.0
arm                   randconfig-003-20250412    clang-21
arm                   randconfig-004-20250412    clang-21
arm                         s3c6400_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250412    clang-21
arm64                 randconfig-002-20250412    clang-21
arm64                 randconfig-003-20250412    gcc-8.5.0
arm64                 randconfig-004-20250412    clang-21
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250412    gcc-14.2.0
csky                  randconfig-002-20250412    gcc-14.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250412    clang-21
hexagon               randconfig-002-20250412    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250412    clang-20
i386        buildonly-randconfig-002-20250412    clang-20
i386        buildonly-randconfig-003-20250412    clang-20
i386        buildonly-randconfig-004-20250412    clang-20
i386        buildonly-randconfig-005-20250412    clang-20
i386        buildonly-randconfig-006-20250412    gcc-11
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250412    gcc-14.2.0
loongarch             randconfig-002-20250412    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                        vocore2_defconfig    clang-21
mips                           xway_defconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250412    gcc-8.5.0
nios2                 randconfig-002-20250412    gcc-10.5.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250412    gcc-7.5.0
parisc                randconfig-002-20250412    gcc-9.3.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                     ppa8548_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250412    clang-18
powerpc               randconfig-002-20250412    clang-21
powerpc               randconfig-003-20250412    clang-18
powerpc64             randconfig-001-20250412    clang-21
powerpc64             randconfig-002-20250412    clang-21
powerpc64             randconfig-003-20250412    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250412    clang-20
riscv                 randconfig-002-20250412    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250412    clang-18
s390                  randconfig-002-20250412    gcc-9.3.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                 kfr2r09-romimage_defconfig    gcc-14.2.0
sh                    randconfig-001-20250412    gcc-14.2.0
sh                    randconfig-002-20250412    gcc-14.2.0
sh                      rts7751r2d1_defconfig    gcc-14.2.0
sh                            titan_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250412    gcc-10.3.0
sparc                 randconfig-002-20250412    gcc-13.3.0
sparc64               randconfig-001-20250412    gcc-13.3.0
sparc64               randconfig-002-20250412    gcc-5.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250412    gcc-12
um                    randconfig-002-20250412    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250412    gcc-12
x86_64      buildonly-randconfig-002-20250412    clang-20
x86_64      buildonly-randconfig-003-20250412    gcc-11
x86_64      buildonly-randconfig-004-20250412    clang-20
x86_64      buildonly-randconfig-005-20250412    clang-20
x86_64      buildonly-randconfig-006-20250412    clang-20
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250412    gcc-14.2.0
xtensa                randconfig-002-20250412    gcc-13.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
