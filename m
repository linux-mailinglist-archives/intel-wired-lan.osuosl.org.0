Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C339C8A1B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 13:38:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D43A284172;
	Thu, 14 Nov 2024 12:37:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qj0HPrAQ--TQ; Thu, 14 Nov 2024 12:37:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B5D58415C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731587876;
	bh=OTCemnuqg0EeujYYJ6vWN/HPYf/05B2o7eax9QvYqXM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GGXn5XiO/WvyfCYXbvG6xhWdXnAKDjFcDt4kfruzNXN13Y/y4whQYUZo3+Ga8/eKy
	 Thv4306TGhMYBbZxDZHh84vzIUXYabWMArdFwqtj1tE8bA7jec+oK35peDMQdIFYpH
	 IY4ADMHYyrPTILBTn+2J082pAaZQkjib87T993QSoxdtq0qjIMg7v+TPUYN1AKH4dE
	 wBAc63EJMVFfA/QBORVNwsF7dqh3K61WYy/aXZ90zA0kAkcaKj6Urcu4KzkQYPXH+j
	 +nAg7Wv6XYxppRTiGW8g92UFRruxvYwA0EpY/4nq+XrcpcQvZIoZqnLTxZJbWNtJxU
	 M16QL+yOsyY5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B5D58415C;
	Thu, 14 Nov 2024 12:37:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B4506C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 12:37:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7969560A8A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 12:37:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lukBPvnvJhBR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 12:37:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4AE0860A5F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AE0860A5F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4AE0860A5F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 12:37:52 +0000 (UTC)
X-CSE-ConnectionGUID: BsyF2ZnLQUelauo2sTTo2g==
X-CSE-MsgGUID: 2YF5ptlbSqKfgVMvek42jA==
X-IronPort-AV: E=McAfee;i="6700,10204,11255"; a="30909436"
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="30909436"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 04:37:52 -0800
X-CSE-ConnectionGUID: CgUrIFK8Q+eIfBmfOj5gfg==
X-CSE-MsgGUID: Meji3EW2QZqhGvBCJDybBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="119124464"
Received: from lkp-server01.sh.intel.com (HELO c7bc087bbc55) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 14 Nov 2024 04:37:51 -0800
Received: from kbuild by c7bc087bbc55 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tBZ6b-00002t-1M
 for intel-wired-lan@lists.osuosl.org; Thu, 14 Nov 2024 12:37:49 +0000
Date: Thu, 14 Nov 2024 20:36:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411142045.lZEwrAFR-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731587873; x=1763123873;
 h=date:from:to:subject:message-id;
 bh=Dm7qyjrpf+tiVRU8v3d4nQXWRaYogCRIjs7u6SdufXI=;
 b=hRROVUd+uBKGsn4QjWKHLgrrr6i0LhKThkeqqzMy5NxEW4/BrVstT35H
 xrgQw8ZuWCIW4b3XmLe+MBZRAgOQl/QkyEGC84yJZY0CkZCdt0Jxg1ual
 iAJ06bgNGStoRdS+K4T1/O/ESnnTIr91wyq6HCk8Uscnizx2czTcP+Doj
 P2U9SmBX09NxDdUNb7QcR0L7DrmTfkb8j4PqEKHV8PfDsY4f6SyAr0cA6
 iCvbJLmn9/cRCyI38Ce20dVCYR+ZNj7nIBP1TqFLF6OdRuWacAv2ZcEY3
 Xta+d/ATbuZ1bdT4DJ8XV5VipUtwreDpJ5fePF3d2GTlgnOtGE39IKMh7
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hRROVUd+
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 e7b9f2704ea2f22537e0dd47edbe29a717c5c5ba
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: e7b9f2704ea2f22537e0dd47edbe29a717c5c5ba  i40e: Fix handling changed priv flags

elapsed time: 913m

configs tested: 112
configs skipped: 20

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                                 defconfig    gcc-13.2.0
arc                   randconfig-001-20241114    gcc-13.2.0
arc                   randconfig-002-20241114    gcc-13.2.0
arm                              alldefconfig    gcc-14.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.2.0
arm                           imxrt_defconfig    clang-20
arm                            mmp2_defconfig    gcc-14.2.0
arm                   randconfig-001-20241114    gcc-14.2.0
arm                   randconfig-002-20241114    gcc-14.2.0
arm                   randconfig-003-20241114    gcc-14.2.0
arm                   randconfig-004-20241114    clang-14
arm                           tegra_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20241114    clang-20
arm64                 randconfig-002-20241114    gcc-14.2.0
arm64                 randconfig-003-20241114    gcc-14.2.0
arm64                 randconfig-004-20241114    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20241114    gcc-14.2.0
csky                  randconfig-002-20241114    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
hexagon               randconfig-001-20241114    clang-20
hexagon               randconfig-002-20241114    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241114    clang-19
i386        buildonly-randconfig-002-20241114    gcc-11
i386        buildonly-randconfig-003-20241114    gcc-12
i386        buildonly-randconfig-004-20241114    gcc-12
i386        buildonly-randconfig-005-20241114    gcc-12
i386        buildonly-randconfig-006-20241114    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20241114    gcc-12
i386                  randconfig-002-20241114    gcc-12
i386                  randconfig-003-20241114    clang-19
i386                  randconfig-004-20241114    gcc-12
i386                  randconfig-005-20241114    clang-19
i386                  randconfig-006-20241114    clang-19
i386                  randconfig-011-20241114    clang-19
i386                  randconfig-012-20241114    gcc-12
i386                  randconfig-013-20241114    clang-19
i386                  randconfig-015-20241114    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20241114    gcc-14.2.0
loongarch             randconfig-002-20241114    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                       m5275evb_defconfig    gcc-14.2.0
m68k                        m5307c3_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20241114    gcc-14.2.0
nios2                 randconfig-002-20241114    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20241114    gcc-14.2.0
parisc                randconfig-002-20241114    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-20
powerpc               randconfig-001-20241114    gcc-14.2.0
powerpc               randconfig-002-20241114    clang-14
powerpc               randconfig-003-20241114    gcc-14.2.0
powerpc64             randconfig-001-20241114    gcc-14.2.0
powerpc64             randconfig-002-20241114    clang-20
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                 randconfig-001-20241114    gcc-14.2.0
riscv                 randconfig-002-20241114    clang-14
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20241114    gcc-14.2.0
s390                  randconfig-002-20241114    clang-20
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20241114    gcc-14.2.0
sh                    randconfig-002-20241114    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
