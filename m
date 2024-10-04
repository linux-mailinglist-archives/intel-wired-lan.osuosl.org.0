Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FFB98FC7F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 05:12:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 774C7810B6;
	Fri,  4 Oct 2024 03:12:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cIo-SQ_czd8G; Fri,  4 Oct 2024 03:12:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DD8981121
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728011527;
	bh=hIpssrodfMcA3nuGxO1zC6SC/flbDEP6liD0NMs4whQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XWK0A5F+K/nOL/tgzdZAo3m/UpcgItNAJIz2SZ/+IzKorQCq5+EnchN7rs4zpkmEK
	 D56XnWTIxPd2ZTmndrpsj8fRkvcxzOcf7DPZQJBLqjX7BywyirqYoanwrA+NnY775W
	 9NAOb3xb2YfvgV4P/LGryHXxP/AyH5ynb8qvaMmS1DGgF2fQ8k+z9nQ91Zg7ijePWM
	 GgOre3SFOZCgq9WZb8SzKecA/um5f0JkqblXlWup8lDJ+oaNRqW6MQE/di1bvdqCkX
	 RaGF3zMoQ78PrMNWfUINdy14jj98u1RsOINlj5ELVJ8kODwm3Pr73SdIvoaBY3VZs7
	 RMLAfnsilscww==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DD8981121;
	Fri,  4 Oct 2024 03:12:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A8F921BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 03:12:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 13A5C4012A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 03:12:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3R3Pc04ZQJvN for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 03:12:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7F04140407
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F04140407
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F04140407
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 03:12:01 +0000 (UTC)
X-CSE-ConnectionGUID: y+GFVFTtQwiSi42qm5/22A==
X-CSE-MsgGUID: hogBpnb/R2abR6fQedvcSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="38359680"
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="38359680"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 20:12:01 -0700
X-CSE-ConnectionGUID: +6G42IiGSieyin1lMj4mpA==
X-CSE-MsgGUID: /qPob6+3TaeATnGPllCrHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="75004781"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 03 Oct 2024 20:12:00 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1swYjW-0001A8-05
 for intel-wired-lan@lists.osuosl.org; Fri, 04 Oct 2024 03:11:58 +0000
Date: Fri, 04 Oct 2024 11:11:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410041126.E3AwJ2XR-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728011522; x=1759547522;
 h=date:from:to:subject:message-id;
 bh=OC1nveaKrjsfA0JXyEK9MELUw+XKSnwen77x3XW7C+k=;
 b=nAns7bI7NS2afXcnwfD1EHOHpcswlSyLTr0AjPGY9G6eEGw4UWGovY58
 7364XjMAUWm1NbUFnNNW2pWkNVs1zHXxLqEMnRd9OPLonp/VLQjn7sWOp
 mYi/7LUmzLyV5I4TMjQTVs87FXNCyt4k/b/3rDDFZnGaJ2j+UadjNxN04
 mCrfYIAqjPBcZ4yUXWAHFwLylyis3MCcL2SbOhy9Ks5e7io5NOMIOPa4e
 XWuXZnORYGSs15AeuvDUPRSopmZIYm8PHO6L0NWub+M/LvaJjHyQotDbz
 gagd+SrLmlblF+gcYBP0zV0xHI1KzTMF1uCwWGG0ZUUJ/SSypN/rCtdvg
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nAns7bI7
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 67b41b1b985f7117d61bc2e8ab93267cec9514f5
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 67b41b1b985f7117d61bc2e8ab93267cec9514f5  ice: fix PHY Clock Recovery availability check

elapsed time: 1687m

