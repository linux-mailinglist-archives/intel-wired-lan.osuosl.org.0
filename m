Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE90A69B1F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Mar 2025 22:46:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 418FD412CE;
	Wed, 19 Mar 2025 21:46:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hj1_tI0MKJow; Wed, 19 Mar 2025 21:46:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D77A3412BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742420760;
	bh=CAHlmuddxsA2I3bM1rj8DiMmVhntr9fxvUfktUpdVRI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QJhhT1Ov2p+vIhCWYHC/HXg37iqh4830BkJodpOaPmOfcYWTs2QA4RDskJmPRyqo5
	 nK1RxKnrixwvpmqcxJD/WYcVGI1Ycj9MsayKEEcRkOU4e+oGadw9tUgsXnqCWDl4fI
	 FIhD6nTU7reLX2R2I47cYeewB7MM82LwqgB3J73gWheIN+FojHPKpfEwzWCINvPFEL
	 lXp/PaFHAjlB0nd+a3SN3L5F9Qw1PtLaFByZCjbo97taqATPiq+5dHSHHZX+KXBKZn
	 ny4ZGB86dIKJzoEroHb4GDGUu1/eQRsap7zH6N78qjfmhdIBXWVimdTSdvQMRWQYR/
	 UuwbPx2Vl4H6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D77A3412BF;
	Wed, 19 Mar 2025 21:45:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 28D511A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 21:45:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0A9B2412BB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 21:45:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MKH2Bv0ygqM6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 21:45:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4193340CE8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4193340CE8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4193340CE8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 21:45:55 +0000 (UTC)
X-CSE-ConnectionGUID: EuxbIOMdQIO4EPaoUBAf2A==
X-CSE-MsgGUID: d+5G37wxQ0eUeLgbC2qTnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="43507400"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="43507400"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 14:45:55 -0700
X-CSE-ConnectionGUID: LgveRjD4TAe5vwGEH3Ztwg==
X-CSE-MsgGUID: AWhV4DPjT9yYGIGzrgfo5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="122755823"
Received: from lkp-server02.sh.intel.com (HELO a4747d147074) ([10.239.97.151])
 by orviesa010.jf.intel.com with ESMTP; 19 Mar 2025 14:45:54 -0700
Received: from kbuild by a4747d147074 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tv1EV-000Fge-2u
 for intel-wired-lan@lists.osuosl.org; Wed, 19 Mar 2025 21:45:51 +0000
Date: Thu, 20 Mar 2025 05:45:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503200524.xm3m8a0I-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742420756; x=1773956756;
 h=date:from:to:subject:message-id;
 bh=t8uiLUNR2kF3tCTZ7w6wkY6YmQFNSHBL+sLBebGR4tc=;
 b=eKHGpbVwXRDGGh4inWbEQzGm5Yos1sTIhqkyE3Ju/7sIQXSkSeTT9HFp
 r9m90N61SYzZDakDse8h2TGE2ZO0DX/Pw5CZ9GebA7oUi5/ZMv2DdTEXI
 GoFPakGXX04GoAVusaix0//b7ZrdiJz5TXCzqh3Qzv3yyWVzLTtDNFm2w
 3ZRWoZGf7f+TZAgJqitHk+4UINWwxeRNi9fggWHoprRY0X8UPM36GMI1F
 Hke8gDCMk4ehXrDAQjQP+ey7FZBlZv+MsWrXg+jZhg1SvwiBk8yQEnmtp
 GLsxQoW3JprmNYLn2LFfog8M3qQwRkL96qioQOnBilakTLK2gbrbzuqsI
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eKHGpbVw
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 680811c67906191b237bbafe7dabbbad64649b39
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 680811c67906191b237bbafe7dabbbad64649b39  idpf: check error for register_netdev() on init

elapsed time: 1443m

