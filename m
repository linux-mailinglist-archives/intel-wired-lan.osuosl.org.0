Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E01EC8CA11
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Nov 2025 03:02:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 241504108F;
	Thu, 27 Nov 2025 02:02:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qmd4CxLiaGmZ; Thu, 27 Nov 2025 02:02:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6330341041
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764208961;
	bh=4Xe8VxlbCcI5bxECmJgPQy0cft4eNnf/f1I4c8hOfVA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BuZPAeLjJu+2jvpc0Si2oamAw4AzukzPy3QiVN3vxS6W6nKF9SFdfa6ThlzpsAw1c
	 RW9zW5vj7VVa2klC0yrT3c/eWRD+8PE21IodtD8BWrI4C9axXXqh20FWajL/oYvE3H
	 MWkdKv+dIb/uZ/L+XuLmwbVaoaPBglQv8eklsYqJZQvrc4X+WgIwen7K3ErmwTKert
	 uwOc3oLIm7XdkTYi8P1CdRorVvkkbIr+zVgFmWeFA+zrkZHhNN1ecVKkPMeY9KGTVi
	 kDuTTmmemOAUoMMpO0GR3F7AKcWDzMx2RQx/2IKdUHEpLGfr8N/8ZBlJUf25lzUMwt
	 7vVfpXppEJrdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6330341041;
	Thu, 27 Nov 2025 02:02:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 373F9708
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 02:02:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2FD4C60BAC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 02:02:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hEXYxCHjky20 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Nov 2025 02:02:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 62E4660B7D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62E4660B7D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 62E4660B7D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 02:02:37 +0000 (UTC)
X-CSE-ConnectionGUID: HcPl1Dm+SXyZILpoI3gWYw==
X-CSE-MsgGUID: q8TOz9ihQSeT7IvkjQohqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="77617044"
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="77617044"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 18:02:37 -0800
X-CSE-ConnectionGUID: mGr8zUeSR6WqMFZh64KHug==
X-CSE-MsgGUID: c/bdUwMdS4Kgp1F0Q6ksfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="230379474"
Received: from lkp-server01.sh.intel.com (HELO 4664bbef4914) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 26 Nov 2025 18:02:36 -0800
Received: from kbuild by 4664bbef4914 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vORL7-000000003Z7-2FuS
 for intel-wired-lan@lists.osuosl.org; Thu, 27 Nov 2025 02:02:33 +0000
Date: Thu, 27 Nov 2025 10:01:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511271031.02TtcbIP-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764208958; x=1795744958;
 h=date:from:to:subject:message-id;
 bh=JRtaTJXLhhBh3UsHxHJxHeWOIBZF37lnEreysS1Lvbg=;
 b=ig/yaui83498mVeDl8x22X+VNsYUoM151t4L/2aquTATMnBwU+wVmMMP
 gxoYxfAbZkNkM+i8ckRophSiQYKyAwPCHgeaPu1umeo/MpiKMwQp2++FS
 gou6K8o3DkYi/IhbCx13fMrMhk7BLj3qJhXBYsiusKHBr4GoUnIWk3y41
 tw86uqQ+7fgLvonQTthhSnH5Qbj3X3PeOfYBqVDdiOzyRwuLKn/+Jm+7N
 EeIeVeO+uwil5X8HJdLFrFAD2yKvDmo5pi2+EiP7l+R0lurQoZa5PobFa
 Rh4iW7an5Ggp6Y1cI0MbJbaga09p+Lh1XClYcmUoNl5WCLtLJAmCB/kqb
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ig/yaui8
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 e2cedb8386f079af01cd659c22bb43f1acf4d1b1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: e2cedb8386f079af01cd659c22bb43f1acf4d1b1  igc: Restore default Qbv schedule when changing channels

elapsed time: 1586m

