Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6F3AD9E84
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jun 2025 19:33:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1052D6078B;
	Sat, 14 Jun 2025 17:33:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8sbDHrQt_nbQ; Sat, 14 Jun 2025 17:33:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CE0A607CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749922397;
	bh=07QBsY1iNLcuOsqibh9BDfHA6F9zDWS9fot8CLUcuK8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Qjmomib7aHEKsbG+f1sCWC/hilj1jYkbtQXrAerMKYwlYzf+qq4YpQq0xQXsfDNRg
	 py4YW7a0wlO+iBxOEVj2iEQ341bDrwQhpKHjMRdtdvcyK8buc7VPgh7nZiUjKWzsFI
	 hXt2pOcn/v2qUHYAYtkT0IkTdXEEhxn24s1vgxAETeMK6qjS2mNwr8W6JBa5otf1Wp
	 jUPj9MacS77xynBqfIc0gAWpg7Jx0ks46ASodPg2NWEe7JCpyyPGFLOv+ihKcSRMAl
	 97OxNetAusmEXp0adBV4/Hfxh9BYys/S9kB6pRCvb7NOtNKIBmQFPdh19rGZsatdVh
	 vxRDYfs8PkqOQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CE0A607CE;
	Sat, 14 Jun 2025 17:33:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 76860151
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 17:33:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6819880D02
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 17:33:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q7-C5ZFQ9F-V for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jun 2025 17:33:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 731B280CE2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 731B280CE2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 731B280CE2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 17:33:14 +0000 (UTC)
X-CSE-ConnectionGUID: JWE6O9pCTGuvAvziZQCTYw==
X-CSE-MsgGUID: hElZTCpYT7eYoXqOlgs3Mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11464"; a="77510495"
X-IronPort-AV: E=Sophos;i="6.16,237,1744095600"; d="scan'208";a="77510495"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2025 10:33:13 -0700
X-CSE-ConnectionGUID: OmXpDsAWQYKC4Ts30HeSgw==
X-CSE-MsgGUID: MDGHM7OsSFCIHUZ0qmXh6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,237,1744095600"; d="scan'208";a="147953427"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 14 Jun 2025 10:33:12 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uQUkg-000DjC-2I
 for intel-wired-lan@lists.osuosl.org; Sat, 14 Jun 2025 17:33:10 +0000
Date: Sun, 15 Jun 2025 01:32:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506150129.FKfwMo6k-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749922394; x=1781458394;
 h=date:from:to:subject:message-id;
 bh=a7JRo/JF2GH0Uho8u3oNLZpixl97F31x03v1Jp1BjKk=;
 b=SqMp21bxMt+zCa9CVrPAsZTTNo9wMua+sJshLxfgLn5BNMpfMInHc1ao
 lrAzQ37RRoGeuT97VheQ6lBgWwi8wM6NzTzMBA34RuzmAU5sJIvN8lTdr
 OuZVgCaP4pWAFabWIC+bMxgbxwsVUVJtzYvsY8L7/VHaR8WEsgoIze1Rg
 0HIrqBV9UxPnpGanJcmOMrp+em88uZd76scOzHA4/jQp9/eT1PEchC86e
 Phpc+xqkWGb3g3hOPiMcX8WXr4Shi2fFm36wNa0PBt30TJSp0uMCoR7W3
 V23BaKN4URwZpQZRa9z6Nt32utFD/gY5gkiFbQqRKaJh5Get6l/N47E1u
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SqMp21bx
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 a2e70c8f0bb75c9c1512943a6d47ea942b81f33b
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
branch HEAD: a2e70c8f0bb75c9c1512943a6d47ea942b81f33b  libeth: xdp, xsk: access adjacent u32s as u64 where applicable

elapsed time: 1447m

configs tested: 94
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                   randconfig-001-20250614    gcc-8.5.0
arc                   randconfig-002-20250614    gcc-12.4.0
arm                               allnoconfig    clang-21
arm                   randconfig-001-20250614    gcc-8.5.0
arm                   randconfig-002-20250614    clang-21
arm                   randconfig-003-20250614    clang-16
arm                   randconfig-004-20250614    clang-17
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250614    clang-21
arm64                 randconfig-002-20250614    gcc-15.1.0
arm64                 randconfig-003-20250614    clang-21
arm64                 randconfig-004-20250614    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250614    gcc-13.3.0
csky                  randconfig-002-20250614    gcc-12.4.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250614    clang-21
hexagon               randconfig-002-20250614    clang-16
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386        buildonly-randconfig-001-20250614    clang-20
i386        buildonly-randconfig-002-20250614    clang-20
i386        buildonly-randconfig-003-20250614    clang-20
i386        buildonly-randconfig-004-20250614    gcc-12
i386        buildonly-randconfig-005-20250614    clang-20
i386        buildonly-randconfig-006-20250614    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch             randconfig-001-20250614    gcc-15.1.0
loongarch             randconfig-002-20250614    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250614    gcc-13.3.0
nios2                 randconfig-002-20250614    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                randconfig-001-20250614    gcc-8.5.0
parisc                randconfig-002-20250614    gcc-11.5.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20250614    gcc-13.3.0
powerpc               randconfig-002-20250614    clang-21
powerpc               randconfig-003-20250614    gcc-12.4.0
powerpc64             randconfig-001-20250614    gcc-11.5.0
powerpc64             randconfig-002-20250614    clang-21
powerpc64             randconfig-003-20250614    gcc-12.4.0
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250614    clang-21
riscv                 randconfig-002-20250614    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250614    clang-21
s390                  randconfig-002-20250614    gcc-10.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250614    gcc-14.3.0
sh                    randconfig-002-20250614    gcc-12.4.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250614    gcc-15.1.0
sparc                 randconfig-002-20250614    gcc-10.3.0
sparc64               randconfig-001-20250614    gcc-8.5.0
sparc64               randconfig-002-20250614    gcc-9.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250614    clang-21
um                    randconfig-002-20250614    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250614    clang-20
x86_64      buildonly-randconfig-002-20250614    clang-20
x86_64      buildonly-randconfig-003-20250614    gcc-12
x86_64      buildonly-randconfig-004-20250614    clang-20
x86_64      buildonly-randconfig-005-20250614    clang-20
x86_64      buildonly-randconfig-006-20250614    clang-20
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250614    gcc-9.3.0
xtensa                randconfig-002-20250614    gcc-13.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
