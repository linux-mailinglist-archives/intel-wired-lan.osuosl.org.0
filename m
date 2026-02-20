Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMoHHn+dmGmWKAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 18:44:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E32169CD9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 18:44:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 101EF418AC;
	Fri, 20 Feb 2026 17:44:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YRe3ivmx5WWG; Fri, 20 Feb 2026 17:44:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D9B141828
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771609468;
	bh=WUPRaqYQKVuzpXJSzrdpi6IO9lhlcWSPyfh+1CwXxvU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mjTz6DEeFe/fe9OvP17nxSRcuJVgqajUVlx6+MXEF5ueoiyKO4CDsumzVZU4kwa25
	 W/rJlvhpI/Zk348tZ5/2jEWssHeIY0Gh+OaWi83Smj+jhDJJPL6pDE9RlOuIt9NSJj
	 Ms4sehTuh3IiNg8kGT49r//S91U4m1WgTYDMYBDVADe7WrUVLCKcoDQPPOHKKGJKHM
	 YqHCNoX8U4pYVGXoOYqcmsu01/jQfcoI4HN1IZcje2asYtNItGPzL9vEA8EGvCfhKX
	 Mz0DPtO990GjA9EpAXfZUeK7kOBs+zyuA4CSnPPQ6JDysyjvM+7hVOaVgW5/OMhu3b
	 GFWwrKkc2+sng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D9B141828;
	Fri, 20 Feb 2026 17:44:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 80DA3183
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 17:44:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6662661002
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 17:44:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4_UO9w-U1PA5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Feb 2026 17:44:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 679A760E45
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 679A760E45
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 679A760E45
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 17:44:25 +0000 (UTC)
X-CSE-ConnectionGUID: BEjk3GobQs6C9lGND6sY2A==
X-CSE-MsgGUID: hda3DOnkQGWjcUeqsfRAtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11707"; a="72583283"
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="72583283"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 09:44:25 -0800
X-CSE-ConnectionGUID: UXAYFHgkQAWNKeV543SnJw==
X-CSE-MsgGUID: EkI+g90NSAClHnUC6ymrZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="213441727"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 20 Feb 2026 09:44:23 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vtUY9-000000014LM-17Lz;
 Fri, 20 Feb 2026 17:44:21 +0000
