Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BECEBA64C1
	for <lists+intel-wired-lan@lfdr.de>; Sun, 28 Sep 2025 01:12:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9FEDB80E2E;
	Sat, 27 Sep 2025 23:12:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vBgz8yIkFPWJ; Sat, 27 Sep 2025 23:12:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9943280E2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759014730;
	bh=TU/wNhaOXFs/ZdmULZksnSk0FoXigNStQtG5vcFOiDQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MIkb/pck0NBQQ3PQ6CFY/OVmRlGLL6k1EXFdmzqMZNVpiOA32z8bzXZtslZVH+pTQ
	 Wy8O0pTwLhDNenUSKTsnejoxso7hn3lRnvViRXSduwhl4HepABqdciNuI/9cJqNwe6
	 CoUMogfjtlNxSEjlpx1sRa9WDrXXCFVMefgjra91m0dOF6H6UScpjuF/zI+PzIwnps
	 Z6bw/txrFGO8pB6jiYDCw8yJ9tI676nTT1t+BN9uy/x25ZHeBPF20PrbAepmNhzQ0W
	 iLXWaFRiBWcz8lZa1lxSfaqf575e0bHEl+LxeWD9VikCmT0/i/aArrwNkeIV0Wvy5K
	 rN++no4Vgw9ng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9943280E2F;
	Sat, 27 Sep 2025 23:12:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E80EF198
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Sep 2025 23:12:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D9AEF405F0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Sep 2025 23:12:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y2WyXe7BARgy for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Sep 2025 23:12:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BA04540360
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA04540360
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA04540360
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Sep 2025 23:12:07 +0000 (UTC)
X-CSE-ConnectionGUID: Q8WsQANZS3mYbxWK7dpgfA==
X-CSE-MsgGUID: n3Nl5S5kT1SwkyemPmEhrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61353099"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61353099"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2025 16:12:08 -0700
X-CSE-ConnectionGUID: k728HdQ+Rji6M83nOLqg9A==
X-CSE-MsgGUID: mQ8snKIiS62P93s3SYMisw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,298,1751266800"; d="scan'208";a="182199881"
Received: from lkp-server02.sh.intel.com (HELO 84c55410ccf6) ([10.239.97.151])
 by orviesa004.jf.intel.com with ESMTP; 27 Sep 2025 16:12:06 -0700
Received: from kbuild by 84c55410ccf6 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v2e5E-0007Oz-0E
 for intel-wired-lan@lists.osuosl.org; Sat, 27 Sep 2025 23:12:04 +0000
Date: Sun, 28 Sep 2025 07:11:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509280724.8kg0QpQ3-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759014728; x=1790550728;
 h=date:from:to:subject:message-id;
 bh=ur5QlDRsLU9dtO6+Le8KROpSjC2+sJfoRryIwRIzQdw=;
 b=RRRSixqqelX+Yr9phsQMxXfvUNeMnx7zMC4l/DtGvcgdfrrs6fxUWlyp
 u2mFFQ8q/PnzLvNg3r+xn/ins5vIH/y4UqjxMCgF/BEpOi10qCFGG8Z/k
 6UvQQ1WdD4HXlKoOAU0OvNPEzMIouFSHGQrI+Bate3U342swOy9fRfp1t
 m7MLXRl7gT7ubx8t1vJR70MfTO7T6be6voHaOPEb49pt8dgu6/UkM4aTS
 PDFtNFTsV9rYfxl8/XuhuaT6IzxNKw8NQp0CVWRCHa75fmIBig39KnFP8
 fuOP9ihg1EFJv2OOiuJwW1V8ZA9aseurqSueIQt02Im17m+F5CGruAXdK
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RRRSixqq
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 f4f8769193be440ca73723db45abbcb519ebf2c8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: f4f8769193be440ca73723db45abbcb519ebf2c8  idpf: remove duplicate defines in IDPF_CAP_RSS

elapsed time: 1447m

configs tested: 114
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250927    gcc-10.5.0
arc                   randconfig-002-20250927    gcc-13.4.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                          exynos_defconfig    clang-22
arm                          gemini_defconfig    clang-20
arm                   randconfig-001-20250927    clang-18
arm                   randconfig-002-20250927    clang-16
arm                   randconfig-003-20250927    gcc-8.5.0
arm                   randconfig-004-20250927    gcc-10.5.0
arm                        spear3xx_defconfig    clang-17
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250927    gcc-8.5.0
arm64                 randconfig-002-20250927    gcc-11.5.0
arm64                 randconfig-003-20250927    clang-22
arm64                 randconfig-004-20250927    gcc-9.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250927    gcc-15.1.0
csky                  randconfig-002-20250927    gcc-13.4.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250927    clang-22
hexagon               randconfig-002-20250927    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20250927    clang-20
i386        buildonly-randconfig-002-20250927    gcc-14
i386        buildonly-randconfig-003-20250927    clang-20
i386        buildonly-randconfig-004-20250927    clang-20
i386        buildonly-randconfig-005-20250927    gcc-12
i386        buildonly-randconfig-006-20250927    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250927    gcc-15.1.0
loongarch             randconfig-002-20250927    clang-18
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250927    gcc-9.5.0
nios2                 randconfig-002-20250927    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250927    gcc-9.5.0
parisc                randconfig-002-20250927    gcc-11.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                   lite5200b_defconfig    clang-22
powerpc               randconfig-001-20250927    gcc-13.4.0
powerpc               randconfig-002-20250927    clang-22
powerpc               randconfig-003-20250927    gcc-8.5.0
powerpc64             randconfig-001-20250927    clang-22
powerpc64             randconfig-002-20250927    gcc-15.1.0
powerpc64             randconfig-003-20250927    gcc-12.5.0
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250927    clang-22
riscv                 randconfig-002-20250927    gcc-15.1.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                          debug_defconfig    gcc-15.1.0
s390                  randconfig-001-20250927    clang-22
s390                  randconfig-002-20250927    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250927    gcc-15.1.0
sh                    randconfig-002-20250927    gcc-15.1.0
sh                          rsk7264_defconfig    gcc-15.1.0
sparc                            alldefconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250927    gcc-11.5.0
sparc                 randconfig-002-20250927    gcc-11.5.0
sparc64               randconfig-001-20250927    gcc-15.1.0
sparc64               randconfig-002-20250927    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20250927    gcc-14
um                    randconfig-002-20250927    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250927    gcc-14
x86_64      buildonly-randconfig-002-20250927    clang-20
x86_64      buildonly-randconfig-003-20250927    clang-20
x86_64      buildonly-randconfig-004-20250927    gcc-14
x86_64      buildonly-randconfig-005-20250927    gcc-14
x86_64      buildonly-randconfig-006-20250927    clang-20
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250927    gcc-8.5.0
xtensa                randconfig-002-20250927    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
