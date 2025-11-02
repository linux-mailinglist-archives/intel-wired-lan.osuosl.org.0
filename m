Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D80C28953
	for <lists+intel-wired-lan@lfdr.de>; Sun, 02 Nov 2025 03:10:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE3A4423E6;
	Sun,  2 Nov 2025 02:10:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Up6M3ZWR6lNR; Sun,  2 Nov 2025 02:10:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1750423E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762049444;
	bh=p9jKkEsWCsargDxcc9Pt3hTqNjswOlsdYbKkvnBarMI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=moDxXs0T12vPuYQbhtEqfeE3c02I+C5ChJdaG2TNvOlOEZdXzgV2XtuBJHzMwfY+z
	 YzIoWmqL1tlRx5exfCSJif2ZXtPwoyvrndzHnNb96yZQCViCS+3wQEUL7Z44USKvcN
	 yD2Aq1e0PFT+msELpOYYcwAMZfsUyR4tdnJScbvp646af9t2APgbZCha3zg1lTLPjP
	 VpEgstt7SImW0WwDYrVEt8va7TSeWAqJtokOy3RE8jubabDNIXgctDcbONP6QMOBhZ
	 SaavcAoDLRZ7fkQik/TK29+FI72LbfsioLaqjNJPXFGXa01S8cHS8Hq0CRR76Mi1ID
	 UHx+Upz2lcNMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1750423E4;
	Sun,  2 Nov 2025 02:10:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CEA262A3
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Nov 2025 02:10:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B552984824
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Nov 2025 02:10:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XTPZAAYSBr8R for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Nov 2025 02:10:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9A55184A1E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A55184A1E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9A55184A1E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Nov 2025 02:10:40 +0000 (UTC)
X-CSE-ConnectionGUID: 8vmqnVJwQl+GAeTcLE4oPg==
X-CSE-MsgGUID: /TVOu4e0TsiuA6KUzEgUlg==
X-IronPort-AV: E=McAfee;i="6800,10657,11600"; a="51739238"
X-IronPort-AV: E=Sophos;i="6.19,273,1754982000"; d="scan'208";a="51739238"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2025 19:10:39 -0700
X-CSE-ConnectionGUID: DOziVfXQToKmVi3jLYuKfA==
X-CSE-MsgGUID: TvJn5KsHRWWBP2MOAowYnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,273,1754982000"; d="scan'208";a="186877210"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by fmviesa008.fm.intel.com with ESMTP; 01 Nov 2025 19:10:39 -0700
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vFNYD-000OuG-07
 for intel-wired-lan@lists.osuosl.org; Sun, 02 Nov 2025 02:10:37 +0000
Date: Sun, 02 Nov 2025 10:10:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511021020.5oGvsRuE-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762049440; x=1793585440;
 h=date:from:to:subject:message-id;
 bh=JcFJ/A2qF2jdSpCkInf86nQQxD6RkgkNtSXVInNWmfI=;
 b=jL380+YiLWOuivBVxsaU0747OfoyOc0nylAOKZoXgvwtbehaIzJG7QLB
 AbcpS6shI4JRN+jTO5eFfHpRN4Ecr6DsYR5a13BZO5Y2Gv6QfUmnFGpTK
 0o5opVQ7gl3pwldIqPwOe40e3ySsdEe7j2RsbE4PT6f/imxbWpjhco8TN
 fwf0e42Zi/8B8Y3GGMIkIMvCt2DOfDePOeX15jN+leXEkR0cT8udO4xD+
 qxQVY3dHJkfM/jKj536RlZ18lVbWwQbN16+gQ6O7JhxsTZ+x0Yld3Yp73
 AtAF0s3lDIN8a1REHuW5EQ4uwNpTFRIoAR50LsTsB2XNdoGlfwrCB4zuH
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jL380+Yi
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d2405d1a425e4ddc8a2843181b2c9122ac6b52a9
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
branch HEAD: d2405d1a425e4ddc8a2843181b2c9122ac6b52a9  iavf: add RSS support for GTP protocol via ethtool

elapsed time: 1700m

configs tested: 103
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                          axs101_defconfig    gcc-15.1.0
arc                   randconfig-001-20251101    gcc-8.5.0
arc                   randconfig-002-20251101    gcc-8.5.0
arm                               allnoconfig    clang-22
arm                   randconfig-001-20251101    gcc-13.4.0
arm                   randconfig-002-20251101    clang-22
arm                   randconfig-003-20251101    clang-18
arm                   randconfig-004-20251101    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251102    clang-22
arm64                 randconfig-002-20251102    gcc-10.5.0
arm64                 randconfig-003-20251102    gcc-11.5.0
arm64                 randconfig-004-20251102    gcc-12.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251102    gcc-15.1.0
csky                  randconfig-002-20251102    gcc-15.1.0
hexagon                           allnoconfig    clang-22
hexagon               randconfig-001-20251101    clang-22
hexagon               randconfig-002-20251101    clang-22
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251102    gcc-14
i386        buildonly-randconfig-002-20251102    gcc-14
i386        buildonly-randconfig-003-20251102    gcc-14
i386        buildonly-randconfig-004-20251102    clang-20
i386        buildonly-randconfig-005-20251102    clang-20
i386        buildonly-randconfig-006-20251102    gcc-14
loongarch                         allnoconfig    clang-22
loongarch                        allyesconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251101    clang-18
loongarch             randconfig-002-20251101    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
m68k                            mac_defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                             allmodconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                            allyesconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251101    gcc-9.5.0
nios2                 randconfig-002-20251101    gcc-8.5.0
openrisc                         allmodconfig    gcc-15.1.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                randconfig-001-20251101    gcc-11.5.0
parisc                randconfig-002-20251101    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                      pmac32_defconfig    clang-22
powerpc                     ppa8548_defconfig    gcc-15.1.0
powerpc               randconfig-001-20251101    gcc-11.5.0
powerpc               randconfig-002-20251101    clang-22
powerpc                    sam440ep_defconfig    gcc-15.1.0
powerpc                     sequoia_defconfig    clang-17
powerpc64             randconfig-001-20251101    gcc-11.5.0
powerpc64             randconfig-002-20251101    clang-20
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20251101    gcc-8.5.0
riscv                 randconfig-002-20251101    gcc-8.5.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20251101    clang-17
s390                  randconfig-002-20251101    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251101    gcc-15.1.0
sh                    randconfig-002-20251101    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20251102    gcc-8.5.0
sparc                 randconfig-002-20251102    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251102    clang-20
sparc64               randconfig-002-20251102    clang-20
um                                allnoconfig    clang-22
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251102    gcc-14
x86_64      buildonly-randconfig-002-20251102    clang-20
x86_64      buildonly-randconfig-003-20251102    clang-20
x86_64      buildonly-randconfig-004-20251102    clang-20
x86_64      buildonly-randconfig-005-20251102    gcc-14
x86_64      buildonly-randconfig-006-20251102    gcc-14
x86_64                              defconfig    gcc-14
x86_64                randconfig-011-20251102    gcc-14
x86_64                randconfig-012-20251102    gcc-14
x86_64                randconfig-013-20251102    gcc-12
x86_64                randconfig-014-20251102    gcc-14
x86_64                randconfig-015-20251102    gcc-14
x86_64                randconfig-016-20251102    gcc-14
xtensa                            allnoconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
