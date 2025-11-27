Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA57C8C6E5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Nov 2025 01:37:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C17C760F1C;
	Thu, 27 Nov 2025 00:37:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8FNeLBP9kGKr; Thu, 27 Nov 2025 00:37:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EEF20612CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764203856;
	bh=PH6BrAXer6CiIhfBY0arS8xULc8PB+UAKqZBD5XZVK8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TyujMYURBa/Pw0q8NgdNAZ28zt8yXyT7luCyd5rpo+fww5wgeABh/dEer6FCchH7F
	 ctsmQq0SZzvWmY0t1RKvnAvCmZ7sDwMc+JR9hca52vm6bVv1KaOpPryxDPH3naN3+V
	 6WJ7tW26bIA4Bj6yUV856SLH54Yn6PnAghcx44omsSIBYVi2Qa69IW0tl95JV0YlYH
	 ZPjOYac7VArnXMjBujwpIA7toCEhLqTbLNMUty3WcM75RW/+sMlmTDfcUeAwSpeE7h
	 opAsd16gbnerSe3FNTkKBD6Qsq2LLY5k5mHts+aSS9HypKzg95wOCI5PyOuQC1cCKl
	 VGB1EKK0cMf/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EEF20612CD;
	Thu, 27 Nov 2025 00:37:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2DE7C2A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 00:37:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2036740EBE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 00:37:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6hzwVmTSW-0X for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Nov 2025 00:37:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1BCCC40E82
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1BCCC40E82
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1BCCC40E82
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 00:37:32 +0000 (UTC)
X-CSE-ConnectionGUID: la7nL82GR8StvIqEBQgPsw==
X-CSE-MsgGUID: 6PZwGemORpy6peqAiVCeyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="66196395"
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="66196395"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 16:37:32 -0800
X-CSE-ConnectionGUID: 2tmo+NKVSqGV0Occ50IspQ==
X-CSE-MsgGUID: 3kzVUJuuRA26DLPn+Ru//Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="230362763"
Received: from lkp-server01.sh.intel.com (HELO 4664bbef4914) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 26 Nov 2025 16:37:31 -0800
Received: from kbuild by 4664bbef4914 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vOQ0m-000000003Vc-3NrO
 for intel-wired-lan@lists.osuosl.org; Thu, 27 Nov 2025 00:37:28 +0000
Date: Thu, 27 Nov 2025 08:37:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511270815.TqvxWgea-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764203854; x=1795739854;
 h=date:from:to:subject:message-id;
 bh=LvRPxd1ey0iuhq7qYFjgv9FeKHkTZQw6h+FNGT6h3H8=;
 b=BE1++LOxBpG15GMDf0wwdRFhJCUpz/tU0Pmn7ZOec3lHZ20dbLtEZtU8
 +CPfi7VQgL3222q0f8kX2/YiqVnBrDlKnF5H3a9PSwWUzgLn7mL69Ur9r
 P2xT8w3LvLdePr1ip2i/M6quXe9gVxMhldFpoKdD4GUo104P61Q7FG3lN
 BORTChE4NWQi6Mdbrd9wcgJxGxdYF/zqAXRqtcf23tgMOQ96g0Z2UMWF0
 ctNg4Fa/giPruoOkGXwZSOacFNJPV3Ky0Rcpfhk+E+bf99kipZhvGWOVw
 ZFbhqxWhuS8xkUYDPt7kUjqPygKxWjlxvjewOxVkswaBAGPA83smQrb2J
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BE1++LOx
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 e2051196d8f7544d25e327b4a96853c2db03359c
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
branch HEAD: e2051196d8f7544d25e327b4a96853c2db03359c  iavf: clarify VLAN add/delete log messages and lower log level

elapsed time: 1502m

configs tested: 104
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                   randconfig-001-20251126    gcc-13.4.0
arc                   randconfig-002-20251126    gcc-11.5.0
arm                               allnoconfig    clang-22
arm                         axm55xx_defconfig    clang-22
arm                          collie_defconfig    gcc-15.1.0
arm                       imx_v4_v5_defconfig    clang-22
arm                          ixp4xx_defconfig    gcc-15.1.0
arm                   randconfig-001-20251126    clang-22
arm                   randconfig-002-20251126    clang-22
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
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251126    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
m68k                            q40_defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251126    gcc-8.5.0
parisc                randconfig-002-20251126    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20251126    gcc-10.5.0
powerpc               randconfig-002-20251126    gcc-8.5.0
powerpc                    socrates_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20251126    clang-19
powerpc64             randconfig-002-20251126    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251126    gcc-10.5.0
riscv                 randconfig-002-20251126    clang-22
s390                              allnoconfig    clang-22
s390                                defconfig    clang-22
s390                  randconfig-001-20251126    gcc-8.5.0
s390                  randconfig-002-20251126    gcc-8.5.0
sh                                allnoconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                         ecovec24_defconfig    gcc-15.1.0
sh                    randconfig-001-20251126    gcc-14.3.0
sh                    randconfig-002-20251126    gcc-11.5.0
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
x86_64      buildonly-randconfig-001-20251126    clang-20
x86_64      buildonly-randconfig-002-20251126    gcc-14
x86_64      buildonly-randconfig-003-20251126    clang-20
x86_64      buildonly-randconfig-004-20251126    clang-20
x86_64      buildonly-randconfig-005-20251126    gcc-14
x86_64      buildonly-randconfig-006-20251126    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-011-20251127    clang-20
x86_64                randconfig-012-20251127    gcc-14
x86_64                randconfig-013-20251127    gcc-14
x86_64                randconfig-014-20251127    gcc-14
x86_64                randconfig-015-20251127    gcc-14
x86_64                randconfig-016-20251127    gcc-14
x86_64                randconfig-071-20251127    gcc-12
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251126    gcc-14.3.0
xtensa                randconfig-002-20251126    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
