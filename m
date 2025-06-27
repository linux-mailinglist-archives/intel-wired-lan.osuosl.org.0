Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EFAAEAF80
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jun 2025 09:02:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8704419B9;
	Fri, 27 Jun 2025 07:02:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YgdbwAx9jEck; Fri, 27 Jun 2025 07:02:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93762419C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751007743;
	bh=KkX4aU4YYrladTXSPgnLTtEeOKt0WjxhLLpGnRouoX0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=P8YosP7ZYopjVTbOtVHYdebC1rJx5EtHdY1lC55+u8hYvVNv1nJYAIPR/Mu6OyCbp
	 5rSdxcVr6fEyEkTBkijxyJaOCUlqpbRwcPgct6+GDkE5H9dG0Ia+Myb6ochqWKV1aZ
	 W7JcwCa4vaPs0H7CUC4YERFW6hA7RhPz6fN+5oPZ+iud2AvKu7QUOXhIgLCm56naqO
	 W963IsIXUgeku9eMZ0SRxFJHEPeRqQnP/P3jo3BVG+0J4iSWA29IaBtpfDWVkN2s6i
	 /lzS4XiGoMHq5ms+RD1qPEztBG5gKzG+q8OGQhm6Zg95JLlgO2aYhYeR1NBZDzYHa7
	 7QpttIQCNPazg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93762419C0;
	Fri, 27 Jun 2025 07:02:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 939541D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 07:02:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 79A46419BC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 07:02:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 02OxQ6zOEae4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jun 2025 07:02:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7F5FF419B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F5FF419B9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7F5FF419B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 07:02:21 +0000 (UTC)
X-CSE-ConnectionGUID: p9qKlXnUSg6XnZFfD+wJSA==
X-CSE-MsgGUID: lInWJj67R1a3ehF/VPQqXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53396802"
X-IronPort-AV: E=Sophos;i="6.16,269,1744095600"; d="scan'208";a="53396802"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 00:02:17 -0700
X-CSE-ConnectionGUID: /3NBvwIoSGW9yZM0toMFEg==
X-CSE-MsgGUID: C2+BjgBVQFq+kWbNx2DmJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,269,1744095600"; d="scan'208";a="152472525"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 27 Jun 2025 00:02:16 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uV36D-000VtS-2K
 for intel-wired-lan@lists.osuosl.org; Fri, 27 Jun 2025 07:02:13 +0000
Date: Fri, 27 Jun 2025 15:01:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506271548.XzDWOnqK-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751007741; x=1782543741;
 h=date:from:to:subject:message-id;
 bh=Q3AX13sc3ZKgrbFxbMIp0zObdSCVOsjVMwZaH5ckAsI=;
 b=ilpOQFsEBoD3j7pVi0JHjc5Qdg2Mtx0xQwng/fp0Ypcyv3oKnOjxC2zH
 lggZlRkpN4f1RjvxlU3q3RNmDGnsKxKy/V07x+yiKwGQK2zVCdlk8MLR/
 U42z3Bq9RfVVP9no6t40YhwcYTZ8nSetJ+A5lzIYiXI8ppHHuDvqNdorf
 uDcZKGAxPSdJQt12dJgNdW/C68I0yk+M3YvBKy7UEhQIqi11Ml/WVc5m9
 fVU6xtHi5sLNeUAsNE0wTKI0GsF5YSqA1WsP7Qd86OkUQ5ogwNa7zk0PU
 aLEYrmntzKlU8AvLmERTYYr447uuhqXuMdNNXl5Qn8m2diPlTZ/Lla7Zg
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ilpOQFsE
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 b814e3c0e14474cf3f4d541c5c3ad76cd221dc72
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: b814e3c0e14474cf3f4d541c5c3ad76cd221dc72  idpf: add XDP RSS hash hint

elapsed time: 736m

