Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 889EBB17BC4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Aug 2025 06:20:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA77B4109B;
	Fri,  1 Aug 2025 04:20:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d7HdKopZMRPJ; Fri,  1 Aug 2025 04:20:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1830B4108F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754022024;
	bh=B8XL4NJ1OgpoK45ovK3thdJPX/B09hywv1tc3xexUL0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NlIA5sEreCh169ncqx1DxRfxozaTxMO2/u77md8uSR/QawKCp6GYwHMgututnN+Jw
	 8OIuSLRvmzg0P9PkOXA4r+CT0+DdZvaZdtj6WLRlhIxQq2lXAwn5MA2qpr74ssIM1V
	 z8KAi0diSThNzK/eL8KhS2+WoGWTROHIdB2pJOtMzivegDosyxYA1HzCmSibLtdELC
	 yft0NTK5PIlW2UJg3n+4Z9EGYYyF9cf+kmT9wbRmBTTuPEpsmQwqll8eTAjYTwKAko
	 iJgx1URLJ4rg7FfAhB5JAMili+M4lr+qAhrVxkizQKuhaunhD9CRnHzCsXF7mcRfVi
	 3Zg7PxWrpTKww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1830B4108F;
	Fri,  1 Aug 2025 04:20:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 42043160
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 04:20:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 33DA440388
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 04:20:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Rh65NaJn7c6 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Aug 2025 04:20:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3B2554004D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B2554004D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3B2554004D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 04:20:21 +0000 (UTC)
X-CSE-ConnectionGUID: wxXFi/GbT1iIPshtskDNhQ==
X-CSE-MsgGUID: whZC3KuVSlSR0C1nTyPang==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="60190430"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="60190430"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 21:20:22 -0700
X-CSE-ConnectionGUID: SpNni8rzRmmLd2Cv3Rg7KA==
X-CSE-MsgGUID: FaGR+PSNSL+vSilrvr51Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="163458014"
Received: from lkp-server01.sh.intel.com (HELO 160750d4a34c) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 31 Jul 2025 21:20:21 -0700
Received: from kbuild by 160750d4a34c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uhhFi-0004LQ-10
 for intel-wired-lan@lists.osuosl.org; Fri, 01 Aug 2025 04:20:18 +0000
Date: Fri, 01 Aug 2025 12:19:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508011229.BSQVFKpS-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754022023; x=1785558023;
 h=date:from:to:subject:message-id;
 bh=JaMSEvuEPFUGqSQ7A5rBeJnEZaAk8/J1uaCGZxV10Ik=;
 b=h5NCDz78VESyPplFbuYxRG6f2IM/8Yv9Z1WQ4KicYQLIkePz33jz0QBn
 71ElS+JSuNcmdDJ7pAVWEoiJy3gYmh6codHB8CIGl/DJM+LDlADrqcc8D
 /xe5FEAWq9Adc+RHMw+cXqcuVEzwtyg7Lv5/ujWPj5rdo/HYGXWd0oOsl
 dPdw7leAJbFMHL9CieS3jFtvx8GvbvBlVBIpYNF0CmUBMZyLONn6RLmDM
 rTEKOHRy6nL16j371guP3mwpUIEXIJptEtbswVfqmUv1MFrIieGA+TPRI
 SWjWwre/g4yP+sbS61IKltpAaufe/PA+NQydUs7FvybrddVbhm9sb3sey
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=h5NCDz78
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 759dfc7d04bab1b0b86113f1164dc1fec192b859
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 759dfc7d04bab1b0b86113f1164dc1fec192b859  netlink: avoid infinite retry looping in netlink_unicast()

elapsed time: 1499m

configs tested: 128
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250731    gcc-13.4.0
arc                   randconfig-001-20250801    gcc-15.1.0
arc                   randconfig-002-20250731    gcc-8.5.0
arc                   randconfig-002-20250801    gcc-10.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250731    gcc-14.3.0
arm                   randconfig-001-20250801    clang-22
arm                   randconfig-002-20250731    gcc-8.5.0
arm                   randconfig-002-20250801    gcc-8.5.0
arm                   randconfig-003-20250731    gcc-8.5.0
arm                   randconfig-003-20250801    gcc-10.5.0
arm                   randconfig-004-20250731    clang-22
arm                   randconfig-004-20250801    gcc-14.3.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250731    gcc-8.5.0
arm64                 randconfig-001-20250801    clang-22
arm64                 randconfig-002-20250731    gcc-13.4.0
arm64                 randconfig-002-20250801    clang-22
arm64                 randconfig-003-20250731    gcc-10.5.0
arm64                 randconfig-003-20250801    gcc-11.5.0
arm64                 randconfig-004-20250731    gcc-10.5.0
arm64                 randconfig-004-20250801    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250801    gcc-13.4.0
csky                  randconfig-002-20250801    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250801    clang-22
hexagon               randconfig-002-20250801    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250731    gcc-12
i386        buildonly-randconfig-001-20250801    clang-20
i386        buildonly-randconfig-002-20250731    gcc-12
i386        buildonly-randconfig-002-20250801    gcc-12
i386        buildonly-randconfig-003-20250731    clang-20
i386        buildonly-randconfig-003-20250801    gcc-12
i386        buildonly-randconfig-004-20250731    gcc-12
i386        buildonly-randconfig-004-20250801    gcc-12
i386        buildonly-randconfig-005-20250731    gcc-12
i386        buildonly-randconfig-005-20250801    gcc-12
i386        buildonly-randconfig-006-20250731    clang-20
i386        buildonly-randconfig-006-20250801    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250801    gcc-15.1.0
loongarch             randconfig-002-20250801    clang-22
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
nios2                 randconfig-001-20250801    gcc-11.5.0
nios2                 randconfig-002-20250801    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250801    gcc-13.4.0
parisc                randconfig-002-20250801    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250801    gcc-13.4.0
powerpc               randconfig-002-20250801    clang-22
powerpc               randconfig-003-20250801    clang-22
powerpc64             randconfig-001-20250801    gcc-8.5.0
powerpc64             randconfig-002-20250801    clang-22
powerpc64             randconfig-003-20250801    gcc-13.4.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250801    clang-22
riscv                 randconfig-002-20250801    clang-17
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250801    clang-22
s390                  randconfig-002-20250801    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250801    gcc-14.3.0
sh                    randconfig-002-20250801    gcc-11.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250801    gcc-15.1.0
sparc                 randconfig-002-20250801    gcc-15.1.0
sparc64               randconfig-001-20250801    gcc-9.5.0
sparc64               randconfig-002-20250801    gcc-15.1.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                    randconfig-001-20250801    gcc-12
um                    randconfig-002-20250801    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250801    gcc-12
x86_64      buildonly-randconfig-002-20250801    clang-20
x86_64      buildonly-randconfig-003-20250801    clang-20
x86_64      buildonly-randconfig-004-20250801    clang-20
x86_64      buildonly-randconfig-005-20250801    gcc-12
x86_64      buildonly-randconfig-006-20250801    clang-20
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250801    gcc-8.5.0
xtensa                randconfig-002-20250801    gcc-12.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