configs tested: 117
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                   randconfig-001-20251126    gcc-13.4.0
arc                   randconfig-002-20251126    gcc-11.5.0
arm                               allnoconfig    clang-22
arm                         nhk8815_defconfig    clang-22
arm                          pxa3xx_defconfig    clang-22
arm                   randconfig-001-20251126    clang-22
arm                   randconfig-002-20251126    clang-22
arm                   randconfig-003-20251126    clang-19
arm                   randconfig-004-20251126    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251127    gcc-8.5.0
arm64                 randconfig-002-20251127    clang-22
arm64                 randconfig-003-20251127    gcc-9.5.0
arm64                 randconfig-004-20251127    gcc-14.3.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251127    gcc-15.1.0
csky                  randconfig-002-20251127    gcc-15.1.0
hexagon                           allnoconfig    clang-22
hexagon               randconfig-001-20251126    clang-22
hexagon               randconfig-002-20251126    clang-22
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251127    clang-20
i386        buildonly-randconfig-002-20251127    gcc-14
i386        buildonly-randconfig-003-20251127    clang-20
i386        buildonly-randconfig-004-20251127    gcc-14
i386        buildonly-randconfig-005-20251127    clang-20
i386        buildonly-randconfig-006-20251127    clang-20
i386                  randconfig-001-20251127    gcc-14
i386                  randconfig-002-20251127    gcc-14
i386                  randconfig-003-20251127    clang-20
i386                  randconfig-004-20251127    gcc-12
i386                  randconfig-005-20251127    clang-20
i386                  randconfig-006-20251127    clang-20
i386                  randconfig-007-20251127    clang-20
i386                  randconfig-011-20251127    gcc-13
i386                  randconfig-012-20251127    gcc-14
i386                  randconfig-013-20251127    clang-20
i386                  randconfig-014-20251127    clang-20
i386                  randconfig-015-20251127    gcc-14
i386                  randconfig-016-20251127    clang-20
i386                  randconfig-017-20251127    gcc-14
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251126    gcc-15.1.0
loongarch             randconfig-002-20251126    clang-22
m68k                              allnoconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251126    gcc-11.5.0
nios2                 randconfig-002-20251126    gcc-9.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251126    gcc-8.5.0
parisc                randconfig-002-20251126    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                    ge_imp3a_defconfig    gcc-15.1.0
powerpc                      pmac32_defconfig    clang-22
powerpc               randconfig-001-20251126    gcc-10.5.0
powerpc               randconfig-002-20251126    gcc-8.5.0
powerpc64             randconfig-001-20251126    clang-19
powerpc64             randconfig-002-20251126    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251126    gcc-10.5.0
riscv                 randconfig-002-20251126    clang-22
s390                              allnoconfig    clang-22
s390                          debug_defconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20251126    gcc-8.5.0
s390                  randconfig-002-20251126    gcc-8.5.0
sh                                allnoconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251126    gcc-14.3.0
sh                    randconfig-002-20251126    gcc-11.5.0
sh                           se7712_defconfig    gcc-15.1.0
sh                        sh7757lcr_defconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251126    gcc-8.5.0
sparc                 randconfig-002-20251126    gcc-14.3.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251126    gcc-8.5.0
sparc64               randconfig-002-20251126    clang-22
um                                allnoconfig    clang-22
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251126    clang-19
um                    randconfig-002-20251126    clang-22
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-003-20251127    gcc-14
x86_64                randconfig-004-20251127    gcc-14
x86_64                randconfig-011-20251127    clang-20
x86_64                randconfig-012-20251127    gcc-14
x86_64                randconfig-013-20251127    gcc-14
x86_64                randconfig-014-20251127    gcc-14
x86_64                randconfig-015-20251127    gcc-14
x86_64                randconfig-016-20251127    gcc-14
x86_64                randconfig-071-20251127    gcc-12
x86_64                randconfig-072-20251127    gcc-14
x86_64                randconfig-073-20251127    clang-20
x86_64                randconfig-074-20251127    gcc-14
x86_64                randconfig-075-20251127    gcc-14
x86_64                randconfig-076-20251127    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251126    gcc-14.3.0
xtensa                randconfig-002-20251126    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
