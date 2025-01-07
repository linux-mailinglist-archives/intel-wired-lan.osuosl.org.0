Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90816A03927
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jan 2025 09:02:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BDD1804D9;
	Tue,  7 Jan 2025 08:02:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6sJ7bS8TPER5; Tue,  7 Jan 2025 08:02:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9BBE804FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736236945;
	bh=9zTCPKCVdoRqBdBfHLmFjXm3g7SxeYTxwlZVwCbkKfw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ozBko409DZVAXfGy7/nFbWB2qfFTePugc4cK7a2vREV2irYmAk+1M/tvMafifwFwb
	 2k9z+bz19fvftRhYHafYqixksdBeoif5+Jq+3aKBWgwjppPqd6quHyMYxan3lHulgv
	 BYHXsVOhKgDUEeZ1HGK9bY/du3YElPu0P8yMvW7mwap2iC+JjKOSm0wyAMZZ5xWE2t
	 U0TgUgD83SBELdjKe47n1vUCTvgC0NfujjRcYmsPFrQjrkaQDH8s7OPs2mBIEkLrdZ
	 OV/QivAa3iqoPOQhownScfz79SzXzGIyzuPbda/MHCRdPgAGJXoDdzSWtn8khYMgzQ
	 WY5dfo4uWF52g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9BBE804FC;
	Tue,  7 Jan 2025 08:02:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0FBBA7AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 08:02:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE24C405DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 08:02:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yywQ8knq9g5G for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jan 2025 08:02:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A74DF405E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A74DF405E8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A74DF405E8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 08:02:19 +0000 (UTC)
X-CSE-ConnectionGUID: t41ktGSFS+SUTKunrmP+UA==
X-CSE-MsgGUID: h1PkKeLdRSCtI0lisnjVKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="36522087"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="36522087"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 00:02:19 -0800
X-CSE-ConnectionGUID: n05iVN6mQEu6gqJS11ps/w==
X-CSE-MsgGUID: S81BqoYSRrGH3FsTBN2DUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107766663"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 07 Jan 2025 00:02:18 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tV4XX-000EP1-1f
 for intel-wired-lan@lists.osuosl.org; Tue, 07 Jan 2025 08:02:15 +0000
Date: Tue, 07 Jan 2025 16:01:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202501071625.283NfhpD-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736236940; x=1767772940;
 h=date:from:to:subject:message-id;
 bh=YPZWOJCp9Mp6rm8ytL4yqLQVLyiX0QOPHCwn8/Ha2Fs=;
 b=AAq9ysYM7+buIlm0K1bAyni2L8P9cEGnQUC36bUGPXk8+jVen9eZ9fVu
 HTOR2DcGmwjnHS4eqbOMbNfKXRVdbZjPfGnH9pTZzuVHKe/SpYcrfw1MQ
 b2TripIKhWlQ+zoSP4XIYnJDLMakPiKhmIQmg3hloEM7HOtAaHiGNyZ/i
 uTnZe0un32y71yhb3pqKI1EJk1dsHaGtnPhUZv4d498TJhq0lkYFyJmpk
 b1aS68WiJNgKYWjPqiAdGmgpzXMfauOzSFCGLpm/5xGebSsFAL9FjVXNy
 U+po7DzsOeWMwzKubbKG6IjVdEQKxZ9k/idrgC05umWkto0gl3kVfPDFa
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AAq9ysYM
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d77e646767362284a2d47f7637a0413add8495be
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
branch HEAD: d77e646767362284a2d47f7637a0413add8495be  ice: Add E830 checksum offload support

elapsed time: 862m

configs tested: 106
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20250107    gcc-13.2.0
arc                   randconfig-002-20250107    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250107    clang-20
arm                   randconfig-002-20250107    clang-19
arm                   randconfig-003-20250107    clang-20
arm                   randconfig-004-20250107    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250107    clang-15
arm64                 randconfig-002-20250107    clang-20
arm64                 randconfig-003-20250107    gcc-14.2.0
arm64                 randconfig-004-20250107    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250107    gcc-14.2.0
csky                  randconfig-002-20250107    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250107    clang-20
hexagon               randconfig-002-20250107    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250107    clang-19
i386        buildonly-randconfig-002-20250107    clang-19
i386        buildonly-randconfig-003-20250107    clang-19
i386        buildonly-randconfig-004-20250107    gcc-12
i386        buildonly-randconfig-005-20250107    gcc-12
i386        buildonly-randconfig-006-20250107    clang-19
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250107    gcc-14.2.0
loongarch             randconfig-002-20250107    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250107    gcc-14.2.0
nios2                 randconfig-002-20250107    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250107    gcc-14.2.0
parisc                randconfig-002-20250107    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc               randconfig-001-20250107    gcc-14.2.0
powerpc               randconfig-002-20250107    gcc-14.2.0
powerpc               randconfig-003-20250107    clang-20
powerpc64             randconfig-001-20250107    clang-15
powerpc64             randconfig-002-20250107    clang-20
powerpc64             randconfig-003-20250107    clang-20
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                 randconfig-001-20250107    clang-15
riscv                 randconfig-002-20250107    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250107    gcc-14.2.0
s390                  randconfig-002-20250107    clang-20
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250107    gcc-14.2.0
sh                    randconfig-002-20250107    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250107    gcc-14.2.0
sparc                 randconfig-002-20250107    gcc-14.2.0
sparc64               randconfig-001-20250107    gcc-14.2.0
sparc64               randconfig-002-20250107    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                    randconfig-001-20250107    gcc-12
um                    randconfig-002-20250107    clang-20
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250107    clang-19
x86_64      buildonly-randconfig-002-20250107    gcc-12
x86_64      buildonly-randconfig-003-20250107    clang-19
x86_64      buildonly-randconfig-004-20250107    gcc-12
x86_64      buildonly-randconfig-005-20250107    clang-19
x86_64      buildonly-randconfig-006-20250107    clang-19
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250107    gcc-14.2.0
xtensa                randconfig-002-20250107    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
