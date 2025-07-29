Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA9AB15216
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jul 2025 19:31:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 096444141B;
	Tue, 29 Jul 2025 17:31:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D7iaTRu6mV4j; Tue, 29 Jul 2025 17:31:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B3C941089
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753810310;
	bh=BJ+OBQyJAF7svOZjeZuaYWvanCtRulQe/KSCC0P4SkY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eVNi3zzfpIxBWvYZX3uixx11AtGHFUQJcwzLrPQxHumMZjIHxP4jDZWCYNNeFYoQt
	 CsCVXfa9BDMVZaKJD7/yL8Gu7jaPMs4arYYAzbPGxmPmDmxCsaQ4XYK0Io8f0YPgiv
	 V+3hCiE+XunOy9W0WaoonutjY9rzo1Rd84Sm9scja+U+auzH4T30a35CE1JGBm3PlE
	 wm6ikHiJGgktqtSHYa6nHJu5uxZkGoOugYIoY0jLeHmNdGAOYQjlukez82LHFao0ji
	 /PYVKqDYg4AAS4Xnx4HygxFeiprpgWtnKsGd/fIWK+3HghnPZCiZ03ucPBx5+D12YN
	 paDYWslYiVMaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B3C941089;
	Tue, 29 Jul 2025 17:31:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id EBE2E13D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 17:31:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DDE6340F64
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 17:31:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hahzjzQti-SE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jul 2025 17:31:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D80D541014
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D80D541014
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D80D541014
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 17:31:47 +0000 (UTC)
X-CSE-ConnectionGUID: nyyNCaOjSi23VIBS2zf41Q==
X-CSE-MsgGUID: uK9foMAwR06E2trGeondZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="56029767"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="56029767"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 10:31:47 -0700
X-CSE-ConnectionGUID: +fZjOoWPQc6dMoinukyXMw==
X-CSE-MsgGUID: Baa6NMekQtONQnaoFa2Oeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="162027002"
Received: from lkp-server01.sh.intel.com (HELO 160750d4a34c) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 29 Jul 2025 10:31:46 -0700
Received: from kbuild by 160750d4a34c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ugoAy-0001WK-0Y
 for intel-wired-lan@lists.osuosl.org; Tue, 29 Jul 2025 17:31:44 +0000
Date: Wed, 30 Jul 2025 01:31:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507300110.kJPFbCxj-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753810308; x=1785346308;
 h=date:from:to:subject:message-id;
 bh=sRCXKNF5+9AzlGyVrNE8knLE2myNdHuHkm51OYgB35E=;
 b=hoPOCYfOYkK6zJsnur5ps+2B4S9ngVrfOhFtQAEo+7IUhmDql4GA1IJN
 FwZvm1YRehONNKwVzdSrazrf3PxE78wF62dB7trKE/R0JGsZr8aSVOULH
 YCDBHEukZn7p9m+YtBqpb4ZSpLCJuDtXlqpZfoOy/tWAm3OwiMDCUQikR
 thCCpPYoG6MJEp5CtoZM/mSXJxHYgTB/m/YUjKJuGzogBKHhhzANFx/Gx
 zAP103pvEgJC2VF/Mit5SU9Lf7/Rgvh7xwif6eLkj2Jd438KcJgxN7N29
 lYbRoFxbrYGrOoafGCDW8YU2wBgyBQ6g1e9ya4K4swztbco6vgmRWX597
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hoPOCYfO
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 8e2bf63ec8b5904aa7c5279733afef3ca0a29180
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
branch HEAD: 8e2bf63ec8b5904aa7c5279733afef3ca0a29180  ixgbe: drop unnecessary casts to u16 / int

elapsed time: 1095m

configs tested: 131
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                        nsim_700_defconfig    gcc-15.1.0
arc                   randconfig-001-20250729    gcc-8.5.0
arc                   randconfig-002-20250729    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250729    gcc-15.1.0
arm                   randconfig-002-20250729    clang-19
arm                   randconfig-003-20250729    clang-22
arm                   randconfig-004-20250729    clang-22
arm                           u8500_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20250729    clang-17
arm64                 randconfig-002-20250729    gcc-10.5.0
arm64                 randconfig-003-20250729    clang-22
arm64                 randconfig-004-20250729    gcc-11.5.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20250729    gcc-15.1.0
csky                  randconfig-002-20250729    gcc-11.5.0
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-22
hexagon               randconfig-001-20250729    clang-22
hexagon               randconfig-002-20250729    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250729    gcc-12
i386        buildonly-randconfig-002-20250729    clang-20
i386        buildonly-randconfig-003-20250729    clang-20
i386        buildonly-randconfig-004-20250729    clang-20
i386        buildonly-randconfig-005-20250729    gcc-12
i386        buildonly-randconfig-006-20250729    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                 loongson3_defconfig    clang-22
loongarch             randconfig-001-20250729    gcc-15.1.0
loongarch             randconfig-002-20250729    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
m68k                           virt_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250729    gcc-8.5.0
nios2                 randconfig-002-20250729    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250729    gcc-10.5.0
parisc                randconfig-002-20250729    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                     ksi8560_defconfig    gcc-15.1.0
powerpc                      pcm030_defconfig    clang-22
powerpc               randconfig-001-20250729    clang-22
powerpc               randconfig-002-20250729    gcc-8.5.0
powerpc               randconfig-003-20250729    gcc-11.5.0
powerpc64             randconfig-001-20250729    clang-22
powerpc64             randconfig-002-20250729    clang-16
powerpc64             randconfig-003-20250729    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20250729    clang-22
riscv                 randconfig-002-20250729    clang-17
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20250729    gcc-8.5.0
s390                  randconfig-002-20250729    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20250729    gcc-14.3.0
sh                    randconfig-002-20250729    gcc-9.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250729    gcc-8.5.0
sparc                 randconfig-002-20250729    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20250729    clang-22
sparc64               randconfig-002-20250729    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250729    gcc-12
um                    randconfig-002-20250729    clang-22
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250729    gcc-12
x86_64      buildonly-randconfig-002-20250729    gcc-12
x86_64      buildonly-randconfig-003-20250729    clang-20
x86_64      buildonly-randconfig-004-20250729    gcc-12
x86_64      buildonly-randconfig-005-20250729    clang-20
x86_64      buildonly-randconfig-006-20250729    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250729    gcc-8.5.0
xtensa                randconfig-002-20250729    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