configs tested: 228
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-6.5.0
alpha                            allyesconfig    gcc-9.3.0
alpha                               defconfig    gcc-7.5.0
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-8.5.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-14.2.0
arc                                 defconfig    gcc-14.2.0
arc                            hsdk_defconfig    gcc-10.5.0
arc                   randconfig-001-20250319    gcc-14.2.0
arc                   randconfig-002-20250319    gcc-14.2.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-8.5.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-6.5.0
arm                     am200epdkit_defconfig    gcc-9.3.0
arm                         bcm2835_defconfig    gcc-10.5.0
arm                                 defconfig    clang-14
arm                   randconfig-001-20250319    clang-18
arm                   randconfig-002-20250319    clang-21
arm                   randconfig-003-20250319    clang-20
arm                   randconfig-004-20250319    clang-16
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-8.5.0
arm64                               defconfig    gcc-6.5.0
arm64                 randconfig-001-20250319    gcc-14.2.0
arm64                 randconfig-002-20250319    gcc-7.5.0
arm64                 randconfig-003-20250319    gcc-12.3.0
arm64                 randconfig-004-20250319    gcc-7.5.0
csky                              allnoconfig    gcc-9.3.0
csky                                defconfig    gcc-12.4.0
csky                  randconfig-001-20250319    gcc-14.2.0
csky                  randconfig-001-20250320    gcc-12.4.0
csky                  randconfig-002-20250319    gcc-10.5.0
csky                  randconfig-002-20250320    gcc-12.4.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    clang-21
hexagon               randconfig-001-20250319    clang-21
hexagon               randconfig-001-20250320    gcc-12.4.0
hexagon               randconfig-002-20250319    clang-16
hexagon               randconfig-002-20250320    gcc-12.4.0
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250319    gcc-12
i386        buildonly-randconfig-002-20250319    gcc-12
i386        buildonly-randconfig-003-20250319    gcc-12
i386        buildonly-randconfig-004-20250319    clang-20
i386        buildonly-randconfig-005-20250319    gcc-12
i386        buildonly-randconfig-006-20250319    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250320    clang-20
i386                  randconfig-002-20250320    clang-20
i386                  randconfig-003-20250320    clang-20
i386                  randconfig-004-20250320    clang-20
i386                  randconfig-005-20250320    clang-20
i386                  randconfig-006-20250320    clang-20
i386                  randconfig-007-20250320    clang-20
loongarch                        allmodconfig    gcc-12.4.0
loongarch                         allnoconfig    gcc-13.3.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20250319    gcc-14.2.0
loongarch             randconfig-001-20250320    gcc-12.4.0
loongarch             randconfig-002-20250319    gcc-14.2.0
loongarch             randconfig-002-20250320    gcc-12.4.0
m68k                             allmodconfig    gcc-12.4.0
m68k                             allmodconfig    gcc-8.5.0
m68k                              allnoconfig    gcc-5.5.0
m68k                             allyesconfig    gcc-12.4.0
m68k                             allyesconfig    gcc-6.5.0
m68k                                defconfig    gcc-8.5.0
m68k                       m5249evb_defconfig    gcc-14.2.0
m68k                        m5307c3_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-12.4.0
microblaze                       allmodconfig    gcc-9.3.0
microblaze                        allnoconfig    gcc-11.5.0
microblaze                       allyesconfig    gcc-12.4.0
microblaze                       allyesconfig    gcc-9.3.0
microblaze                          defconfig    gcc-8.5.0
mips                              allnoconfig    gcc-10.5.0
mips                           gcw0_defconfig    clang-14
mips                       lemote2f_defconfig    gcc-5.5.0
mips                    maltaup_xpa_defconfig    gcc-14.2.0
mips                        omega2p_defconfig    gcc-10.5.0
mips                        vocore2_defconfig    clang-15
nios2                             allnoconfig    gcc-8.5.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250319    gcc-14.2.0
nios2                 randconfig-001-20250320    gcc-12.4.0
nios2                 randconfig-002-20250319    gcc-10.5.0
nios2                 randconfig-002-20250320    gcc-12.4.0
openrisc                         alldefconfig    gcc-14.2.0
openrisc                          allnoconfig    clang-15
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-5.5.0
parisc                            allnoconfig    clang-15
parisc                           allyesconfig    gcc-9.3.0
parisc                              defconfig    gcc-12
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20250319    gcc-10.5.0
parisc                randconfig-001-20250320    gcc-12.4.0
parisc                randconfig-002-20250319    gcc-5.5.0
parisc                randconfig-002-20250320    gcc-12.4.0
parisc64                            defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-10.5.0
powerpc                           allnoconfig    clang-15
powerpc                          allyesconfig    clang-21
powerpc                   bluestone_defconfig    clang-21
powerpc                        cell_defconfig    gcc-8.5.0
powerpc                     powernv_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250319    gcc-9.3.0
powerpc               randconfig-001-20250320    gcc-12.4.0
powerpc               randconfig-002-20250319    clang-21
powerpc               randconfig-002-20250320    gcc-12.4.0
powerpc               randconfig-003-20250319    clang-21
powerpc               randconfig-003-20250320    gcc-12.4.0
powerpc64             randconfig-001-20250319    clang-20
powerpc64             randconfig-001-20250320    gcc-12.4.0
powerpc64             randconfig-002-20250319    gcc-5.5.0
powerpc64             randconfig-002-20250320    gcc-12.4.0
powerpc64             randconfig-003-20250319    clang-21
powerpc64             randconfig-003-20250320    gcc-12.4.0
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    clang-15
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-21
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250319    clang-20
riscv                 randconfig-001-20250320    gcc-9.3.0
riscv                 randconfig-002-20250319    clang-17
riscv                 randconfig-002-20250320    gcc-9.3.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-9.3.0
s390                              allnoconfig    clang-15
s390                             allyesconfig    gcc-13.2.0
s390                             allyesconfig    gcc-9.3.0
s390                                defconfig    clang-15
s390                                defconfig    gcc-12
s390                  randconfig-001-20250319    gcc-11.5.0
s390                  randconfig-001-20250320    gcc-9.3.0
s390                  randconfig-002-20250319    gcc-8.5.0
s390                  randconfig-002-20250320    gcc-9.3.0
sh                               allmodconfig    gcc-14.2.0
sh                               allmodconfig    gcc-9.3.0
sh                                allnoconfig    gcc-10.5.0
sh                               allyesconfig    gcc-14.2.0
sh                               allyesconfig    gcc-9.3.0
sh                                  defconfig    gcc-11.5.0
sh                                  defconfig    gcc-12
sh                         ecovec24_defconfig    gcc-10.5.0
sh                    randconfig-001-20250319    gcc-11.5.0
sh                    randconfig-001-20250320    gcc-9.3.0
sh                    randconfig-002-20250319    gcc-14.2.0
sh                    randconfig-002-20250320    gcc-9.3.0
sh                        sh7757lcr_defconfig    gcc-9.3.0
sh                            shmin_defconfig    gcc-10.5.0
sh                            titan_defconfig    gcc-10.5.0
sh                          urquell_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-6.5.0
sparc                            allmodconfig    gcc-9.3.0
sparc                             allnoconfig    gcc-6.5.0
sparc                 randconfig-001-20250319    gcc-6.5.0
sparc                 randconfig-001-20250320    gcc-9.3.0
sparc                 randconfig-002-20250319    gcc-13.3.0
sparc                 randconfig-002-20250320    gcc-9.3.0
sparc64                             defconfig    gcc-10.5.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250319    gcc-14.2.0
sparc64               randconfig-001-20250320    gcc-9.3.0
sparc64               randconfig-002-20250319    gcc-14.2.0
sparc64               randconfig-002-20250320    gcc-9.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-15
um                               allyesconfig    gcc-12
um                                  defconfig    clang-21
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250319    gcc-12
um                    randconfig-001-20250320    gcc-9.3.0
um                    randconfig-002-20250319    gcc-11
um                    randconfig-002-20250320    gcc-9.3.0
um                           x86_64_defconfig    clang-15
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250319    clang-20
x86_64      buildonly-randconfig-001-20250320    clang-20
x86_64      buildonly-randconfig-002-20250319    clang-20
x86_64      buildonly-randconfig-002-20250320    clang-20
x86_64      buildonly-randconfig-003-20250319    gcc-12
x86_64      buildonly-randconfig-003-20250320    clang-20
x86_64      buildonly-randconfig-004-20250319    gcc-11
x86_64      buildonly-randconfig-004-20250320    clang-20
x86_64      buildonly-randconfig-005-20250319    clang-20
x86_64      buildonly-randconfig-005-20250320    clang-20
x86_64      buildonly-randconfig-006-20250319    clang-20
x86_64      buildonly-randconfig-006-20250320    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250320    clang-20
x86_64                randconfig-002-20250320    clang-20
x86_64                randconfig-003-20250320    clang-20
x86_64                randconfig-004-20250320    clang-20
x86_64                randconfig-005-20250320    clang-20
x86_64                randconfig-006-20250320    clang-20
x86_64                randconfig-007-20250320    clang-20
x86_64                randconfig-008-20250320    clang-20
x86_64                randconfig-071-20250320    gcc-12
x86_64                randconfig-072-20250320    gcc-12
x86_64                randconfig-073-20250320    gcc-12
x86_64                randconfig-074-20250320    gcc-12
x86_64                randconfig-075-20250320    gcc-12
x86_64                randconfig-076-20250320    gcc-12
x86_64                randconfig-077-20250320    gcc-12
x86_64                randconfig-078-20250320    gcc-12
x86_64                               rhel-9.4    clang-20
xtensa                            allnoconfig    gcc-14.2.0
xtensa                          iss_defconfig    gcc-10.5.0
xtensa                          iss_defconfig    gcc-14.2.0
xtensa                randconfig-001-20250319    gcc-10.5.0
xtensa                randconfig-001-20250320    gcc-9.3.0
xtensa                randconfig-002-20250319    gcc-14.2.0
xtensa                randconfig-002-20250320    gcc-9.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