Date: Sat, 21 Feb 2026 01:44:13 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602210105.LQnSC33k-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771609466; x=1803145466;
 h=date:from:to:subject:message-id;
 bh=FneWbV1WqnBITh30JQ+64WjYdIXtOEmtFQ3hUs36mC0=;
 b=PJ9f0mDSN127tNwpe5CV3r0qrUDv3SM3sTGcLWnw2/SwP15vTq38HBGJ
 /694qbHEkztGKCs8eoYRSR/AaY64c/yhG3dv3837Ag1BnoWmBGMlgESyh
 VMHt1uO5GrdNIo67aWVKdq34IXhe5M2CmXQE/2zNelCXvVH4eu+Yy0Bsy
 i9OoxuYHD4Uo/n2Q4qy229LW6pbxnd8lvZOUBxbWtpyd54FS0WE5pbTlS
 1CAgRycqhs5jTA5tHERHceF9PmJX82ByUBVdPek12H32Ph/T5bV/1e20l
 PHpE3O02i2tLDRclZgumrH8SQ7ZjIu/6Ha9UbyQVlvojc9Mb6u5sl6oDn
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PJ9f0mDS
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3c9483e00b160a2e7f16a969506e6eb7fa5ec4aa
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_ALL(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 69E32169CD9
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 3c9483e00b160a2e7f16a969506e6eb7fa5ec4aa  drivers: net: ice: fix devlink parameters get without irdma

elapsed time: 1008m

configs tested: 166
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260220    gcc-8.5.0
arc                   randconfig-002-20260220    gcc-8.5.0
arm                               allnoconfig    clang-23
arm                              allyesconfig    gcc-15.2.0
arm                     am200epdkit_defconfig    gcc-15.2.0
arm                                 defconfig    clang-23
arm                   randconfig-001-20260220    gcc-10.5.0
arm                   randconfig-002-20260220    clang-23
arm                   randconfig-003-20260220    clang-23
arm                   randconfig-004-20260220    gcc-10.5.0
arm                       spear13xx_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260220    gcc-8.5.0
arm64                 randconfig-002-20260220    gcc-12.5.0
arm64                 randconfig-003-20260220    gcc-9.5.0
arm64                 randconfig-004-20260220    clang-16
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260220    gcc-15.2.0
csky                  randconfig-002-20260220    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-23
hexagon                             defconfig    clang-23
hexagon               randconfig-001-20260220    clang-17
hexagon               randconfig-002-20260220    clang-23
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260220    clang-20
i386        buildonly-randconfig-002-20260220    gcc-14
i386        buildonly-randconfig-003-20260220    clang-20
i386        buildonly-randconfig-004-20260220    gcc-13
i386        buildonly-randconfig-005-20260220    clang-20
i386        buildonly-randconfig-006-20260220    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20260220    clang-20
i386                  randconfig-002-20260220    clang-20
i386                  randconfig-003-20260220    gcc-14
i386                  randconfig-004-20260220    gcc-13
i386                  randconfig-005-20260220    clang-20
i386                  randconfig-006-20260220    gcc-14
i386                  randconfig-007-20260220    clang-20
i386                  randconfig-011-20260220    gcc-14
i386                  randconfig-012-20260220    gcc-14
i386                  randconfig-013-20260220    clang-20
i386                  randconfig-014-20260220    gcc-14
i386                  randconfig-015-20260220    clang-20
i386                  randconfig-016-20260220    gcc-14
i386                  randconfig-017-20260220    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260220    clang-23
loongarch             randconfig-002-20260220    clang-23
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    gcc-15.2.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                         rt305x_defconfig    clang-23
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260220    gcc-9.5.0
nios2                 randconfig-002-20260220    gcc-8.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260220    gcc-8.5.0
parisc                randconfig-002-20260220    gcc-15.2.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc                 linkstation_defconfig    clang-20
powerpc               randconfig-001-20260220    gcc-13.4.0
powerpc               randconfig-002-20260220    clang-23
powerpc                     tqm5200_defconfig    gcc-15.2.0
powerpc                     tqm8541_defconfig    clang-23
powerpc64             randconfig-001-20260220    gcc-10.5.0
powerpc64             randconfig-002-20260220    clang-23
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-23
riscv                 randconfig-001-20260220    gcc-15.2.0
riscv                 randconfig-002-20260220    clang-23
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-23
s390                  randconfig-001-20260220    gcc-12.5.0
s390                  randconfig-002-20260220    clang-23
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sh                    randconfig-001-20260220    gcc-11.5.0
sh                    randconfig-002-20260220    gcc-15.2.0
sparc                            alldefconfig    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260220    gcc-12.5.0
sparc                 randconfig-002-20260220    gcc-15.2.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20260220    clang-20
sparc64               randconfig-002-20260220    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260220    clang-23
um                    randconfig-002-20260220    gcc-14
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260220    clang-20
x86_64      buildonly-randconfig-002-20260220    clang-20
x86_64      buildonly-randconfig-003-20260220    clang-20
x86_64      buildonly-randconfig-004-20260220    clang-20
x86_64      buildonly-randconfig-005-20260220    gcc-14
x86_64      buildonly-randconfig-006-20260220    gcc-14
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260220    gcc-14
x86_64                randconfig-002-20260220    gcc-14
x86_64                randconfig-003-20260220    gcc-14
x86_64                randconfig-004-20260220    clang-20
x86_64                randconfig-005-20260220    clang-20
x86_64                randconfig-006-20260220    gcc-14
x86_64                randconfig-011-20260220    clang-20
x86_64                randconfig-012-20260220    clang-20
x86_64                randconfig-013-20260220    clang-20
x86_64                randconfig-014-20260220    gcc-14
x86_64                randconfig-015-20260220    clang-20
x86_64                randconfig-016-20260220    gcc-14
x86_64                randconfig-071-20260220    gcc-13
x86_64                randconfig-072-20260220    clang-20
x86_64                randconfig-073-20260220    gcc-14
x86_64                randconfig-074-20260220    clang-20
x86_64                randconfig-075-20260220    clang-20
x86_64                randconfig-076-20260220    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0
xtensa                randconfig-001-20260220    gcc-13.4.0
xtensa                randconfig-002-20260220    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
