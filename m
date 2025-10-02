Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CA3BB5A63
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Oct 2025 01:58:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD849813B6;
	Thu,  2 Oct 2025 23:58:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mM8OUIOp07xd; Thu,  2 Oct 2025 23:58:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A36781360
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759449490;
	bh=bGVc51pSXpwhhxhQPtyNsD8TVOEuYAguPAVZXo6xQSY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YoY+GJqfVd8H3i+M91AXu8sPb4kIQRW2uoBrzb/jUrYxP1UsfXm92M/as1NH7u/JZ
	 seHC5RTMQQRAtBOAS8EIHJSWHM6aUI6wJEoFUskkmXg8hsyYZFVFHhebCiJoicytJ6
	 RxJoZw10r6poi8YEYLrC1W1Lb/3oCNYoLAem6VoC8cRPB2i9QvTKz7XDcOXIggjRjz
	 RgVCIp31TTsKHyZ3zFcLCojuIr/AvllCgSE5kLOfLU6hJvNoBTMJ5UxadhTNoxNDPG
	 4VPg84Md6K+Ul4B321JdBoxs7CeNNjPAiaitGRtBeFANSPdVvmOuY1j8Iqp9YpQ0nT
	 f2ENMAN6XdURw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A36781360;
	Thu,  2 Oct 2025 23:58:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2108E13D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Oct 2025 23:58:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0412D40AF3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Oct 2025 23:58:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uKZo5s5mftKC for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Oct 2025 23:58:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DA8D740ADB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA8D740ADB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DA8D740ADB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Oct 2025 23:58:06 +0000 (UTC)
X-CSE-ConnectionGUID: 7+bEepJ3QTiD0oEEcWkutQ==
X-CSE-MsgGUID: k032/UyMSXS7my1REcb5JA==
X-IronPort-AV: E=McAfee;i="6800,10657,11570"; a="87194588"
X-IronPort-AV: E=Sophos;i="6.18,310,1751266800"; d="scan'208";a="87194588"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 16:58:06 -0700
X-CSE-ConnectionGUID: Vmfx1p7HRayPrXvhphWK/Q==
X-CSE-MsgGUID: IxxG6FhhTBOuvInfGG6qpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,310,1751266800"; d="scan'208";a="183458035"
Received: from lkp-server01.sh.intel.com (HELO 2f2a1232a4e4) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 02 Oct 2025 16:58:05 -0700
Received: from kbuild by 2f2a1232a4e4 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v4TBS-0004CO-1j
 for intel-wired-lan@lists.osuosl.org; Thu, 02 Oct 2025 23:58:02 +0000
Date: Fri, 03 Oct 2025 07:57:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510030743.QC1gkx53-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759449487; x=1790985487;
 h=date:from:to:subject:message-id;
 bh=WBOr7lwEDQDfvdJ8lkPJkWD8eO8EntumxM4QDupweAA=;
 b=lws1ldF4SG2K1c9NeV6O9XGLOeiUabNoa6lAlWr9/dgfhDX7vidEt9y7
 1TLQZeW2vWLXIJJO0kga6SEg+drXHunk/cCBwsKY0/dkk1IxHIAeZ7Owb
 FvdCQQ7O7t1jkCyJCaHRjFWV5CBqh3fLP93yCt+fnMDFMjEWmufssC4xK
 h0bCUlu9yYaaR3jv9yXscRCuOTKKltUfvX4EfoqmJozhf8gKq73fam50m
 ywuPMh0IMMfiaxtUVOiOw53+3m85iDjRki6nPcnw+IMzTC1zBTuuZoKgA
 3DnVDi1mv0xsFNc3ITaw1CTowgfPEOx0w/Y8/e2LLA+XWBgnjD96nT6DS
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lws1ldF4
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 ae3045505a07bf66c23a9d4766dce1aab414ef66
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
branch HEAD: ae3045505a07bf66c23a9d4766dce1aab414ef66  igc: fix race condition in TX timestamp read for register 0

elapsed time: 1457m

configs tested: 101
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                         haps_hs_defconfig    gcc-15.1.0
arc                   randconfig-001-20251002    gcc-12.5.0
arc                   randconfig-002-20251002    gcc-12.5.0
arm                               allnoconfig    clang-22
arm                         orion5x_defconfig    clang-22
arm                   randconfig-001-20251002    gcc-12.5.0
arm                   randconfig-002-20251002    clang-22
arm                   randconfig-003-20251002    clang-22
arm                   randconfig-004-20251002    clang-20
arm                           sama5_defconfig    gcc-15.1.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251002    gcc-8.5.0
arm64                 randconfig-002-20251002    clang-22
arm64                 randconfig-003-20251002    clang-22
arm64                 randconfig-004-20251002    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251002    gcc-15.1.0
csky                  randconfig-002-20251002    gcc-9.5.0
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20251002    clang-22
hexagon               randconfig-002-20251002    clang-16
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251002    clang-20
i386        buildonly-randconfig-002-20251002    gcc-14
i386        buildonly-randconfig-003-20251002    clang-20
i386        buildonly-randconfig-004-20251002    clang-20
i386        buildonly-randconfig-005-20251002    gcc-14
i386        buildonly-randconfig-006-20251002    clang-20
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20251002    gcc-15.1.0
loongarch             randconfig-002-20251002    clang-18
m68k                              allnoconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        maltaup_defconfig    clang-22
mips                       rbtx49xx_defconfig    gcc-15.1.0
nios2                         3c120_defconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251002    gcc-11.5.0
nios2                 randconfig-002-20251002    gcc-10.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251002    gcc-9.5.0
parisc                randconfig-002-20251002    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                     ep8248e_defconfig    gcc-15.1.0
powerpc               randconfig-001-20251002    gcc-8.5.0
powerpc               randconfig-002-20251002    gcc-9.5.0
powerpc               randconfig-003-20251002    clang-22
powerpc64             randconfig-001-20251002    clang-22
powerpc64             randconfig-002-20251002    clang-22
powerpc64             randconfig-003-20251002    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251002    clang-22
riscv                 randconfig-002-20251002    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20251002    gcc-14.3.0
s390                  randconfig-002-20251002    gcc-11.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251002    gcc-13.4.0
sh                    randconfig-002-20251002    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251002    gcc-8.5.0
sparc                 randconfig-002-20251002    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251002    clang-22
sparc64               randconfig-002-20251002    gcc-8.5.0
um                                allnoconfig    clang-22
um                    randconfig-001-20251002    clang-22
um                    randconfig-002-20251002    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251002    gcc-13
x86_64      buildonly-randconfig-002-20251002    clang-20
x86_64      buildonly-randconfig-003-20251002    clang-20
x86_64      buildonly-randconfig-004-20251002    clang-20
x86_64      buildonly-randconfig-005-20251002    gcc-14
x86_64      buildonly-randconfig-006-20251002    gcc-14
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251002    gcc-8.5.0
xtensa                randconfig-002-20251002    gcc-12.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
