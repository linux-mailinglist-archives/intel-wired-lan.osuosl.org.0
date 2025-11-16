Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 331D7C613D9
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Nov 2025 12:47:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9B4640C99;
	Sun, 16 Nov 2025 11:47:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id by2WJayLQyi5; Sun, 16 Nov 2025 11:47:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2400E40C9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763293669;
	bh=PKxcNFU74gwnHB2AI49rst6jDutE7dggVEpPCKrWmSU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0iN1f5kFWK8HouYFyCRUSbqovo6aIBXORbSm9laeDT1ps9w7vRN79nfLQNDKFd1ty
	 VSN9ipEqQ4/LmtVr9hcIejdfkTVjLAp+9l/00KnXKCYl9KeK4pkcE2v5jFepYCw7wj
	 AJ8P6gvodbol/s4rO+zJPFGX4RphvynMExu10j/47sYgQ5KOu4wjuEyGw/bKj/w+Ov
	 KsRH9+xJYLgpvST2BGJ97M0l4oylOIS09fKrsJqdsMrC15WGWu5ka1moPFCtZ7FiWR
	 bCOkqN6tESKswb2CCgW/k+lKlzhdLARo8wqiwieTKiqrHlmR5zdESC8hDml+BGOGir
	 GaTvdFtgW/dDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2400E40C9D;
	Sun, 16 Nov 2025 11:47:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C0670158
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 11:47:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9F26E81E80
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 11:47:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mKBOZQrg7AiC for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Nov 2025 11:47:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 839B981E5C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 839B981E5C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 839B981E5C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 11:47:45 +0000 (UTC)
X-CSE-ConnectionGUID: FNWlkV6rRDa0ffD3IK7ULA==
X-CSE-MsgGUID: R8EMpFBjRGGJD9jHcjMuIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11614"; a="76420089"
X-IronPort-AV: E=Sophos;i="6.19,309,1754982000"; d="scan'208";a="76420089"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 03:47:45 -0800
X-CSE-ConnectionGUID: rtM9xQF3TMiEbqy3qyOa1A==
X-CSE-MsgGUID: cECbhpTeQ0KNNxstT5tK3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,309,1754982000"; d="scan'208";a="220856781"
Received: from lkp-server01.sh.intel.com (HELO 7b01c990427b) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 16 Nov 2025 03:47:44 -0800
Received: from kbuild by 7b01c990427b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vKbEM-0008jV-0b
 for intel-wired-lan@lists.osuosl.org; Sun, 16 Nov 2025 11:47:42 +0000
Date: Sun, 16 Nov 2025 19:47:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511161925.Ek4JrIM9-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763293666; x=1794829666;
 h=date:from:to:subject:message-id;
 bh=n34b9pMyHv4U3Clvlb1FxtR28zTzPyLtlX3hE17DfxE=;
 b=a2HWrQ9lI2zsCpoRfzBes/mvD953jmTUQyZdkkWZK63X/HsyC9FLQwwR
 1kIVom/gzkK0uPaBqiu6vfMOBGRXgxmzRH3G+bP/H7sh/3qgwuczJfk+E
 BmE40KVjfBVspmLFAtduOT8jscGtWsLf42VLF9AkxmU0j/T98Xa20dwQc
 KF4EbRMIsYRk8GoOlSau4j6tVAkN+FfBtHoNMgkF4S0Y+s3ZfiBdRn1py
 9O6MmhN/dVz0nOpn/6OmhzVZh0oyELdMbMAeYip2B5+BNOFyMcWRsp8ZW
 uBOfcnIxkdw63cAvShml2whYDB+7GcKcyvo26HOUO9y1wcTLM1Vr0+QfH
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a2HWrQ9l
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 87dc50f1456678f1250c535f68ea99b7b8567676
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
branch HEAD: 87dc50f1456678f1250c535f68ea99b7b8567676  i40e: fix src IP mask checks and memcpy argument names in cloud filter

elapsed time: 2193m

configs tested: 103
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20251115    gcc-13.4.0
arc                   randconfig-002-20251115    gcc-11.5.0
arm                               allnoconfig    clang-22
arm                                 defconfig    clang-22
arm                   randconfig-001-20251115    clang-22
arm                   randconfig-002-20251115    gcc-8.5.0
arm                   randconfig-003-20251115    gcc-10.5.0
arm                   randconfig-004-20251115    clang-22
arm                           sama7_defconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20251116    gcc-12.5.0
arm64                 randconfig-002-20251116    gcc-10.5.0
arm64                 randconfig-003-20251116    clang-22
arm64                 randconfig-004-20251116    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20251116    gcc-12.5.0
csky                  randconfig-002-20251116    gcc-15.1.0
hexagon                           allnoconfig    clang-22
hexagon                             defconfig    clang-22
hexagon               randconfig-001-20251116    clang-22
hexagon               randconfig-002-20251116    clang-17
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-002-20251116    clang-20
i386        buildonly-randconfig-003-20251116    clang-20
i386        buildonly-randconfig-004-20251116    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-001-20251116    gcc-14
i386                  randconfig-003-20251116    gcc-14
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251116    gcc-15.1.0
loongarch             randconfig-002-20251116    clang-22
m68k                              allnoconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                  cavium_octeon_defconfig    gcc-15.1.0
mips                      maltaaprp_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251116    gcc-11.5.0
nios2                 randconfig-002-20251116    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                     mpc512x_defconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20251116    clang-20
riscv                 randconfig-002-20251116    gcc-10.5.0
s390                              allnoconfig    clang-22
s390                  randconfig-001-20251116    clang-22
s390                  randconfig-002-20251116    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251116    gcc-13.4.0
sh                    randconfig-002-20251116    gcc-15.1.0
sh                           se7721_defconfig    gcc-15.1.0
sh                   sh7770_generic_defconfig    gcc-15.1.0
sparc                            alldefconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20251116    gcc-8.5.0
sparc                 randconfig-002-20251116    gcc-8.5.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251116    gcc-15.1.0
sparc64               randconfig-002-20251116    clang-22
um                                allnoconfig    clang-22
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251116    clang-17
um                    randconfig-002-20251116    gcc-13
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251116    clang-20
x86_64      buildonly-randconfig-002-20251116    clang-20
x86_64      buildonly-randconfig-003-20251116    clang-20
x86_64      buildonly-randconfig-004-20251116    gcc-13
x86_64      buildonly-randconfig-005-20251116    clang-20
x86_64      buildonly-randconfig-006-20251116    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20251116    gcc-14
x86_64                randconfig-002-20251116    gcc-14
x86_64                randconfig-003-20251116    clang-20
x86_64                randconfig-004-20251116    clang-20
x86_64                randconfig-005-20251116    gcc-12
x86_64                randconfig-006-20251116    clang-20
x86_64                randconfig-071-20251116    clang-20
x86_64                randconfig-072-20251116    clang-20
x86_64                randconfig-073-20251116    clang-20
x86_64                randconfig-074-20251116    clang-20
x86_64                randconfig-075-20251116    clang-20
x86_64                randconfig-076-20251116    gcc-14
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251116    gcc-8.5.0
xtensa                randconfig-002-20251116    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