configs tested: 142
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
arc                              allmodconfig    clang-19
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                          axs103_defconfig    clang-21
arc                         haps_hs_defconfig    gcc-15.1.0
arc                   randconfig-001-20250627    gcc-8.5.0
arc                   randconfig-002-20250627    gcc-12.4.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    clang-21
arm                               allnoconfig    gcc-15.1.0
arm                              allyesconfig    clang-19
arm                         at91_dt_defconfig    clang-21
arm                       multi_v4t_defconfig    gcc-15.1.0
arm                   randconfig-001-20250627    gcc-15.1.0
arm                   randconfig-002-20250627    gcc-10.5.0
arm                   randconfig-003-20250627    clang-21
arm                   randconfig-004-20250627    gcc-8.5.0
arm                       spear13xx_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250627    clang-17
arm64                 randconfig-002-20250627    gcc-10.5.0
arm64                 randconfig-003-20250627    gcc-12.3.0
arm64                 randconfig-004-20250627    clang-19
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250627    clang-21
csky                  randconfig-002-20250627    clang-21
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-21
hexagon                           allnoconfig    gcc-15.1.0
hexagon                          allyesconfig    clang-19
hexagon               randconfig-001-20250627    clang-21
hexagon               randconfig-002-20250627    clang-21
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20250627    gcc-12
i386        buildonly-randconfig-002-20250627    gcc-12
i386        buildonly-randconfig-003-20250627    gcc-12
i386        buildonly-randconfig-004-20250627    gcc-12
i386        buildonly-randconfig-005-20250627    clang-20
i386        buildonly-randconfig-005-20250627    gcc-12
i386        buildonly-randconfig-006-20250627    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch             randconfig-001-20250627    clang-21
loongarch             randconfig-002-20250627    clang-21
m68k                             alldefconfig    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                           virt_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250627    clang-21
nios2                 randconfig-002-20250627    clang-21
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250627    clang-21
parisc                randconfig-002-20250627    clang-21
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    gcc-15.1.0
powerpc                        cell_defconfig    clang-21
powerpc                   currituck_defconfig    gcc-15.1.0
powerpc                       eiger_defconfig    clang-21
powerpc                   lite5200b_defconfig    clang-21
powerpc                     ppa8548_defconfig    clang-21
powerpc               randconfig-001-20250627    clang-21
powerpc               randconfig-002-20250627    clang-21
powerpc               randconfig-003-20250627    clang-21
powerpc64             randconfig-001-20250627    clang-21
powerpc64             randconfig-002-20250627    clang-21
powerpc64             randconfig-003-20250627    clang-21
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-12
riscv                    nommu_virt_defconfig    clang-21
riscv                    nommu_virt_defconfig    gcc-15.1.0
riscv                 randconfig-001-20250627    gcc-11.5.0
riscv                 randconfig-002-20250627    gcc-11.5.0
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250627    gcc-11.5.0
s390                  randconfig-002-20250627    gcc-11.5.0
s390                       zfcpdump_defconfig    gcc-15.1.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20250627    gcc-11.5.0
sh                    randconfig-002-20250627    gcc-11.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250627    gcc-11.5.0
sparc                 randconfig-002-20250627    gcc-11.5.0
sparc                       sparc32_defconfig    clang-21
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250627    gcc-11.5.0
sparc64               randconfig-002-20250627    gcc-11.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250627    gcc-11.5.0
um                    randconfig-002-20250627    gcc-11.5.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250627    clang-20
x86_64      buildonly-randconfig-002-20250627    clang-20
x86_64      buildonly-randconfig-003-20250627    clang-20
x86_64      buildonly-randconfig-004-20250627    clang-20
x86_64      buildonly-randconfig-005-20250627    clang-20
x86_64      buildonly-randconfig-005-20250627    gcc-12
x86_64      buildonly-randconfig-006-20250627    clang-20
x86_64      buildonly-randconfig-006-20250627    gcc-12
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250627    gcc-11.5.0
xtensa                randconfig-002-20250627    gcc-11.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