configs tested: 108
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                    allnoconfig    gcc-13.3.0
alpha                    allnoconfig    gcc-14.1.0
alpha                   allyesconfig    clang-20
alpha                      defconfig    gcc-14.1.0
arc                     allmodconfig    clang-20
arc                      allnoconfig    gcc-13.2.0
arc                      allnoconfig    gcc-14.1.0
arc                     allyesconfig    clang-20
arc                        defconfig    gcc-14.1.0
arm                     allmodconfig    clang-20
arm                      allnoconfig    clang-20
arm                      allnoconfig    gcc-14.1.0
arm                     allyesconfig    clang-20
arm                        defconfig    gcc-14.1.0
arm             footbridge_defconfig    gcc-14.1.0
arm                 gemini_defconfig    gcc-14.1.0
arm64                   allmodconfig    clang-20
arm64                    allnoconfig    gcc-14.1.0
arm64                      defconfig    gcc-14.1.0
csky                     allnoconfig    gcc-14.1.0
csky                       defconfig    gcc-14.1.0
hexagon                 allmodconfig    clang-20
hexagon                  allnoconfig    clang-20
hexagon                  allnoconfig    gcc-14.1.0
hexagon                 allyesconfig    clang-20
hexagon                    defconfig    gcc-14.1.0
i386                    allmodconfig    clang-18
i386                    allmodconfig    gcc-12
i386                     allnoconfig    clang-18
i386                     allnoconfig    gcc-12
i386                    allyesconfig    clang-18
i386                    allyesconfig    gcc-12
i386                       defconfig    clang-18
loongarch               allmodconfig    gcc-14.1.0
loongarch                allnoconfig    gcc-14.1.0
loongarch                  defconfig    gcc-14.1.0
m68k                    allmodconfig    gcc-14.1.0
m68k                     allnoconfig    gcc-14.1.0
m68k                    allyesconfig    gcc-14.1.0
m68k                       defconfig    gcc-14.1.0
microblaze              allmodconfig    gcc-14.1.0
microblaze               allnoconfig    gcc-14.1.0
microblaze              allyesconfig    gcc-14.1.0
microblaze                 defconfig    gcc-14.1.0
mips                     allnoconfig    gcc-14.1.0
mips                 ath25_defconfig    gcc-14.1.0
mips                  ip27_defconfig    gcc-14.1.0
mips           maltaup_xpa_defconfig    gcc-14.1.0
mips                  xway_defconfig    gcc-14.1.0
nios2                   alldefconfig    gcc-14.1.0
nios2                    allnoconfig    gcc-14.1.0
nios2                      defconfig    gcc-14.1.0
openrisc                 allnoconfig    clang-20
openrisc                 allnoconfig    gcc-14.1.0
openrisc                allyesconfig    gcc-14.1.0
openrisc                   defconfig    gcc-12
parisc                  allmodconfig    gcc-14.1.0
parisc                   allnoconfig    clang-20
parisc                   allnoconfig    gcc-14.1.0
parisc                  allyesconfig    gcc-14.1.0
parisc                     defconfig    gcc-12
parisc64                   defconfig    gcc-14.1.0
powerpc                 allmodconfig    gcc-14.1.0
powerpc                  allnoconfig    clang-20
powerpc                  allnoconfig    gcc-14.1.0
powerpc                 allyesconfig    gcc-14.1.0
powerpc             mgcoge_defconfig    gcc-14.1.0
powerpc             ppc6xx_defconfig    gcc-14.1.0
powerpc            tqm8541_defconfig    gcc-14.1.0
riscv                   allmodconfig    gcc-14.1.0
riscv                    allnoconfig    clang-20
riscv                    allnoconfig    gcc-14.1.0
riscv                   allyesconfig    gcc-14.1.0
riscv                      defconfig    gcc-12
riscv                      defconfig    gcc-14.1.0
riscv           nommu_virt_defconfig    gcc-14.1.0
s390                    allmodconfig    clang-20
s390                    allmodconfig    gcc-14.1.0
s390                     allnoconfig    clang-20
s390                    allyesconfig    gcc-14.1.0
s390                       defconfig    gcc-12
sh                      allmodconfig    gcc-14.1.0
sh                       allnoconfig    gcc-14.1.0
sh                      allyesconfig    gcc-14.1.0
sh                         defconfig    gcc-12
sh                 rsk7203_defconfig    gcc-14.1.0
sh                  se7780_defconfig    gcc-14.1.0
sh          sh7770_generic_defconfig    gcc-14.1.0
sparc                   allmodconfig    gcc-14.1.0
sparc64                    defconfig    gcc-12
um                      allmodconfig    clang-20
um                       allnoconfig    clang-17
um                       allnoconfig    clang-20
um                      allyesconfig    clang-20
um                         defconfig    gcc-12
um                    i386_defconfig    gcc-12
um                  x86_64_defconfig    gcc-12
x86_64                   allnoconfig    clang-18
x86_64                  allyesconfig    clang-18
x86_64                     defconfig    clang-18
x86_64                     defconfig    gcc-11
x86_64                         kexec    clang-18
x86_64                         kexec    gcc-12
x86_64                      rhel-8.3    gcc-12
x86_64                 rhel-8.3-rust    clang-18
xtensa                   allnoconfig    gcc-14.1.0
xtensa       generic_kc705_defconfig    gcc-14.1.0
xtensa                 iss_defconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
