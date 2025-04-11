Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A48CA8634B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Apr 2025 18:32:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E811260E5C;
	Fri, 11 Apr 2025 16:32:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5TMYN_XLmEvb; Fri, 11 Apr 2025 16:32:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BE8E608C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744389156;
	bh=z0hKAqM+S/OHwckvggwJv21EdrbUxa7GSW59WrWkIcQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=S2BaPLLIW1bT0ZWAkn3XKvjJk1qfH7lBSJVgB6lFACY+F1IWTB1udbHDQy9LjgcQ8
	 vF2BZlKcC7Pmq/fYaPr5A3onpTTzpQmShYt6XOMcFS204Jq15xgMShYDwQnOgXCqwa
	 /sICkbvjRwWhhz6keyjutZVlpTM92Fogu9ykxQscR5K8JPWmGL+dwfqD0jnVgC6OCh
	 4sFlXbqxpDD2gpT2YvSLJYiNMSCosVZoilggroIq+BKPgAHtYkjkleNeS2VbJmimdD
	 0u8qGEdKmi8HHhUD2ERRiITAXesdcDjre3LYkKAR6Tm7gIYaloGJN6M5sUtMGFi1L4
	 bm2ll82eilXHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BE8E608C7;
	Fri, 11 Apr 2025 16:32:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CAB32138
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 16:32:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB9A0608C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 16:32:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id blE0MBPTcUgW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Apr 2025 16:32:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B361E60A6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B361E60A6A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B361E60A6A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 16:32:32 +0000 (UTC)
X-CSE-ConnectionGUID: Ju7BEy8ZQd6OzAXlhWQJlQ==
X-CSE-MsgGUID: cxCepCMdRDS/kZaJei0TDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11401"; a="46086593"
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="46086593"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 09:32:32 -0700
X-CSE-ConnectionGUID: Z9lxQ4fERKmxmYOG59DGog==
X-CSE-MsgGUID: i+FMuNFsRyGH5Xlc7pGSdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="134396258"
Received: from lkp-server01.sh.intel.com (HELO b207828170a5) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 11 Apr 2025 09:32:32 -0700
Received: from kbuild by b207828170a5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1u3HIr-000BF7-0l
 for intel-wired-lan@lists.osuosl.org; Fri, 11 Apr 2025 16:32:29 +0000
Date: Sat, 12 Apr 2025 00:31:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202504120046.qXTFulWN-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744389152; x=1775925152;
 h=date:from:to:subject:message-id;
 bh=S+hAo5V72ZKav6cA+w7iXjR8tlWoiNgqeMV02iHFRwU=;
 b=NfWoq5GG8cUfm3eyp+SfWwdzVizXZGuoPtB706PKoRkskkSPGT7ZE1Pl
 3QKIuz9pdMYmzWCT9+hcqplhO5Y8OmsQpjPaxUDnqW205gzmzK+EXwoxS
 B5ShB5bGXqxAcRaLyd6BAZM1v06x8tQ+kptHngk1xUz1zzbCb/a3qNKVO
 Ebwax9++1L2s8OnGz+ifB3Bpt1QPkoUVP/0yhOp9aht7WuNyNmFYO6I7r
 fUy0xHyOxpwr/4u7Y+Ocxn+QFrN3csZNZQZ8S3hLHLDHeYCCnEDZtSdYY
 uAEFIHNlfwgd3ohBWs13YH1OWs0IMG3CGZK9Gvi3iJcPLDrcDXXDJhnfq
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NfWoq5GG
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 eaa517b77e63442260640d875f824d1111ca6569
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: eaa517b77e63442260640d875f824d1111ca6569  ethtool: cmis_cdb: Fix incorrect read / write length extension

elapsed time: 1614m

configs tested: 81
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig    gcc-14.2.0
arc                   randconfig-001-20250411    gcc-14.2.0
arc                   randconfig-002-20250411    gcc-14.2.0
arm                   randconfig-001-20250411    clang-21
arm                   randconfig-002-20250411    clang-21
arm                   randconfig-003-20250411    gcc-6.5.0
arm                   randconfig-004-20250411    gcc-6.5.0
arm64                 randconfig-001-20250411    gcc-9.5.0
arm64                 randconfig-002-20250411    gcc-9.5.0
arm64                 randconfig-003-20250411    clang-21
arm64                 randconfig-004-20250411    clang-21
csky                  randconfig-001-20250411    gcc-14.2.0
csky                  randconfig-002-20250411    gcc-9.3.0
hexagon                          allmodconfig    clang-17
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250411    clang-21
hexagon               randconfig-002-20250411    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250411    gcc-12
i386        buildonly-randconfig-002-20250411    gcc-12
i386        buildonly-randconfig-003-20250411    gcc-12
i386        buildonly-randconfig-004-20250411    clang-20
i386        buildonly-randconfig-005-20250411    gcc-11
i386        buildonly-randconfig-006-20250411    gcc-12
i386                                defconfig    clang-20
i386                  randconfig-011-20250411    clang-20
i386                  randconfig-012-20250411    clang-20
i386                  randconfig-013-20250411    clang-20
i386                  randconfig-014-20250411    clang-20
i386                  randconfig-015-20250411    clang-20
i386                  randconfig-016-20250411    clang-20
i386                  randconfig-017-20250411    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch             randconfig-001-20250411    gcc-14.2.0
loongarch             randconfig-002-20250411    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
nios2                 randconfig-001-20250411    gcc-9.3.0
nios2                 randconfig-002-20250411    gcc-7.5.0
parisc                randconfig-001-20250411    gcc-14.2.0
parisc                randconfig-002-20250411    gcc-8.5.0
powerpc               randconfig-001-20250411    gcc-9.3.0
powerpc               randconfig-002-20250411    clang-21
powerpc               randconfig-003-20250411    clang-21
powerpc64             randconfig-001-20250411    gcc-5.5.0
powerpc64             randconfig-002-20250411    gcc-5.5.0
powerpc64             randconfig-003-20250411    clang-21
riscv                 randconfig-001-20250411    gcc-9.3.0
riscv                 randconfig-002-20250411    gcc-9.3.0
s390                             allmodconfig    clang-18
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250411    clang-19
s390                  randconfig-002-20250411    gcc-8.5.0
sh                               allmodconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250411    gcc-11.5.0
sh                    randconfig-002-20250411    gcc-5.5.0
sparc                            allmodconfig    gcc-14.2.0
sparc                 randconfig-001-20250411    gcc-10.3.0
sparc                 randconfig-002-20250411    gcc-14.2.0
sparc64               randconfig-001-20250411    gcc-8.5.0
sparc64               randconfig-002-20250411    gcc-8.5.0
um                               allmodconfig    clang-19
um                               allyesconfig    gcc-12
um                    randconfig-001-20250411    clang-17
um                    randconfig-002-20250411    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250411    gcc-11
x86_64      buildonly-randconfig-002-20250411    gcc-11
x86_64      buildonly-randconfig-003-20250411    clang-20
x86_64      buildonly-randconfig-004-20250411    gcc-12
x86_64      buildonly-randconfig-005-20250411    clang-20
x86_64      buildonly-randconfig-006-20250411    gcc-12
x86_64                              defconfig    gcc-11
xtensa                randconfig-001-20250411    gcc-12.4.0
xtensa                randconfig-002-20250411    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
