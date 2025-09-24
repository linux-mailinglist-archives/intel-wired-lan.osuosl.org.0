Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF0DB9A9B3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Sep 2025 17:25:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D422960DEB;
	Wed, 24 Sep 2025 15:25:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j9lnaEIn16wa; Wed, 24 Sep 2025 15:25:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0223F60DE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758727515;
	bh=Z4fGPxk/ntrxs1aOduvn8Mw3wG7WG6vFQsk3n7xemIM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eegJTBFva+ZCNh3tWE+E/ZGxdGZLXt3yLN+aLmF9nzxkveQwytVygdqw4tJJ7jJy5
	 BISQqpqo+p7FpK34uDZFNls9UvVgaxO8vfpjiO4Xjb4rO1TraRGGyY/0vR0/kN90zg
	 WoocMdJVWV6jdHBLMMLXMB7A6dKTqhdmd9M7GHFm3Pi6h+cvS2Aie3b1G8CGCyTeC5
	 uKGCL4wFM8xaqJanMkszKFom43tWtFqCCvz5pe9xN6qOfMRwNK2mTl6tjC6MjbYPrW
	 QIbNYho4UphcY4qAlBklNsuHsZvgfaYCGRhnfdbqs6hObOCMGC0RezgnBvDj8XhYsX
	 uxQ5gduN3RaxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0223F60DE0;
	Wed, 24 Sep 2025 15:25:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C73A9129
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 15:25:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C4A9340842
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 15:25:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pLz0QKxFHQJV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Sep 2025 15:25:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C745B40918
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C745B40918
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C745B40918
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 15:25:11 +0000 (UTC)
X-CSE-ConnectionGUID: usEyrg46ThGTaPOZhDq+Wg==
X-CSE-MsgGUID: 9N2EHqxHRJWHC3I+uswOJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61081747"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61081747"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 08:25:10 -0700
X-CSE-ConnectionGUID: CrVbukD/RDClghDp6poEqw==
X-CSE-MsgGUID: SXitTN+IS3eFeYQGkCi2HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="182230022"
Received: from lkp-server02.sh.intel.com (HELO 84c55410ccf6) ([10.239.97.151])
 by orviesa005.jf.intel.com with ESMTP; 24 Sep 2025 08:25:09 -0700
Received: from kbuild by 84c55410ccf6 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v1RLN-0004G9-2b
 for intel-wired-lan@lists.osuosl.org; Wed, 24 Sep 2025 15:24:05 +0000
Date: Wed, 24 Sep 2025 23:23:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509242301.lJF5v0VR-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758727512; x=1790263512;
 h=date:from:to:subject:message-id;
 bh=QVQLq+nobJcFywKmKAtg5L9TCHae2VPPtQ9VRwx+vnY=;
 b=A2pXfu/rsfH3G57fDyddIdZ0a2CTvdZyv8PZHYvA96Jukiotn8rsXOPB
 lUxhKCftD8iwSkO2Iic40JaJ44KctA+BKShUieggd1Fk6GTKQGtGIgjuP
 /LX97xiu+GLA92NKDBBQ4Adctv8XFajfRJvYpxHpX7cfNB3gASjGRQXsP
 wODh9wssWmSNAqwxO2rMiwYUtvQMC4pperqfZ16pYFVeej9JiCDOIGIFH
 dg5mCzboWbN6rynRN0Gra5uv1SHQQa0LhSdbd/mlw7LPEz+VijyWAQwQc
 D3T4W/kB5ZhBNght/zfNCN342apattSlBdAJhlb0/rsTdY39g2XTcsitH
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A2pXfu/r
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 df1526752e0cd8db11b1fd4c1be3bd47409fd3ac
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: df1526752e0cd8db11b1fd4c1be3bd47409fd3ac  Merge branch 'dibs-direct-internal-buffer-sharing'

elapsed time: 1781m

configs tested: 132
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250924    gcc-11.5.0
arc                   randconfig-002-20250924    gcc-14.3.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                            mmp2_defconfig    gcc-15.1.0
arm                            mps2_defconfig    clang-22
arm                   randconfig-001-20250924    clang-22
arm                   randconfig-002-20250924    clang-22
arm                   randconfig-003-20250924    clang-22
arm                   randconfig-004-20250924    gcc-13.4.0
arm                             rpc_defconfig    clang-18
arm                           stm32_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250924    gcc-14.3.0
arm64                 randconfig-002-20250924    clang-18
arm64                 randconfig-003-20250924    gcc-12.5.0
arm64                 randconfig-004-20250924    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250924    gcc-14.3.0
csky                  randconfig-002-20250924    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250924    clang-22
hexagon               randconfig-002-20250924    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20250924    gcc-14
i386        buildonly-randconfig-002-20250924    clang-20
i386        buildonly-randconfig-003-20250924    gcc-13
i386        buildonly-randconfig-004-20250924    gcc-14
i386        buildonly-randconfig-005-20250924    clang-20
i386        buildonly-randconfig-006-20250924    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250924    gcc-15.1.0
loongarch             randconfig-002-20250924    gcc-14.3.0
m68k                             alldefconfig    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                        mvme147_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250924    gcc-11.5.0
nios2                 randconfig-002-20250924    gcc-8.5.0
openrisc                         alldefconfig    gcc-15.1.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                    or1ksim_defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250924    gcc-12.5.0
parisc                randconfig-002-20250924    gcc-13.4.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                    amigaone_defconfig    gcc-15.1.0
powerpc                     ep8248e_defconfig    gcc-15.1.0
powerpc                     kmeter1_defconfig    gcc-15.1.0
powerpc                      ppc44x_defconfig    clang-22
powerpc                     rainier_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250924    clang-18
powerpc               randconfig-002-20250924    clang-18
powerpc               randconfig-003-20250924    clang-22
powerpc                     tqm8560_defconfig    gcc-15.1.0
powerpc                      tqm8xx_defconfig    clang-19
powerpc64             randconfig-001-20250924    clang-22
powerpc64             randconfig-002-20250924    gcc-15.1.0
powerpc64             randconfig-003-20250924    gcc-8.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250924    gcc-8.5.0
riscv                 randconfig-002-20250924    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250924    gcc-8.5.0
s390                  randconfig-002-20250924    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                          r7785rp_defconfig    gcc-15.1.0
sh                    randconfig-001-20250924    gcc-15.1.0
sh                    randconfig-002-20250924    gcc-15.1.0
sh                           se7206_defconfig    gcc-15.1.0
sh                           se7705_defconfig    gcc-15.1.0
sh                   sh7724_generic_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250924    gcc-15.1.0
sparc                 randconfig-002-20250924    gcc-8.5.0
sparc64               randconfig-001-20250924    gcc-8.5.0
sparc64               randconfig-002-20250924    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20250924    clang-16
um                    randconfig-002-20250924    clang-19
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250924    clang-20
x86_64      buildonly-randconfig-002-20250924    clang-20
x86_64      buildonly-randconfig-003-20250924    clang-20
x86_64      buildonly-randconfig-004-20250924    gcc-14
x86_64      buildonly-randconfig-005-20250924    clang-20
x86_64      buildonly-randconfig-006-20250924    clang-20
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250924    gcc-13.4.0
xtensa                randconfig-002-20250924    gcc-8.5.0
xtensa                         virt_defconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
