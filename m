Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95947AB0138
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 19:19:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36A8E41317;
	Thu,  8 May 2025 17:19:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HWws8Hel8-IM; Thu,  8 May 2025 17:19:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2532141391
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746724769;
	bh=MOIofUtY2gACKOBlqU+Va0aqv46GIWcSuOgUflQqUAA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zstpTkPrsoNq/J2XFVpHVoRNCNAPysX8YBeQcJaLhly5Ikhg7pwQ3nveOHRKT8Yya
	 uatK/0oPJMe9TyiDYIPqnA02Vi/8P5+OXKL1hsAOkBcUdNyhQaa9F0OrEQJ8tXAB+3
	 PCEm0Cbqnt8kbIrjku8V7UYOwMbfFInm2bIi62/QWFNVe38J1O1D8XVsvwJXFeLvvT
	 pA8YnmDXaWPEahLMrURGSnVxI766OEcy0cqxqst09xUYlAmkBO2LTpiOd6WcpJjKTD
	 qCOylPisPO8N+qnCqgcMgap92riG9sI7ZEGAqN6xGrsJNJSRL3cXHMVWNB5SW5zRGu
	 OoMVmB/souADw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2532141391;
	Thu,  8 May 2025 17:19:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1685B1A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 17:19:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F0C5180DF9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 17:19:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rODYvc-O1f59 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 17:19:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1975980BEA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1975980BEA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1975980BEA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 17:19:25 +0000 (UTC)
X-CSE-ConnectionGUID: Q96yKTr3SKqtEEfqL9tVOA==
X-CSE-MsgGUID: ia4B0rmFRLSwdFRrbWMuUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="52336507"
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="52336507"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 10:19:25 -0700
X-CSE-ConnectionGUID: G5w9NJtsSxOWr50XNSGHhg==
X-CSE-MsgGUID: Bd6K646uS/WvNCow9OKDpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="136756937"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 08 May 2025 10:19:25 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uD4u2-000BCu-1q
 for intel-wired-lan@lists.osuosl.org; Thu, 08 May 2025 17:19:22 +0000
Date: Fri, 09 May 2025 01:19:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505090105.B98UMGZV-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746724766; x=1778260766;
 h=date:from:to:subject:message-id;
 bh=aWQp3SS/NkcgrjlMb8e8iS/1Do81oub4k9StdUaVviY=;
 b=IAiYNmjyK7Oa/mbo9udSz8/+DfLOGCEsSTauY8xI9A2Z3cUkGRPAfUF/
 dZ/yqK3A6lTkxglc/CFoUFKkUHRBrwNCdRaRg+AIPijucZUQ9043SQFJK
 YNVqKEUG01ixATG1FO+YP/WCGroPek5ZsXoZ6tuR0T9X5RqGrYM3qY34v
 1LNPKemh7qeiW+oPHS44hLliDcOnaKzOHT+7ykwLBXzRm3KPswnxs525q
 tC21DMKa7ZlA4jXxXAQC3PCwNirOns7PEohA/gxmIsFCyNNXQghbpxVyg
 hrT2yD9uFP4lRxf3R2/5U1GBw81vcsQZhGKlYRO4L9sBDUFv7ToIx2f/I
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IAiYNmjy
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 3b638e65b6c269cce6623f9b96f70b1e90da8cb6
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
branch HEAD: 3b638e65b6c269cce6623f9b96f70b1e90da8cb6  ice: default to TIME_REF instead of TXCO on E825-C

elapsed time: 1446m

configs tested: 102
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                 nsimosci_hs_smp_defconfig    gcc-14.2.0
arc                   randconfig-001-20250508    gcc-8.5.0
arc                   randconfig-002-20250508    gcc-12.4.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                         at91_dt_defconfig    clang-21
arm                   randconfig-001-20250508    clang-17
arm                   randconfig-002-20250508    clang-21
arm                   randconfig-003-20250508    clang-21
arm                   randconfig-004-20250508    gcc-7.5.0
arm                          sp7021_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250508    clang-21
arm64                 randconfig-002-20250508    clang-21
arm64                 randconfig-003-20250508    gcc-8.5.0
arm64                 randconfig-004-20250508    gcc-8.5.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250508    gcc-14.2.0
csky                  randconfig-002-20250508    gcc-12.4.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250508    clang-20
hexagon               randconfig-002-20250508    clang-21
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250508    gcc-14.2.0
loongarch             randconfig-002-20250508    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                       m5275evb_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          eyeq6_defconfig    clang-21
mips                           xway_defconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250508    gcc-14.2.0
nios2                 randconfig-002-20250508    gcc-10.5.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                  or1klitex_defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250508    gcc-9.3.0
parisc                randconfig-002-20250508    gcc-11.5.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-21
powerpc               mpc834x_itxgp_defconfig    clang-21
powerpc                      ppc44x_defconfig    clang-21
powerpc               randconfig-001-20250508    gcc-6.5.0
powerpc               randconfig-002-20250508    clang-21
powerpc               randconfig-003-20250508    gcc-6.5.0
powerpc                     sequoia_defconfig    clang-17
powerpc64             randconfig-001-20250508    clang-21
powerpc64             randconfig-002-20250508    gcc-6.5.0
powerpc64             randconfig-003-20250508    gcc-8.5.0
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250508    clang-16
riscv                 randconfig-002-20250508    gcc-14.2.0
s390                             alldefconfig    gcc-14.2.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250508    gcc-6.5.0
s390                  randconfig-002-20250508    gcc-9.3.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250508    gcc-14.2.0
sh                    randconfig-002-20250508    gcc-10.5.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250508    gcc-13.3.0
sparc                 randconfig-002-20250508    gcc-6.5.0
sparc64               randconfig-001-20250508    gcc-13.3.0
sparc64               randconfig-002-20250508    gcc-5.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250508    clang-21
um                    randconfig-002-20250508    clang-21
x86_64      buildonly-randconfig-001-20250508    clang-20
x86_64      buildonly-randconfig-002-20250508    clang-20
x86_64      buildonly-randconfig-003-20250508    clang-20
x86_64      buildonly-randconfig-004-20250508    clang-20
x86_64      buildonly-randconfig-005-20250508    clang-20
x86_64      buildonly-randconfig-006-20250508    clang-20
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250508    gcc-7.5.0
xtensa                randconfig-002-20250508    gcc-13.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
